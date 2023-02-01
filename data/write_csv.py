import os
from triple import Triple

# Get the current working directory
current_directory = os.getcwd() + "/data/"
# Get a list of all folders in the current directory
folders = [f for f in os.listdir(current_directory) if os.path.isdir(current_directory + f)]

def readTriplesFromFolder(folder):
    triples = set()
    for dataset in "train", "valid", "test":
        with open(current_directory + folder + "/" + dataset + ".txt", "r") as reader:
            for line in reader.readlines():
                column1, column2, column3 = line.replace("\n", "").split("\t")
                if folder == "DBPedia50":
                    # DBPedia dataset has different column order
                    triple = Triple(column1, column3, column2, dataset)
                else:
                    triple = Triple(column1, column2, column3, dataset)
                if triple in triples:
                    print("Duplicate triple found in {}".format(folder))
                triples.add(triple)
    
    return triples

def writeCSVFiles(folder, merged_triples):
    # Write merged file
    with open(current_directory + folder + "/merged.csv", "w") as writer:
        writer.write("head,predicate,tail,dataset\n")
        for i, triple in enumerate(merged_triples):
            if i == len(merged_triples) - 1:
                writer.write(triple.getCSVRow(withDataset=True))
            else:
                writer.write(triple.getCSVRow(withDataset=True) + "\n")
    
    # Write each CSV for train, valid and test
    for split in "train", "valid", "test":
        with open(current_directory + folder + "/" + split + ".csv", "w") as writer:
            writer.write("head,predicate,tail\n")
            for i, triple in enumerate(merged_triples):
                if triple.dataset != split:
                    continue
                if i == len(merged_triples) - 1:
                    writer.write(triple.getCSVRow(withDataset=False))
                else:
                    writer.write(triple.getCSVRow(withDataset=False) + "\n")
    
            

for folder in folders:
    try:
        triples = readTriplesFromFolder(folder)
    except:
        continue
    writeCSVFiles(folder, triples)
