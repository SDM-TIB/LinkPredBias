��

��
.
Abs
x"T
y"T"
Ttype:

2	
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
l
LookupTableExportV2
table_handle
keys"Tkeys
values"Tvalues"
Tkeystype"
Tvaluestype�
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype�
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
�
MutableDenseHashTableV2
	empty_key"	key_dtype
deleted_key"	key_dtype
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype"
value_shapeshape: " 
initial_num_bucketsint��"
max_load_factorfloat%��L?�
0
Neg
x"T
y"T"
Ttype:
2
	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
�
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.11.02v2.11.0-rc2-17-gd5b57ca93e58��
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
�
<scoring_based_embedding_model/embedding_lookup_layer/rel_embVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*M
shared_name><scoring_based_embedding_model/embedding_lookup_layer/rel_emb
�
Pscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Read/ReadVariableOpReadVariableOp<scoring_based_embedding_model/embedding_lookup_layer/rel_emb*
_output_shapes
:	�*
dtype0
�
<scoring_based_embedding_model/embedding_lookup_layer/ent_embVarHandleOp*
_output_shapes
: *
dtype0*
shape:��*M
shared_name><scoring_based_embedding_model/embedding_lookup_layer/ent_emb
�
Pscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Read/ReadVariableOpReadVariableOp<scoring_based_embedding_model/embedding_lookup_layer/ent_emb*!
_output_shapes
:��*
dtype0
d
VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable
]
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0
T
	empty_keyConst*
_output_shapes
: *
dtype0*
valueB :
���������
V
deleted_keyConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
MutableDenseHashTableMutableDenseHashTableV2	empty_keydeleted_key*
_output_shapes
: *
	key_dtype0*
shared_nametable_812440*
value_dtype0
z
serving_default_input_1Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1<scoring_based_embedding_model/embedding_lookup_layer/ent_emb<scoring_based_embedding_model/embedding_lookup_layer/rel_emb*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������*$
_read_only_resource_inputs
*.
config_proto

CPU

GPU2*0J � *-
f(R&
$__inference_signature_wrapper_815097
�
PartitionedCallPartitionedCall*	
Tin
 *
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *.
config_proto

CPU

GPU2*0J � *(
f#R!
__inference__initializer_815513

NoOpNoOp^PartitionedCall
�
DMutableDenseHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2MutableDenseHashTable*
Tkeys0*
Tvalues0*(
_class
loc:@MutableDenseHashTable*
_output_shapes

::
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
scoring_layer
	corruption_layer

encoding_layer
focusE_params
partitioner_metadata
mapping_dict

use_filter
	all_ranks

data_shape

_get_ranks

signatures*

0
1
2*

0
1*

0
1* 
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
trace_0
trace_1
trace_2
trace_3* 
6
 trace_0
!trace_1
"trace_2
#trace_3* 
* 
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses* 
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses* 
�
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses
ent_emb
rel_emb*
* 
* 
k
6_create_resource
7_initialize
8_destroy_resource'
tablemapping_dict/.ATTRIBUTES/table*
* 
* 
GA
VARIABLE_VALUEVariable%data_shape/.ATTRIBUTES/VARIABLE_VALUE*
* 

9serving_default* 
|v
VARIABLE_VALUE<scoring_based_embedding_model/embedding_lookup_layer/ent_emb&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE<scoring_based_embedding_model/embedding_lookup_layer/rel_emb&variables/1/.ATTRIBUTES/VARIABLE_VALUE*

:trace_0* 

;trace_0* 

0*

0
	1

2*

<0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses* 

Btrace_0* 

Ctrace_0* 
* 
* 
* 
�
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses* 

Itrace_0* 

Jtrace_0* 

0
1*

0
1*

0
1* 
�
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*

Ptrace_0* 

Qtrace_0* 

Rtrace_0* 

Strace_0* 

Ttrace_0* 
* 
* 
* 
8
U	variables
V	keras_api
	Wtotal
	Xcount*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1* 
* 
* 
* 
* 
* 
* 

W0
X1*

U	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameDMutableDenseHashTable_lookup_table_export_values/LookupTableExportV2FMutableDenseHashTable_lookup_table_export_values/LookupTableExportV2:1Variable/Read/ReadVariableOpPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Read/ReadVariableOpPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *.
config_proto

CPU

GPU2*0J � *(
f#R!
__inference__traced_save_815592
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameMutableDenseHashTableVariable<scoring_based_embedding_model/embedding_lookup_layer/ent_emb<scoring_based_embedding_model/embedding_lookup_layer/rel_embtotalcount*
Tin
	2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *.
config_proto

CPU

GPU2*0J � *+
f&R$
"__inference__traced_restore_815629��
�
�
__inference_loss_fn_0_815341y
dscoring_based_embedding_model_embedding_lookup_layer_ent_emb_regularizer_abs_readvariableop_resource:��
identity��[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOpReadVariableOpdscoring_based_embedding_model_embedding_lookup_layer_ent_emb_regularizer_abs_readvariableop_resource*!
_output_shapes
:��*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*!
_output_shapes
:���
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/y:output:0*
T0*!
_output_shapes
:���
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
IdentityIdentityPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp\^scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp
�
�
>__inference_scoring_based_embedding_model_layer_call_fn_814847
input_1
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������*$
_read_only_resource_inputs
*.
config_proto

CPU

GPU2*0J � *b
f]R[
Y__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_814840k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�
�
__inference__traced_save_815592
file_prefixO
Ksavev2_mutabledensehashtable_lookup_table_export_values_lookuptableexportv2Q
Msavev2_mutabledensehashtable_lookup_table_export_values_lookuptableexportv2_1'
#savev2_variable_read_readvariableop[
Wsavev2_scoring_based_embedding_model_embedding_lookup_layer_ent_emb_read_readvariableop[
Wsavev2_scoring_based_embedding_model_embedding_lookup_layer_rel_emb_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B#mapping_dict/.ATTRIBUTES/table-keysB%mapping_dict/.ATTRIBUTES/table-valuesB%data_shape/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH}
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*#
valueBB B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Ksavev2_mutabledensehashtable_lookup_table_export_values_lookuptableexportv2Msavev2_mutabledensehashtable_lookup_table_export_values_lookuptableexportv2_1#savev2_variable_read_readvariableopWsavev2_scoring_based_embedding_model_embedding_lookup_layer_ent_emb_read_readvariableopWsavev2_scoring_based_embedding_model_embedding_lookup_layer_rel_emb_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes

2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*=
_input_shapes,
*: ::: :��:	�: : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
::

_output_shapes
::

_output_shapes
: :'#
!
_output_shapes
:��:%!

_output_shapes
:	�:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
�	
�
>__inference_scoring_based_embedding_model_layer_call_fn_815004
input_1
unknown:��
	unknown_0:	�
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:���������:���������*$
_read_only_resource_inputs
*.
config_proto

CPU

GPU2*0J � *b
f]R[
Y__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_814978k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:���������m

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*#
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�>
�
Y__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_814978

inputs2
embedding_lookup_layer_814883:��0
embedding_lookup_layer_814885:	�
identity

identity_1��9corruption_generation_layer_train/StatefulPartitionedCall�.embedding_lookup_layer/StatefulPartitionedCall�0embedding_lookup_layer/StatefulPartitionedCall_1�[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp�[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp�
.embedding_lookup_layer/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_lookup_layer_814883embedding_lookup_layer_814885*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*$
_read_only_resource_inputs
*.
config_proto

CPU

GPU2*0J � *[
fVRT
R__inference_embedding_lookup_layer_layer_call_and_return_conditional_losses_814800�
TransE/PartitionedCallPartitionedCall7embedding_lookup_layer/StatefulPartitionedCall:output:07embedding_lookup_layer/StatefulPartitionedCall:output:17embedding_lookup_layer/StatefulPartitionedCall:output:2*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������* 
_read_only_resource_inputs
 *.
config_proto

CPU

GPU2*0J � *K
fFRD
B__inference_TransE_layer_call_and_return_conditional_losses_814821�
9corruption_generation_layer_train/StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *.
config_proto

CPU

GPU2*0J � *f
faR_
]__inference_corruption_generation_layer_train_layer_call_and_return_conditional_losses_814952�
0embedding_lookup_layer/StatefulPartitionedCall_1StatefulPartitionedCallBcorruption_generation_layer_train/StatefulPartitionedCall:output:0embedding_lookup_layer_814883embedding_lookup_layer_814885*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*$
_read_only_resource_inputs
*.
config_proto

CPU

GPU2*0J � *[
fVRT
R__inference_embedding_lookup_layer_layer_call_and_return_conditional_losses_814800�
TransE/PartitionedCall_1PartitionedCall9embedding_lookup_layer/StatefulPartitionedCall_1:output:09embedding_lookup_layer/StatefulPartitionedCall_1:output:19embedding_lookup_layer/StatefulPartitionedCall_1:output:2*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������* 
_read_only_resource_inputs
 *.
config_proto

CPU

GPU2*0J � *K
fFRD
B__inference_TransE_layer_call_and_return_conditional_losses_814821�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_layer_814883*!
_output_shapes
:��*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*!
_output_shapes
:���
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/y:output:0*
T0*!
_output_shapes
:���
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_layer_814885*
_output_shapes
:	�*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes
:	��
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentityTransE/PartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:���������n

Identity_1Identity!TransE/PartitionedCall_1:output:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOp:^corruption_generation_layer_train/StatefulPartitionedCall/^embedding_lookup_layer/StatefulPartitionedCall1^embedding_lookup_layer/StatefulPartitionedCall_1\^scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp\^scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2v
9corruption_generation_layer_train/StatefulPartitionedCall9corruption_generation_layer_train/StatefulPartitionedCall2`
.embedding_lookup_layer/StatefulPartitionedCall.embedding_lookup_layer/StatefulPartitionedCall2d
0embedding_lookup_layer/StatefulPartitionedCall_10embedding_lookup_layer/StatefulPartitionedCall_12�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp2�
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
/
__inference__initializer_815513
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�6
y
]__inference_corruption_generation_layer_train_layer_call_and_return_conditional_losses_814952
pos
identity�`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������]
ReshapeReshapeposReshape/shape:output:0*
T0*#
_output_shapes
:���������X
Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB:
e
TileTileReshape:output:0Tile/multiples:output:0*
T0*#
_output_shapes
:���������8
ShapeShapepos*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :
S
mulMulstrided_slice:output:0mul/y:output:0*
T0*
_output_shapes
: S
Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :j
Reshape_1/shapePackmul:z:0Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:o
	Reshape_1ReshapeTile:output:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:���������I
Shape_1ShapeReshape_1:output:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
random_uniform/shapePackstrided_slice_1:output:0*
N*
T0*
_output_shapes
:T
random_uniform/minConst*
_output_shapes
: *
dtype0*
value	B : T
random_uniform/maxConst*
_output_shapes
: *
dtype0*
value	B :�
random_uniformRandomUniformIntrandom_uniform/shape:output:0random_uniform/min:output:0random_uniform/max:output:0*
T0*

Tout0*#
_output_shapes
:���������*
seed2����b
CastCastrandom_uniform:output:0*

DstT0
*

SrcT0*#
_output_shapes
:���������G

LogicalNot
LogicalNotCast:y:0*#
_output_shapes
:���������U
Cast_1CastCast:y:0*

DstT0*

SrcT0
*#
_output_shapes
:���������[
Cast_2CastLogicalNot:y:0*

DstT0*

SrcT0
*#
_output_shapes
:���������I
Shape_2ShapeReshape_1:output:0*
T0*
_output_shapes
:_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape_2:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
random_uniform_1/shapePackstrided_slice_2:output:0*
N*
T0*
_output_shapes
:V
random_uniform_1/minConst*
_output_shapes
: *
dtype0*
value	B : X
random_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB	 :��
random_uniform_1RandomUniformIntrandom_uniform_1/shape:output:0random_uniform_1/min:output:0random_uniform_1/max:output:0*
T0*

Tout0*#
_output_shapes
:���������*
seed2����f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceReshape_1:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask`
Mul_1Mul
Cast_1:y:0strided_slice_3:output:0*
T0*#
_output_shapes
:���������a
Mul_2Mul
Cast_2:y:0random_uniform_1:output:0*
T0*#
_output_shapes
:���������P
AddAddV2	Mul_1:z:0	Mul_2:z:0*
T0*#
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSliceReshape_1:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskf
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_5StridedSliceReshape_1:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask`
Mul_3Mul
Cast_2:y:0strided_slice_5:output:0*
T0*#
_output_shapes
:���������a
Mul_4Mul
Cast_1:y:0random_uniform_1:output:0*
T0*#
_output_shapes
:���������R
Add_1AddV2	Mul_3:z:0	Mul_4:z:0*
T0*#
_output_shapes
:���������v
stackPackAdd:z:0strided_slice_4:output:0	Add_1:z:0*
N*
T0*'
_output_shapes
:���������_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       q
	transpose	Transposestack:output:0transpose/perm:output:0*
T0*'
_output_shapes
:���������U
IdentityIdentitytranspose:y:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:L H
'
_output_shapes
:���������

_user_specified_namepos
�C
�
R__inference_embedding_lookup_layer_layer_call_and_return_conditional_losses_815501
triples,
embedding_lookup_815460:��,
embedding_lookup_1_815469:	�
identity

identity_1

identity_2��embedding_lookup�embedding_lookup_1�embedding_lookup_2�[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp�[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOpd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSlicetriplesstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
embedding_lookupResourceGatherembedding_lookup_815460strided_slice:output:0*
Tindices0**
_class 
loc:@embedding_lookup/815460*(
_output_shapes
:����������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/815460*(
_output_shapes
:����������~
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:����������f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSlicetriplesstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
embedding_lookup_1ResourceGatherembedding_lookup_1_815469strided_slice_1:output:0*
Tindices0*,
_class"
 loc:@embedding_lookup_1/815469*(
_output_shapes
:����������*
dtype0�
embedding_lookup_1/IdentityIdentityembedding_lookup_1:output:0*
T0*,
_class"
 loc:@embedding_lookup_1/815469*(
_output_shapes
:�����������
embedding_lookup_1/Identity_1Identity$embedding_lookup_1/Identity:output:0*
T0*(
_output_shapes
:����������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSlicetriplesstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
embedding_lookup_2ResourceGatherembedding_lookup_815460strided_slice_2:output:0*
Tindices0**
_class 
loc:@embedding_lookup/815460*(
_output_shapes
:����������*
dtype0�
embedding_lookup_2/IdentityIdentityembedding_lookup_2:output:0*
T0**
_class 
loc:@embedding_lookup/815460*(
_output_shapes
:�����������
embedding_lookup_2/Identity_1Identity$embedding_lookup_2/Identity:output:0*
T0*(
_output_shapes
:�����������
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_815460*!
_output_shapes
:��*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*!
_output_shapes
:���
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/y:output:0*
T0*!
_output_shapes
:���
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_1_815469*
_output_shapes
:	�*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes
:	��
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: t
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*(
_output_shapes
:����������x

Identity_1Identity&embedding_lookup_1/Identity_1:output:0^NoOp*
T0*(
_output_shapes
:����������x

Identity_2Identity&embedding_lookup_2/Identity_1:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^embedding_lookup^embedding_lookup_1^embedding_lookup_2\^scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp\^scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2$
embedding_lookupembedding_lookup2(
embedding_lookup_1embedding_lookup_12(
embedding_lookup_2embedding_lookup_22�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp2�
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	triples
�	
�
__inference_restore_fn_815546
restored_tensors_0
restored_tensors_1H
Dmutabledensehashtable_table_restore_lookuptableimportv2_table_handle
identity��7MutableDenseHashTable_table_restore/LookupTableImportV2�
7MutableDenseHashTable_table_restore/LookupTableImportV2LookupTableImportV2Dmutabledensehashtable_table_restore_lookuptableimportv2_table_handlerestored_tensors_0restored_tensors_1",/job:localhost/replica:0/task:0/device:CPU:0*	
Tin0*

Tout0*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :I
Const_1Const*
_output_shapes
: *
dtype0*
value	B :N
IdentityIdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp8^MutableDenseHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes

::: 2r
7MutableDenseHashTable_table_restore/LookupTableImportV27MutableDenseHashTable_table_restore/LookupTableImportV2:L H

_output_shapes
:
,
_user_specified_namerestored_tensors_0:LH

_output_shapes
:
,
_user_specified_namerestored_tensors_1
�


B__inference_TransE_layer_call_and_return_conditional_losses_815374
	triples_0
	triples_1
	triples_2
identityU
addAddV2	triples_0	triples_1*
T0*(
_output_shapes
:����������Q
subSubadd:z:0	triples_2*
T0*(
_output_shapes
:����������K
norm/AbsAbssub:z:0*
T0*(
_output_shapes
:����������\
norm/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
norm/SumSumnorm/Abs:y:0#norm/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(o
norm/SqueezeSqueezenorm/Sum:output:0*
T0*#
_output_shapes
:���������*
squeeze_dims
O
NegNegnorm/Squeeze:output:0*
T0*#
_output_shapes
:���������K
IdentityIdentityNeg:y:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:����������:����������:����������:S O
(
_output_shapes
:����������
#
_user_specified_name	triples_0:SO
(
_output_shapes
:����������
#
_user_specified_name	triples_1:SO
(
_output_shapes
:����������
#
_user_specified_name	triples_2
�
�
__inference_save_fn_815537
checkpoint_keyU
Qmutabledensehashtable_lookup_table_export_values_lookuptableexportv2_table_handle
identity

identity_1

identity_2

identity_3

identity_4

identity_5��DMutableDenseHashTable_lookup_table_export_values/LookupTableExportV2�
DMutableDenseHashTable_lookup_table_export_values/LookupTableExportV2LookupTableExportV2Qmutabledensehashtable_lookup_table_export_values_lookuptableexportv2_table_handle",/job:localhost/replica:0/task:0/device:CPU:0*
Tkeys0*
Tvalues0*
_output_shapes

::K
add/yConst*
_output_shapes
: *
dtype0*
valueB B-keysK
addAddcheckpoint_keyadd/y:output:0*
T0*
_output_shapes
: O
add_1/yConst*
_output_shapes
: *
dtype0*
valueB B-valuesO
add_1Addcheckpoint_keyadd_1/y:output:0*
T0*
_output_shapes
: E
IdentityIdentityadd:z:0^NoOp*
T0*
_output_shapes
: F
ConstConst*
_output_shapes
: *
dtype0*
valueB B N

Identity_1IdentityConst:output:0^NoOp*
T0*
_output_shapes
: �

Identity_2IdentityKMutableDenseHashTable_lookup_table_export_values/LookupTableExportV2:keys:0^NoOp*
T0*
_output_shapes
:I

Identity_3Identity	add_1:z:0^NoOp*
T0*
_output_shapes
: H
Const_1Const*
_output_shapes
: *
dtype0*
valueB B P

Identity_4IdentityConst_1:output:0^NoOp*
T0*
_output_shapes
: �

Identity_5IdentityMMutableDenseHashTable_lookup_table_export_values/LookupTableExportV2:values:0^NoOp*
T0*
_output_shapes
:�
NoOpNoOpE^MutableDenseHashTable_lookup_table_export_values/LookupTableExportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: : 2�
DMutableDenseHashTable_lookup_table_export_values/LookupTableExportV2DMutableDenseHashTable_lookup_table_export_values/LookupTableExportV2:F B

_output_shapes
: 
(
_user_specified_namecheckpoint_key
�S
�
Y__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_815170

inputsC
.embedding_lookup_layer_embedding_lookup_815124:��C
0embedding_lookup_layer_embedding_lookup_1_815133:	�
identity��'embedding_lookup_layer/embedding_lookup�)embedding_lookup_layer/embedding_lookup_1�)embedding_lookup_layer/embedding_lookup_2�[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp�[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp{
*embedding_lookup_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        }
,embedding_lookup_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       }
,embedding_lookup_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
$embedding_lookup_layer/strided_sliceStridedSliceinputs3embedding_lookup_layer/strided_slice/stack:output:05embedding_lookup_layer/strided_slice/stack_1:output:05embedding_lookup_layer/strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
'embedding_lookup_layer/embedding_lookupResourceGather.embedding_lookup_layer_embedding_lookup_815124-embedding_lookup_layer/strided_slice:output:0*
Tindices0*A
_class7
53loc:@embedding_lookup_layer/embedding_lookup/815124*(
_output_shapes
:����������*
dtype0�
0embedding_lookup_layer/embedding_lookup/IdentityIdentity0embedding_lookup_layer/embedding_lookup:output:0*
T0*A
_class7
53loc:@embedding_lookup_layer/embedding_lookup/815124*(
_output_shapes
:�����������
2embedding_lookup_layer/embedding_lookup/Identity_1Identity9embedding_lookup_layer/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:����������}
,embedding_lookup_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&embedding_lookup_layer/strided_slice_1StridedSliceinputs5embedding_lookup_layer/strided_slice_1/stack:output:07embedding_lookup_layer/strided_slice_1/stack_1:output:07embedding_lookup_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
)embedding_lookup_layer/embedding_lookup_1ResourceGather0embedding_lookup_layer_embedding_lookup_1_815133/embedding_lookup_layer/strided_slice_1:output:0*
Tindices0*C
_class9
75loc:@embedding_lookup_layer/embedding_lookup_1/815133*(
_output_shapes
:����������*
dtype0�
2embedding_lookup_layer/embedding_lookup_1/IdentityIdentity2embedding_lookup_layer/embedding_lookup_1:output:0*
T0*C
_class9
75loc:@embedding_lookup_layer/embedding_lookup_1/815133*(
_output_shapes
:�����������
4embedding_lookup_layer/embedding_lookup_1/Identity_1Identity;embedding_lookup_layer/embedding_lookup_1/Identity:output:0*
T0*(
_output_shapes
:����������}
,embedding_lookup_layer/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&embedding_lookup_layer/strided_slice_2StridedSliceinputs5embedding_lookup_layer/strided_slice_2/stack:output:07embedding_lookup_layer/strided_slice_2/stack_1:output:07embedding_lookup_layer/strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
)embedding_lookup_layer/embedding_lookup_2ResourceGather.embedding_lookup_layer_embedding_lookup_815124/embedding_lookup_layer/strided_slice_2:output:0*
Tindices0*A
_class7
53loc:@embedding_lookup_layer/embedding_lookup/815124*(
_output_shapes
:����������*
dtype0�
2embedding_lookup_layer/embedding_lookup_2/IdentityIdentity2embedding_lookup_layer/embedding_lookup_2:output:0*
T0*A
_class7
53loc:@embedding_lookup_layer/embedding_lookup/815124*(
_output_shapes
:�����������
4embedding_lookup_layer/embedding_lookup_2/Identity_1Identity;embedding_lookup_layer/embedding_lookup_2/Identity:output:0*
T0*(
_output_shapes
:�����������

TransE/addAddV2;embedding_lookup_layer/embedding_lookup/Identity_1:output:0=embedding_lookup_layer/embedding_lookup_1/Identity_1:output:0*
T0*(
_output_shapes
:�����������

TransE/subSubTransE/add:z:0=embedding_lookup_layer/embedding_lookup_2/Identity_1:output:0*
T0*(
_output_shapes
:����������Y
TransE/norm/AbsAbsTransE/sub:z:0*
T0*(
_output_shapes
:����������c
!TransE/norm/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
TransE/norm/SumSumTransE/norm/Abs:y:0*TransE/norm/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(}
TransE/norm/SqueezeSqueezeTransE/norm/Sum:output:0*
T0*#
_output_shapes
:���������*
squeeze_dims
]

TransE/NegNegTransE/norm/Squeeze:output:0*
T0*#
_output_shapes
:����������
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOpReadVariableOp.embedding_lookup_layer_embedding_lookup_815124*!
_output_shapes
:��*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*!
_output_shapes
:���
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/y:output:0*
T0*!
_output_shapes
:���
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOpReadVariableOp0embedding_lookup_layer_embedding_lookup_1_815133*
_output_shapes
:	�*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes
:	��
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: Y
IdentityIdentityTransE/Neg:y:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOp(^embedding_lookup_layer/embedding_lookup*^embedding_lookup_layer/embedding_lookup_1*^embedding_lookup_layer/embedding_lookup_2\^scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp\^scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2R
'embedding_lookup_layer/embedding_lookup'embedding_lookup_layer/embedding_lookup2V
)embedding_lookup_layer/embedding_lookup_1)embedding_lookup_layer/embedding_lookup_12V
)embedding_lookup_layer/embedding_lookup_2)embedding_lookup_layer/embedding_lookup_22�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp2�
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
x
B__inference_corruption_generation_layer_train_layer_call_fn_815379
pos
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallpos*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *.
config_proto

CPU

GPU2*0J � *f
faR_
]__inference_corruption_generation_layer_train_layer_call_and_return_conditional_losses_814952o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������22
StatefulPartitionedCallStatefulPartitionedCall:L H
'
_output_shapes
:���������

_user_specified_namepos
�	
}
B__inference_TransE_layer_call_and_return_conditional_losses_814821
triples
	triples_1
	triples_2
identityS
addAddV2triples	triples_1*
T0*(
_output_shapes
:����������Q
subSubadd:z:0	triples_2*
T0*(
_output_shapes
:����������K
norm/AbsAbssub:z:0*
T0*(
_output_shapes
:����������\
norm/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
norm/SumSumnorm/Abs:y:0#norm/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(o
norm/SqueezeSqueezenorm/Sum:output:0*
T0*#
_output_shapes
:���������*
squeeze_dims
O
NegNegnorm/Squeeze:output:0*
T0*#
_output_shapes
:���������K
IdentityIdentityNeg:y:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:����������:����������:����������:Q M
(
_output_shapes
:����������
!
_user_specified_name	triples:QM
(
_output_shapes
:����������
!
_user_specified_name	triples:QM
(
_output_shapes
:����������
!
_user_specified_name	triples
�
-
__inference__destroyer_815518
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
�>
�
Y__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_815068
input_12
embedding_lookup_layer_815035:��0
embedding_lookup_layer_815037:	�
identity

identity_1��9corruption_generation_layer_train/StatefulPartitionedCall�.embedding_lookup_layer/StatefulPartitionedCall�0embedding_lookup_layer/StatefulPartitionedCall_1�[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp�[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp�
.embedding_lookup_layer/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_lookup_layer_815035embedding_lookup_layer_815037*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*$
_read_only_resource_inputs
*.
config_proto

CPU

GPU2*0J � *[
fVRT
R__inference_embedding_lookup_layer_layer_call_and_return_conditional_losses_814800�
TransE/PartitionedCallPartitionedCall7embedding_lookup_layer/StatefulPartitionedCall:output:07embedding_lookup_layer/StatefulPartitionedCall:output:17embedding_lookup_layer/StatefulPartitionedCall:output:2*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������* 
_read_only_resource_inputs
 *.
config_proto

CPU

GPU2*0J � *K
fFRD
B__inference_TransE_layer_call_and_return_conditional_losses_814821�
9corruption_generation_layer_train/StatefulPartitionedCallStatefulPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *.
config_proto

CPU

GPU2*0J � *f
faR_
]__inference_corruption_generation_layer_train_layer_call_and_return_conditional_losses_814952�
0embedding_lookup_layer/StatefulPartitionedCall_1StatefulPartitionedCallBcorruption_generation_layer_train/StatefulPartitionedCall:output:0embedding_lookup_layer_815035embedding_lookup_layer_815037*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*$
_read_only_resource_inputs
*.
config_proto

CPU

GPU2*0J � *[
fVRT
R__inference_embedding_lookup_layer_layer_call_and_return_conditional_losses_814800�
TransE/PartitionedCall_1PartitionedCall9embedding_lookup_layer/StatefulPartitionedCall_1:output:09embedding_lookup_layer/StatefulPartitionedCall_1:output:19embedding_lookup_layer/StatefulPartitionedCall_1:output:2*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������* 
_read_only_resource_inputs
 *.
config_proto

CPU

GPU2*0J � *K
fFRD
B__inference_TransE_layer_call_and_return_conditional_losses_814821�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_layer_815035*!
_output_shapes
:��*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*!
_output_shapes
:���
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/y:output:0*
T0*!
_output_shapes
:���
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_layer_815037*
_output_shapes
:	�*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes
:	��
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentityTransE/PartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:���������n

Identity_1Identity!TransE/PartitionedCall_1:output:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOp:^corruption_generation_layer_train/StatefulPartitionedCall/^embedding_lookup_layer/StatefulPartitionedCall1^embedding_lookup_layer/StatefulPartitionedCall_1\^scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp\^scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2v
9corruption_generation_layer_train/StatefulPartitionedCall9corruption_generation_layer_train/StatefulPartitionedCall2`
.embedding_lookup_layer/StatefulPartitionedCall.embedding_lookup_layer/StatefulPartitionedCall2d
0embedding_lookup_layer/StatefulPartitionedCall_10embedding_lookup_layer/StatefulPartitionedCall_12�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp2�
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�/
�
Y__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_815032
input_12
embedding_lookup_layer_815007:��0
embedding_lookup_layer_815009:	�
identity��.embedding_lookup_layer/StatefulPartitionedCall�[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp�[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp�
.embedding_lookup_layer/StatefulPartitionedCallStatefulPartitionedCallinput_1embedding_lookup_layer_815007embedding_lookup_layer_815009*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*$
_read_only_resource_inputs
*.
config_proto

CPU

GPU2*0J � *[
fVRT
R__inference_embedding_lookup_layer_layer_call_and_return_conditional_losses_814800�
TransE/PartitionedCallPartitionedCall7embedding_lookup_layer/StatefulPartitionedCall:output:07embedding_lookup_layer/StatefulPartitionedCall:output:17embedding_lookup_layer/StatefulPartitionedCall:output:2*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������* 
_read_only_resource_inputs
 *.
config_proto

CPU

GPU2*0J � *K
fFRD
B__inference_TransE_layer_call_and_return_conditional_losses_814821�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_layer_815007*!
_output_shapes
:��*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*!
_output_shapes
:���
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/y:output:0*
T0*!
_output_shapes
:���
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_layer_815009*
_output_shapes
:	�*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes
:	��
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentityTransE/PartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOp/^embedding_lookup_layer/StatefulPartitionedCall\^scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp\^scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2`
.embedding_lookup_layer/StatefulPartitionedCall.embedding_lookup_layer/StatefulPartitionedCall2�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp2�
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
�

�
'__inference_restore_from_tensors_815614W
Mmutabledensehashtable_table_restore_lookuptableimportv2_mutabledensehashtable: E
Amutabledensehashtable_table_restore_lookuptableimportv2_restorev2G
Cmutabledensehashtable_table_restore_lookuptableimportv2_restorev2_1
identity��7MutableDenseHashTable_table_restore/LookupTableImportV2�
7MutableDenseHashTable_table_restore/LookupTableImportV2LookupTableImportV2Mmutabledensehashtable_table_restore_lookuptableimportv2_mutabledensehashtableAmutabledensehashtable_table_restore_lookuptableimportv2_restorev2Cmutabledensehashtable_table_restore_lookuptableimportv2_restorev2_1*	
Tin0*

Tout0*(
_class
loc:@MutableDenseHashTable*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp8^MutableDenseHashTable_table_restore/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*
_input_shapes

: ::2r
7MutableDenseHashTable_table_restore/LookupTableImportV27MutableDenseHashTable_table_restore/LookupTableImportV2:. *
(
_class
loc:@MutableDenseHashTable:HD
(
_class
loc:@MutableDenseHashTable

_output_shapes
::HD
(
_class
loc:@MutableDenseHashTable

_output_shapes
:
�
�
$__inference_signature_wrapper_815097
input_1
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������*$
_read_only_resource_inputs
*.
config_proto

CPU

GPU2*0J � **
f%R#
!__inference__wrapped_model_814745k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
� 
�
"__inference__traced_restore_815629
file_prefix
mutabledensehashtable: #
assignvariableop_variable: d
Oassignvariableop_1_scoring_based_embedding_model_embedding_lookup_layer_ent_emb:��b
Oassignvariableop_2_scoring_based_embedding_model_embedding_lookup_layer_rel_emb:	�"
assignvariableop_3_total: "
assignvariableop_4_count: 

identity_6��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�StatefulPartitionedCall�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B#mapping_dict/.ATTRIBUTES/table-keysB%mapping_dict/.ATTRIBUTES/table-valuesB%data_shape/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*#
valueBB B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*4
_output_shapes"
 ::::::::*
dtypes

2�
StatefulPartitionedCallStatefulPartitionedCallmutabledensehashtableRestoreV2:tensors:0RestoreV2:tensors:1"/device:CPU:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *&
 _has_manual_control_dependencies(*
_output_shapes
: * 
_read_only_resource_inputs
 *.
config_proto

CPU

GPU2*0J � *0
f+R)
'__inference_restore_from_tensors_815614[
IdentityIdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpOassignvariableop_1_scoring_based_embedding_model_embedding_lookup_layer_ent_embIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpOassignvariableop_2_scoring_based_embedding_model_embedding_lookup_layer_rel_embIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_totalIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_countIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �

Identity_5Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^NoOp^StatefulPartitionedCall"/device:CPU:0*
T0*
_output_shapes
: U

Identity_6IdentityIdentity_5:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "!

identity_6Identity_6:output:0*!
_input_shapes
: : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_422
StatefulPartitionedCallStatefulPartitionedCall:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�

�
7__inference_embedding_lookup_layer_layer_call_fn_815453
triples
unknown:��
	unknown_0:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalltriplesunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*$
_read_only_resource_inputs
*.
config_proto

CPU

GPU2*0J � *[
fVRT
R__inference_embedding_lookup_layer_layer_call_and_return_conditional_losses_814800p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:���������
!
_user_specified_name	triples
�
�
__inference_loss_fn_1_815354w
dscoring_based_embedding_model_embedding_lookup_layer_rel_emb_regularizer_abs_readvariableop_resource:	�
identity��[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp�
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOpReadVariableOpdscoring_based_embedding_model_embedding_lookup_layer_rel_emb_regularizer_abs_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes
:	��
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
IdentityIdentityPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp\^scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2�
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp
�
d
'__inference_TransE_layer_call_fn_815361
	triples_0
	triples_1
	triples_2
identity�
PartitionedCallPartitionedCall	triples_0	triples_1	triples_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������* 
_read_only_resource_inputs
 *.
config_proto

CPU

GPU2*0J � *K
fFRD
B__inference_TransE_layer_call_and_return_conditional_losses_814821\
IdentityIdentityPartitionedCall:output:0*
T0*#
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:����������:����������:����������:S O
(
_output_shapes
:����������
#
_user_specified_name	triples_0:SO
(
_output_shapes
:����������
#
_user_specified_name	triples_1:SO
(
_output_shapes
:����������
#
_user_specified_name	triples_2
�D
�
!__inference__wrapped_model_814745
input_1a
Lscoring_based_embedding_model_embedding_lookup_layer_embedding_lookup_814715:��a
Nscoring_based_embedding_model_embedding_lookup_layer_embedding_lookup_1_814724:	�
identity��Escoring_based_embedding_model/embedding_lookup_layer/embedding_lookup�Gscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_1�Gscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_2�
Hscoring_based_embedding_model/embedding_lookup_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Jscoring_based_embedding_model/embedding_lookup_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
Jscoring_based_embedding_model/embedding_lookup_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
Bscoring_based_embedding_model/embedding_lookup_layer/strided_sliceStridedSliceinput_1Qscoring_based_embedding_model/embedding_lookup_layer/strided_slice/stack:output:0Sscoring_based_embedding_model/embedding_lookup_layer/strided_slice/stack_1:output:0Sscoring_based_embedding_model/embedding_lookup_layer/strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
Escoring_based_embedding_model/embedding_lookup_layer/embedding_lookupResourceGatherLscoring_based_embedding_model_embedding_lookup_layer_embedding_lookup_814715Kscoring_based_embedding_model/embedding_lookup_layer/strided_slice:output:0*
Tindices0*_
_classU
SQloc:@scoring_based_embedding_model/embedding_lookup_layer/embedding_lookup/814715*(
_output_shapes
:����������*
dtype0�
Nscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup/IdentityIdentityNscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup:output:0*
T0*_
_classU
SQloc:@scoring_based_embedding_model/embedding_lookup_layer/embedding_lookup/814715*(
_output_shapes
:�����������
Pscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup/Identity_1IdentityWscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:�����������
Jscoring_based_embedding_model/embedding_lookup_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
Dscoring_based_embedding_model/embedding_lookup_layer/strided_slice_1StridedSliceinput_1Sscoring_based_embedding_model/embedding_lookup_layer/strided_slice_1/stack:output:0Uscoring_based_embedding_model/embedding_lookup_layer/strided_slice_1/stack_1:output:0Uscoring_based_embedding_model/embedding_lookup_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
Gscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_1ResourceGatherNscoring_based_embedding_model_embedding_lookup_layer_embedding_lookup_1_814724Mscoring_based_embedding_model/embedding_lookup_layer/strided_slice_1:output:0*
Tindices0*a
_classW
USloc:@scoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_1/814724*(
_output_shapes
:����������*
dtype0�
Pscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_1/IdentityIdentityPscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_1:output:0*
T0*a
_classW
USloc:@scoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_1/814724*(
_output_shapes
:�����������
Rscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_1/Identity_1IdentityYscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_1/Identity:output:0*
T0*(
_output_shapes
:�����������
Jscoring_based_embedding_model/embedding_lookup_layer/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
Dscoring_based_embedding_model/embedding_lookup_layer/strided_slice_2StridedSliceinput_1Sscoring_based_embedding_model/embedding_lookup_layer/strided_slice_2/stack:output:0Uscoring_based_embedding_model/embedding_lookup_layer/strided_slice_2/stack_1:output:0Uscoring_based_embedding_model/embedding_lookup_layer/strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
Gscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_2ResourceGatherLscoring_based_embedding_model_embedding_lookup_layer_embedding_lookup_814715Mscoring_based_embedding_model/embedding_lookup_layer/strided_slice_2:output:0*
Tindices0*_
_classU
SQloc:@scoring_based_embedding_model/embedding_lookup_layer/embedding_lookup/814715*(
_output_shapes
:����������*
dtype0�
Pscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_2/IdentityIdentityPscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_2:output:0*
T0*_
_classU
SQloc:@scoring_based_embedding_model/embedding_lookup_layer/embedding_lookup/814715*(
_output_shapes
:�����������
Rscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_2/Identity_1IdentityYscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_2/Identity:output:0*
T0*(
_output_shapes
:�����������
(scoring_based_embedding_model/TransE/addAddV2Yscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup/Identity_1:output:0[scoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_1/Identity_1:output:0*
T0*(
_output_shapes
:�����������
(scoring_based_embedding_model/TransE/subSub,scoring_based_embedding_model/TransE/add:z:0[scoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_2/Identity_1:output:0*
T0*(
_output_shapes
:�����������
-scoring_based_embedding_model/TransE/norm/AbsAbs,scoring_based_embedding_model/TransE/sub:z:0*
T0*(
_output_shapes
:�����������
?scoring_based_embedding_model/TransE/norm/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
-scoring_based_embedding_model/TransE/norm/SumSum1scoring_based_embedding_model/TransE/norm/Abs:y:0Hscoring_based_embedding_model/TransE/norm/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
1scoring_based_embedding_model/TransE/norm/SqueezeSqueeze6scoring_based_embedding_model/TransE/norm/Sum:output:0*
T0*#
_output_shapes
:���������*
squeeze_dims
�
(scoring_based_embedding_model/TransE/NegNeg:scoring_based_embedding_model/TransE/norm/Squeeze:output:0*
T0*#
_output_shapes
:���������w
IdentityIdentity,scoring_based_embedding_model/TransE/Neg:y:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOpF^scoring_based_embedding_model/embedding_lookup_layer/embedding_lookupH^scoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_1H^scoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2�
Escoring_based_embedding_model/embedding_lookup_layer/embedding_lookupEscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup2�
Gscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_1Gscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_12�
Gscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_2Gscoring_based_embedding_model/embedding_lookup_layer/embedding_lookup_2:P L
'
_output_shapes
:���������
!
_user_specified_name	input_1
��
�
Y__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_815312

inputsC
.embedding_lookup_layer_embedding_lookup_815177:��C
0embedding_lookup_layer_embedding_lookup_1_815186:	�
identity

identity_1��'embedding_lookup_layer/embedding_lookup�)embedding_lookup_layer/embedding_lookup_1�)embedding_lookup_layer/embedding_lookup_2�)embedding_lookup_layer/embedding_lookup_3�)embedding_lookup_layer/embedding_lookup_4�)embedding_lookup_layer/embedding_lookup_5�[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp�[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp{
*embedding_lookup_layer/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        }
,embedding_lookup_layer/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       }
,embedding_lookup_layer/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
$embedding_lookup_layer/strided_sliceStridedSliceinputs3embedding_lookup_layer/strided_slice/stack:output:05embedding_lookup_layer/strided_slice/stack_1:output:05embedding_lookup_layer/strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
'embedding_lookup_layer/embedding_lookupResourceGather.embedding_lookup_layer_embedding_lookup_815177-embedding_lookup_layer/strided_slice:output:0*
Tindices0*A
_class7
53loc:@embedding_lookup_layer/embedding_lookup/815177*(
_output_shapes
:����������*
dtype0�
0embedding_lookup_layer/embedding_lookup/IdentityIdentity0embedding_lookup_layer/embedding_lookup:output:0*
T0*A
_class7
53loc:@embedding_lookup_layer/embedding_lookup/815177*(
_output_shapes
:�����������
2embedding_lookup_layer/embedding_lookup/Identity_1Identity9embedding_lookup_layer/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:����������}
,embedding_lookup_layer/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&embedding_lookup_layer/strided_slice_1StridedSliceinputs5embedding_lookup_layer/strided_slice_1/stack:output:07embedding_lookup_layer/strided_slice_1/stack_1:output:07embedding_lookup_layer/strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
)embedding_lookup_layer/embedding_lookup_1ResourceGather0embedding_lookup_layer_embedding_lookup_1_815186/embedding_lookup_layer/strided_slice_1:output:0*
Tindices0*C
_class9
75loc:@embedding_lookup_layer/embedding_lookup_1/815186*(
_output_shapes
:����������*
dtype0�
2embedding_lookup_layer/embedding_lookup_1/IdentityIdentity2embedding_lookup_layer/embedding_lookup_1:output:0*
T0*C
_class9
75loc:@embedding_lookup_layer/embedding_lookup_1/815186*(
_output_shapes
:�����������
4embedding_lookup_layer/embedding_lookup_1/Identity_1Identity;embedding_lookup_layer/embedding_lookup_1/Identity:output:0*
T0*(
_output_shapes
:����������}
,embedding_lookup_layer/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&embedding_lookup_layer/strided_slice_2StridedSliceinputs5embedding_lookup_layer/strided_slice_2/stack:output:07embedding_lookup_layer/strided_slice_2/stack_1:output:07embedding_lookup_layer/strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
)embedding_lookup_layer/embedding_lookup_2ResourceGather.embedding_lookup_layer_embedding_lookup_815177/embedding_lookup_layer/strided_slice_2:output:0*
Tindices0*A
_class7
53loc:@embedding_lookup_layer/embedding_lookup/815177*(
_output_shapes
:����������*
dtype0�
2embedding_lookup_layer/embedding_lookup_2/IdentityIdentity2embedding_lookup_layer/embedding_lookup_2:output:0*
T0*A
_class7
53loc:@embedding_lookup_layer/embedding_lookup/815177*(
_output_shapes
:�����������
4embedding_lookup_layer/embedding_lookup_2/Identity_1Identity;embedding_lookup_layer/embedding_lookup_2/Identity:output:0*
T0*(
_output_shapes
:�����������

TransE/addAddV2;embedding_lookup_layer/embedding_lookup/Identity_1:output:0=embedding_lookup_layer/embedding_lookup_1/Identity_1:output:0*
T0*(
_output_shapes
:�����������

TransE/subSubTransE/add:z:0=embedding_lookup_layer/embedding_lookup_2/Identity_1:output:0*
T0*(
_output_shapes
:����������Y
TransE/norm/AbsAbsTransE/sub:z:0*
T0*(
_output_shapes
:����������c
!TransE/norm/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
TransE/norm/SumSumTransE/norm/Abs:y:0*TransE/norm/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(}
TransE/norm/SqueezeSqueezeTransE/norm/Sum:output:0*
T0*#
_output_shapes
:���������*
squeeze_dims
]

TransE/NegNegTransE/norm/Squeeze:output:0*
T0*#
_output_shapes
:����������
/corruption_generation_layer_train/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
����������
)corruption_generation_layer_train/ReshapeReshapeinputs8corruption_generation_layer_train/Reshape/shape:output:0*
T0*#
_output_shapes
:���������z
0corruption_generation_layer_train/Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB:
�
&corruption_generation_layer_train/TileTile2corruption_generation_layer_train/Reshape:output:09corruption_generation_layer_train/Tile/multiples:output:0*
T0*#
_output_shapes
:���������]
'corruption_generation_layer_train/ShapeShapeinputs*
T0*
_output_shapes
:
5corruption_generation_layer_train/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
7corruption_generation_layer_train/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
7corruption_generation_layer_train/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
/corruption_generation_layer_train/strided_sliceStridedSlice0corruption_generation_layer_train/Shape:output:0>corruption_generation_layer_train/strided_slice/stack:output:0@corruption_generation_layer_train/strided_slice/stack_1:output:0@corruption_generation_layer_train/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'corruption_generation_layer_train/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
�
%corruption_generation_layer_train/mulMul8corruption_generation_layer_train/strided_slice:output:00corruption_generation_layer_train/mul/y:output:0*
T0*
_output_shapes
: u
3corruption_generation_layer_train/Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
1corruption_generation_layer_train/Reshape_1/shapePack)corruption_generation_layer_train/mul:z:0<corruption_generation_layer_train/Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:�
+corruption_generation_layer_train/Reshape_1Reshape/corruption_generation_layer_train/Tile:output:0:corruption_generation_layer_train/Reshape_1/shape:output:0*
T0*'
_output_shapes
:����������
)corruption_generation_layer_train/Shape_1Shape4corruption_generation_layer_train/Reshape_1:output:0*
T0*
_output_shapes
:�
7corruption_generation_layer_train/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9corruption_generation_layer_train/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9corruption_generation_layer_train/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1corruption_generation_layer_train/strided_slice_1StridedSlice2corruption_generation_layer_train/Shape_1:output:0@corruption_generation_layer_train/strided_slice_1/stack:output:0Bcorruption_generation_layer_train/strided_slice_1/stack_1:output:0Bcorruption_generation_layer_train/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
6corruption_generation_layer_train/random_uniform/shapePack:corruption_generation_layer_train/strided_slice_1:output:0*
N*
T0*
_output_shapes
:v
4corruption_generation_layer_train/random_uniform/minConst*
_output_shapes
: *
dtype0*
value	B : v
4corruption_generation_layer_train/random_uniform/maxConst*
_output_shapes
: *
dtype0*
value	B :�
0corruption_generation_layer_train/random_uniformRandomUniformInt?corruption_generation_layer_train/random_uniform/shape:output:0=corruption_generation_layer_train/random_uniform/min:output:0=corruption_generation_layer_train/random_uniform/max:output:0*
T0*

Tout0*#
_output_shapes
:���������*
seed2�����
&corruption_generation_layer_train/CastCast9corruption_generation_layer_train/random_uniform:output:0*

DstT0
*

SrcT0*#
_output_shapes
:����������
,corruption_generation_layer_train/LogicalNot
LogicalNot*corruption_generation_layer_train/Cast:y:0*#
_output_shapes
:����������
(corruption_generation_layer_train/Cast_1Cast*corruption_generation_layer_train/Cast:y:0*

DstT0*

SrcT0
*#
_output_shapes
:����������
(corruption_generation_layer_train/Cast_2Cast0corruption_generation_layer_train/LogicalNot:y:0*

DstT0*

SrcT0
*#
_output_shapes
:����������
)corruption_generation_layer_train/Shape_2Shape4corruption_generation_layer_train/Reshape_1:output:0*
T0*
_output_shapes
:�
7corruption_generation_layer_train/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: �
9corruption_generation_layer_train/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
9corruption_generation_layer_train/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
1corruption_generation_layer_train/strided_slice_2StridedSlice2corruption_generation_layer_train/Shape_2:output:0@corruption_generation_layer_train/strided_slice_2/stack:output:0Bcorruption_generation_layer_train/strided_slice_2/stack_1:output:0Bcorruption_generation_layer_train/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
8corruption_generation_layer_train/random_uniform_1/shapePack:corruption_generation_layer_train/strided_slice_2:output:0*
N*
T0*
_output_shapes
:x
6corruption_generation_layer_train/random_uniform_1/minConst*
_output_shapes
: *
dtype0*
value	B : z
6corruption_generation_layer_train/random_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB	 :��
2corruption_generation_layer_train/random_uniform_1RandomUniformIntAcorruption_generation_layer_train/random_uniform_1/shape:output:0?corruption_generation_layer_train/random_uniform_1/min:output:0?corruption_generation_layer_train/random_uniform_1/max:output:0*
T0*

Tout0*#
_output_shapes
:���������*
seed2�����
7corruption_generation_layer_train/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
9corruption_generation_layer_train/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
9corruption_generation_layer_train/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
1corruption_generation_layer_train/strided_slice_3StridedSlice4corruption_generation_layer_train/Reshape_1:output:0@corruption_generation_layer_train/strided_slice_3/stack:output:0Bcorruption_generation_layer_train/strided_slice_3/stack_1:output:0Bcorruption_generation_layer_train/strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
'corruption_generation_layer_train/Mul_1Mul,corruption_generation_layer_train/Cast_1:y:0:corruption_generation_layer_train/strided_slice_3:output:0*
T0*#
_output_shapes
:����������
'corruption_generation_layer_train/Mul_2Mul,corruption_generation_layer_train/Cast_2:y:0;corruption_generation_layer_train/random_uniform_1:output:0*
T0*#
_output_shapes
:����������
%corruption_generation_layer_train/AddAddV2+corruption_generation_layer_train/Mul_1:z:0+corruption_generation_layer_train/Mul_2:z:0*
T0*#
_output_shapes
:����������
7corruption_generation_layer_train/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
9corruption_generation_layer_train/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
9corruption_generation_layer_train/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
1corruption_generation_layer_train/strided_slice_4StridedSlice4corruption_generation_layer_train/Reshape_1:output:0@corruption_generation_layer_train/strided_slice_4/stack:output:0Bcorruption_generation_layer_train/strided_slice_4/stack_1:output:0Bcorruption_generation_layer_train/strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
7corruption_generation_layer_train/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       �
9corruption_generation_layer_train/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
9corruption_generation_layer_train/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
1corruption_generation_layer_train/strided_slice_5StridedSlice4corruption_generation_layer_train/Reshape_1:output:0@corruption_generation_layer_train/strided_slice_5/stack:output:0Bcorruption_generation_layer_train/strided_slice_5/stack_1:output:0Bcorruption_generation_layer_train/strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
'corruption_generation_layer_train/Mul_3Mul,corruption_generation_layer_train/Cast_2:y:0:corruption_generation_layer_train/strided_slice_5:output:0*
T0*#
_output_shapes
:����������
'corruption_generation_layer_train/Mul_4Mul,corruption_generation_layer_train/Cast_1:y:0;corruption_generation_layer_train/random_uniform_1:output:0*
T0*#
_output_shapes
:����������
'corruption_generation_layer_train/Add_1AddV2+corruption_generation_layer_train/Mul_3:z:0+corruption_generation_layer_train/Mul_4:z:0*
T0*#
_output_shapes
:����������
'corruption_generation_layer_train/stackPack)corruption_generation_layer_train/Add:z:0:corruption_generation_layer_train/strided_slice_4:output:0+corruption_generation_layer_train/Add_1:z:0*
N*
T0*'
_output_shapes
:����������
0corruption_generation_layer_train/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       �
+corruption_generation_layer_train/transpose	Transpose0corruption_generation_layer_train/stack:output:09corruption_generation_layer_train/transpose/perm:output:0*
T0*'
_output_shapes
:���������}
,embedding_lookup_layer/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.embedding_lookup_layer/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&embedding_lookup_layer/strided_slice_3StridedSlice/corruption_generation_layer_train/transpose:y:05embedding_lookup_layer/strided_slice_3/stack:output:07embedding_lookup_layer/strided_slice_3/stack_1:output:07embedding_lookup_layer/strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
)embedding_lookup_layer/embedding_lookup_3ResourceGather.embedding_lookup_layer_embedding_lookup_815177/embedding_lookup_layer/strided_slice_3:output:0*
Tindices0*A
_class7
53loc:@embedding_lookup_layer/embedding_lookup/815177*(
_output_shapes
:����������*
dtype0�
2embedding_lookup_layer/embedding_lookup_3/IdentityIdentity2embedding_lookup_layer/embedding_lookup_3:output:0*
T0*A
_class7
53loc:@embedding_lookup_layer/embedding_lookup/815177*(
_output_shapes
:�����������
4embedding_lookup_layer/embedding_lookup_3/Identity_1Identity;embedding_lookup_layer/embedding_lookup_3/Identity:output:0*
T0*(
_output_shapes
:����������}
,embedding_lookup_layer/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&embedding_lookup_layer/strided_slice_4StridedSlice/corruption_generation_layer_train/transpose:y:05embedding_lookup_layer/strided_slice_4/stack:output:07embedding_lookup_layer/strided_slice_4/stack_1:output:07embedding_lookup_layer/strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
)embedding_lookup_layer/embedding_lookup_4ResourceGather0embedding_lookup_layer_embedding_lookup_1_815186/embedding_lookup_layer/strided_slice_4:output:0*
Tindices0*C
_class9
75loc:@embedding_lookup_layer/embedding_lookup_1/815186*(
_output_shapes
:����������*
dtype0�
2embedding_lookup_layer/embedding_lookup_4/IdentityIdentity2embedding_lookup_layer/embedding_lookup_4:output:0*
T0*C
_class9
75loc:@embedding_lookup_layer/embedding_lookup_1/815186*(
_output_shapes
:�����������
4embedding_lookup_layer/embedding_lookup_4/Identity_1Identity;embedding_lookup_layer/embedding_lookup_4/Identity:output:0*
T0*(
_output_shapes
:����������}
,embedding_lookup_layer/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
.embedding_lookup_layer/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
&embedding_lookup_layer/strided_slice_5StridedSlice/corruption_generation_layer_train/transpose:y:05embedding_lookup_layer/strided_slice_5/stack:output:07embedding_lookup_layer/strided_slice_5/stack_1:output:07embedding_lookup_layer/strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
)embedding_lookup_layer/embedding_lookup_5ResourceGather.embedding_lookup_layer_embedding_lookup_815177/embedding_lookup_layer/strided_slice_5:output:0*
Tindices0*A
_class7
53loc:@embedding_lookup_layer/embedding_lookup/815177*(
_output_shapes
:����������*
dtype0�
2embedding_lookup_layer/embedding_lookup_5/IdentityIdentity2embedding_lookup_layer/embedding_lookup_5:output:0*
T0*A
_class7
53loc:@embedding_lookup_layer/embedding_lookup/815177*(
_output_shapes
:�����������
4embedding_lookup_layer/embedding_lookup_5/Identity_1Identity;embedding_lookup_layer/embedding_lookup_5/Identity:output:0*
T0*(
_output_shapes
:�����������
TransE/add_1AddV2=embedding_lookup_layer/embedding_lookup_3/Identity_1:output:0=embedding_lookup_layer/embedding_lookup_4/Identity_1:output:0*
T0*(
_output_shapes
:�����������
TransE/sub_1SubTransE/add_1:z:0=embedding_lookup_layer/embedding_lookup_5/Identity_1:output:0*
T0*(
_output_shapes
:����������]
TransE/norm_1/AbsAbsTransE/sub_1:z:0*
T0*(
_output_shapes
:����������e
#TransE/norm_1/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
TransE/norm_1/SumSumTransE/norm_1/Abs:y:0,TransE/norm_1/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:���������*
	keep_dims(�
TransE/norm_1/SqueezeSqueezeTransE/norm_1/Sum:output:0*
T0*#
_output_shapes
:���������*
squeeze_dims
a
TransE/Neg_1NegTransE/norm_1/Squeeze:output:0*
T0*#
_output_shapes
:����������
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOpReadVariableOp.embedding_lookup_layer_embedding_lookup_815177*!
_output_shapes
:��*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*!
_output_shapes
:���
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/y:output:0*
T0*!
_output_shapes
:���
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOpReadVariableOp0embedding_lookup_layer_embedding_lookup_1_815186*
_output_shapes
:	�*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes
:	��
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: Y
IdentityIdentityTransE/Neg:y:0^NoOp*
T0*#
_output_shapes
:���������]

Identity_1IdentityTransE/Neg_1:y:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOp(^embedding_lookup_layer/embedding_lookup*^embedding_lookup_layer/embedding_lookup_1*^embedding_lookup_layer/embedding_lookup_2*^embedding_lookup_layer/embedding_lookup_3*^embedding_lookup_layer/embedding_lookup_4*^embedding_lookup_layer/embedding_lookup_5\^scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp\^scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2R
'embedding_lookup_layer/embedding_lookup'embedding_lookup_layer/embedding_lookup2V
)embedding_lookup_layer/embedding_lookup_1)embedding_lookup_layer/embedding_lookup_12V
)embedding_lookup_layer/embedding_lookup_2)embedding_lookup_layer/embedding_lookup_22V
)embedding_lookup_layer/embedding_lookup_3)embedding_lookup_layer/embedding_lookup_32V
)embedding_lookup_layer/embedding_lookup_4)embedding_lookup_layer/embedding_lookup_42V
)embedding_lookup_layer/embedding_lookup_5)embedding_lookup_layer/embedding_lookup_52�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp2�
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�C
�
R__inference_embedding_lookup_layer_layer_call_and_return_conditional_losses_814800
triples,
embedding_lookup_814759:��,
embedding_lookup_1_814768:	�
identity

identity_1

identity_2��embedding_lookup�embedding_lookup_1�embedding_lookup_2�[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp�[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOpd
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSlicetriplesstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
embedding_lookupResourceGatherembedding_lookup_814759strided_slice:output:0*
Tindices0**
_class 
loc:@embedding_lookup/814759*(
_output_shapes
:����������*
dtype0�
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/814759*(
_output_shapes
:����������~
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:����������f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_1StridedSlicetriplesstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
embedding_lookup_1ResourceGatherembedding_lookup_1_814768strided_slice_1:output:0*
Tindices0*,
_class"
 loc:@embedding_lookup_1/814768*(
_output_shapes
:����������*
dtype0�
embedding_lookup_1/IdentityIdentityembedding_lookup_1:output:0*
T0*,
_class"
 loc:@embedding_lookup_1/814768*(
_output_shapes
:�����������
embedding_lookup_1/Identity_1Identity$embedding_lookup_1/Identity:output:0*
T0*(
_output_shapes
:����������f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_2StridedSlicetriplesstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask�
embedding_lookup_2ResourceGatherembedding_lookup_814759strided_slice_2:output:0*
Tindices0**
_class 
loc:@embedding_lookup/814759*(
_output_shapes
:����������*
dtype0�
embedding_lookup_2/IdentityIdentityembedding_lookup_2:output:0*
T0**
_class 
loc:@embedding_lookup/814759*(
_output_shapes
:�����������
embedding_lookup_2/Identity_1Identity$embedding_lookup_2/Identity:output:0*
T0*(
_output_shapes
:�����������
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_814759*!
_output_shapes
:��*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*!
_output_shapes
:���
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/y:output:0*
T0*!
_output_shapes
:���
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_1_814768*
_output_shapes
:	�*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes
:	��
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: t
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*(
_output_shapes
:����������x

Identity_1Identity&embedding_lookup_1/Identity_1:output:0^NoOp*
T0*(
_output_shapes
:����������x

Identity_2Identity&embedding_lookup_2/Identity_1:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^embedding_lookup^embedding_lookup_1^embedding_lookup_2\^scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp\^scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2$
embedding_lookupembedding_lookup2(
embedding_lookup_1embedding_lookup_12(
embedding_lookup_2embedding_lookup_22�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp2�
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:P L
'
_output_shapes
:���������
!
_user_specified_name	triples
�
L
__inference__creator_815508
identity: ��MutableDenseHashTableT
	empty_keyConst*
_output_shapes
: *
dtype0*
valueB :
���������V
deleted_keyConst*
_output_shapes
: *
dtype0*
valueB :
����������
MutableDenseHashTableMutableDenseHashTableV2empty_key:output:0deleted_key:output:0*
_output_shapes
: *
	key_dtype0*
shared_nametable_812440*
value_dtype0b
IdentityIdentity$MutableDenseHashTable:table_handle:0^NoOp*
T0*
_output_shapes
: ^
NoOpNoOp^MutableDenseHashTable*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2.
MutableDenseHashTableMutableDenseHashTable
�
�
>__inference_scoring_based_embedding_model_layer_call_fn_815106

inputs
unknown:��
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������*$
_read_only_resource_inputs
*.
config_proto

CPU

GPU2*0J � *b
f]R[
Y__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_814840k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�6
y
]__inference_corruption_generation_layer_train_layer_call_and_return_conditional_losses_815440
pos
identity�`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������]
ReshapeReshapeposReshape/shape:output:0*
T0*#
_output_shapes
:���������X
Tile/multiplesConst*
_output_shapes
:*
dtype0*
valueB:
e
TileTileReshape:output:0Tile/multiples:output:0*
T0*#
_output_shapes
:���������8
ShapeShapepos*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :
S
mulMulstrided_slice:output:0mul/y:output:0*
T0*
_output_shapes
: S
Reshape_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :j
Reshape_1/shapePackmul:z:0Reshape_1/shape/1:output:0*
N*
T0*
_output_shapes
:o
	Reshape_1ReshapeTile:output:0Reshape_1/shape:output:0*
T0*'
_output_shapes
:���������I
Shape_1ShapeReshape_1:output:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
random_uniform/shapePackstrided_slice_1:output:0*
N*
T0*
_output_shapes
:T
random_uniform/minConst*
_output_shapes
: *
dtype0*
value	B : T
random_uniform/maxConst*
_output_shapes
: *
dtype0*
value	B :�
random_uniformRandomUniformIntrandom_uniform/shape:output:0random_uniform/min:output:0random_uniform/max:output:0*
T0*

Tout0*#
_output_shapes
:���������*
seed2����b
CastCastrandom_uniform:output:0*

DstT0
*

SrcT0*#
_output_shapes
:���������G

LogicalNot
LogicalNotCast:y:0*#
_output_shapes
:���������U
Cast_1CastCast:y:0*

DstT0*

SrcT0
*#
_output_shapes
:���������[
Cast_2CastLogicalNot:y:0*

DstT0*

SrcT0
*#
_output_shapes
:���������I
Shape_2ShapeReshape_1:output:0*
T0*
_output_shapes
:_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape_2:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
random_uniform_1/shapePackstrided_slice_2:output:0*
N*
T0*
_output_shapes
:V
random_uniform_1/minConst*
_output_shapes
: *
dtype0*
value	B : X
random_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB	 :��
random_uniform_1RandomUniformIntrandom_uniform_1/shape:output:0random_uniform_1/min:output:0random_uniform_1/max:output:0*
T0*

Tout0*#
_output_shapes
:���������*
seed2����f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_3StridedSliceReshape_1:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask`
Mul_1Mul
Cast_1:y:0strided_slice_3:output:0*
T0*#
_output_shapes
:���������a
Mul_2Mul
Cast_2:y:0random_uniform_1:output:0*
T0*#
_output_shapes
:���������P
AddAddV2	Mul_1:z:0	Mul_2:z:0*
T0*#
_output_shapes
:���������f
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_4StridedSliceReshape_1:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_maskf
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_slice_5StridedSliceReshape_1:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask*
end_mask*
shrink_axis_mask`
Mul_3Mul
Cast_2:y:0strided_slice_5:output:0*
T0*#
_output_shapes
:���������a
Mul_4Mul
Cast_1:y:0random_uniform_1:output:0*
T0*#
_output_shapes
:���������R
Add_1AddV2	Mul_3:z:0	Mul_4:z:0*
T0*#
_output_shapes
:���������v
stackPackAdd:z:0strided_slice_4:output:0	Add_1:z:0*
N*
T0*'
_output_shapes
:���������_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       q
	transpose	Transposestack:output:0transpose/perm:output:0*
T0*'
_output_shapes
:���������U
IdentityIdentitytranspose:y:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:L H
'
_output_shapes
:���������

_user_specified_namepos
�/
�
Y__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_814840

inputs2
embedding_lookup_layer_814801:��0
embedding_lookup_layer_814803:	�
identity��.embedding_lookup_layer/StatefulPartitionedCall�[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp�[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp�
.embedding_lookup_layer/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_lookup_layer_814801embedding_lookup_layer_814803*
Tin
2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*$
_read_only_resource_inputs
*.
config_proto

CPU

GPU2*0J � *[
fVRT
R__inference_embedding_lookup_layer_layer_call_and_return_conditional_losses_814800�
TransE/PartitionedCallPartitionedCall7embedding_lookup_layer/StatefulPartitionedCall:output:07embedding_lookup_layer/StatefulPartitionedCall:output:17embedding_lookup_layer/StatefulPartitionedCall:output:2*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:���������* 
_read_only_resource_inputs
 *.
config_proto

CPU

GPU2*0J � *K
fFRD
B__inference_TransE_layer_call_and_return_conditional_losses_814821�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_layer_814801*!
_output_shapes
:��*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*!
_output_shapes
:���
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow/y:output:0*
T0*!
_output_shapes
:���
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
Lscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_layer_814803*
_output_shapes
:	�*
dtype0�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/AbsAbscscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  @@�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/PowPowPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs:y:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow/y:output:0*
T0*
_output_shapes
:	��
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/SumSumPscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Pow:z:0Wscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Const:output:0*
T0*
_output_shapes
: �
Nscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
Lscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mulMulWscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/mul/x:output:0Uscoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentityTransE/PartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:����������
NoOpNoOp/^embedding_lookup_layer/StatefulPartitionedCall\^scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp\^scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 2`
.embedding_lookup_layer/StatefulPartitionedCall.embedding_lookup_layer/StatefulPartitionedCall2�
[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/ent_emb/Regularizer/Abs/ReadVariableOp2�
[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp[scoring_based_embedding_model/embedding_lookup_layer/rel_emb/Regularizer/Abs/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
>__inference_scoring_based_embedding_model_layer_call_fn_815117

inputs
unknown:��
	unknown_0:	�
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:���������:���������*$
_read_only_resource_inputs
*.
config_proto

CPU

GPU2*0J � *b
f]R[
Y__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_814978k
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*#
_output_shapes
:���������m

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*#
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
;
input_10
serving_default_input_1:0���������8
output_1,
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
scoring_layer
	corruption_layer

encoding_layer
focusE_params
partitioner_metadata
mapping_dict

use_filter
	all_ranks

data_shape

_get_ranks

signatures"
_tf_keras_model
5
0
1
2"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
trace_0
trace_1
trace_2
trace_32�
>__inference_scoring_based_embedding_model_layer_call_fn_814847
>__inference_scoring_based_embedding_model_layer_call_fn_815106
>__inference_scoring_based_embedding_model_layer_call_fn_815117
>__inference_scoring_based_embedding_model_layer_call_fn_815004�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 ztrace_0ztrace_1ztrace_2ztrace_3
�
 trace_0
!trace_1
"trace_2
#trace_32�
Y__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_815170
Y__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_815312
Y__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_815032
Y__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_815068�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z trace_0z!trace_1z"trace_2z#trace_3
�B�
!__inference__wrapped_model_814745input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
�
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses"
_tf_keras_layer
�
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses
ent_emb
rel_emb"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
O
6_create_resource
7_initialize
8_destroy_resourceR Z
tableYZ
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
: 2Variable
�2��
���
FullArgSpec~
argsv�s
jself
jinputs

jent_embs

jstart_id
jend_id
	jfilters
jmapping_dict
jcorrupt_side
jranking_strategy
varargs
 
varkw
 
defaults�
js,o
jworst

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
,
9serving_default"
signature_map
Q:O��2<scoring_based_embedding_model/embedding_lookup_layer/ent_emb
O:M	�2<scoring_based_embedding_model/embedding_lookup_layer/rel_emb
�
:trace_02�
__inference_loss_fn_0_815341�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z:trace_0
�
;trace_02�
__inference_loss_fn_1_815354�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z;trace_0
'
0"
trackable_list_wrapper
5
0
	1

2"
trackable_list_wrapper
'
<0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
>__inference_scoring_based_embedding_model_layer_call_fn_814847input_1"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
>__inference_scoring_based_embedding_model_layer_call_fn_815106inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
>__inference_scoring_based_embedding_model_layer_call_fn_815117inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
>__inference_scoring_based_embedding_model_layer_call_fn_815004input_1"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Y__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_815170inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Y__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_815312inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Y__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_815032input_1"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Y__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_815068input_1"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
�
Btrace_02�
'__inference_TransE_layer_call_fn_815361�
���
FullArgSpec
args�
jself
	jtriples
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zBtrace_0
�
Ctrace_02�
B__inference_TransE_layer_call_and_return_conditional_losses_815374�
���
FullArgSpec
args�
jself
	jtriples
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zCtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Dnon_trainable_variables

Elayers
Fmetrics
Glayer_regularization_losses
Hlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
�
Itrace_02�
B__inference_corruption_generation_layer_train_layer_call_fn_815379�
���
FullArgSpec-
args%�"
jself
jpos

jent_size
jeta
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zItrace_0
�
Jtrace_02�
]__inference_corruption_generation_layer_train_layer_call_and_return_conditional_losses_815440�
���
FullArgSpec-
args%�"
jself
jpos

jent_size
jeta
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zJtrace_0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
�
Ptrace_02�
7__inference_embedding_lookup_layer_layer_call_fn_815453�
���
FullArgSpec
args�
jself
	jtriples
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zPtrace_0
�
Qtrace_02�
R__inference_embedding_lookup_layer_layer_call_and_return_conditional_losses_815501�
���
FullArgSpec
args�
jself
	jtriples
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zQtrace_0
�
Rtrace_02�
__inference__creator_815508�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� zRtrace_0
�
Strace_02�
__inference__initializer_815513�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� zStrace_0
�
Ttrace_02�
__inference__destroyer_815518�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� zTtrace_0
�B�
$__inference_signature_wrapper_815097input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_loss_fn_0_815341"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_1_815354"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
N
U	variables
V	keras_api
	Wtotal
	Xcount"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_TransE_layer_call_fn_815361	triples_0	triples_1	triples_2"�
���
FullArgSpec
args�
jself
	jtriples
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_TransE_layer_call_and_return_conditional_losses_815374	triples_0	triples_1	triples_2"�
���
FullArgSpec
args�
jself
	jtriples
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
B__inference_corruption_generation_layer_train_layer_call_fn_815379pos"�
���
FullArgSpec-
args%�"
jself
jpos

jent_size
jeta
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
]__inference_corruption_generation_layer_train_layer_call_and_return_conditional_losses_815440pos"�
���
FullArgSpec-
args%�"
jself
jpos

jent_size
jeta
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
7__inference_embedding_lookup_layer_layer_call_fn_815453triples"�
���
FullArgSpec
args�
jself
	jtriples
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
R__inference_embedding_lookup_layer_layer_call_and_return_conditional_losses_815501triples"�
���
FullArgSpec
args�
jself
	jtriples
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference__creator_815508"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__initializer_815513"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference__destroyer_815518"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
.
W0
X1"
trackable_list_wrapper
-
U	variables"
_generic_user_object
:  (2total
:  (2count
�B�
__inference_save_fn_815537checkpoint_key"�
���
FullArgSpec
args�
jcheckpoint_key
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�	
� 
�B�
__inference_restore_fn_815546restored_tensors_0restored_tensors_1"�
���
FullArgSpec
args� 
varargsjrestored_tensors
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�
	�
	��
B__inference_TransE_layer_call_and_return_conditional_losses_815374����
z�w
u�r
$�!
	triples_0����������
$�!
	triples_1����������
$�!
	triples_2����������
� "(�%
�
tensor_0���������
� �
'__inference_TransE_layer_call_fn_815361����
z�w
u�r
$�!
	triples_0����������
$�!
	triples_1����������
$�!
	triples_2����������
� "�
unknown���������@
__inference__creator_815508!�

� 
� "�
unknown B
__inference__destroyer_815518!�

� 
� "�
unknown D
__inference__initializer_815513!�

� 
� "�
unknown �
!__inference__wrapped_model_814745g0�-
&�#
!�
input_1���������
� "/�,
*
output_1�
output_1����������
]__inference_corruption_generation_layer_train_layer_call_and_return_conditional_losses_815440f6�3
,�)
�
pos���������
`��
`
� ",�)
"�
tensor_0���������
� �
B__inference_corruption_generation_layer_train_layer_call_fn_815379[6�3
,�)
�
pos���������
`��
`
� "!�
unknown����������
R__inference_embedding_lookup_layer_layer_call_and_return_conditional_losses_815501�0�-
&�#
!�
triples���������
� "��
x�u
%�"

tensor_0_0����������
%�"

tensor_0_1����������
%�"

tensor_0_2����������
� �
7__inference_embedding_lookup_layer_layer_call_fn_815453�0�-
&�#
!�
triples���������
� "r�o
#� 
tensor_0����������
#� 
tensor_1����������
#� 
tensor_2����������D
__inference_loss_fn_0_815341$�

� 
� "�
unknown D
__inference_loss_fn_1_815354$�

� 
� "�
unknown �
__inference_restore_fn_815546bK�H
A�>
�
restored_tensors_0
�
restored_tensors_1
� "�
unknown �
__inference_save_fn_815537�&�#
�
�
checkpoint_key 
� "���
u�r

name�
tensor_0_name 
*

slice_spec�
tensor_0_slice_spec 
$
tensor�
tensor_0_tensor
u�r

name�
tensor_1_name 
*

slice_spec�
tensor_1_slice_spec 
$
tensor�
tensor_1_tensor�
Y__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_815032d4�1
*�'
!�
input_1���������
p 
� "(�%
�
tensor_0���������
� �
Y__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_815068�4�1
*�'
!�
input_1���������
p
� "Q�N
G�D
 �

tensor_0_0���������
 �

tensor_0_1���������
� �
Y__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_815170c3�0
)�&
 �
inputs���������
p 
� "(�%
�
tensor_0���������
� �
Y__inference_scoring_based_embedding_model_layer_call_and_return_conditional_losses_815312�3�0
)�&
 �
inputs���������
p
� "Q�N
G�D
 �

tensor_0_0���������
 �

tensor_0_1���������
� �
>__inference_scoring_based_embedding_model_layer_call_fn_814847Y4�1
*�'
!�
input_1���������
p 
� "�
unknown����������
>__inference_scoring_based_embedding_model_layer_call_fn_8150044�1
*�'
!�
input_1���������
p
� "C�@
�
tensor_0���������
�
tensor_1����������
>__inference_scoring_based_embedding_model_layer_call_fn_815106X3�0
)�&
 �
inputs���������
p 
� "�
unknown����������
>__inference_scoring_based_embedding_model_layer_call_fn_815117~3�0
)�&
 �
inputs���������
p
� "C�@
�
tensor_0���������
�
tensor_1����������
$__inference_signature_wrapper_815097r;�8
� 
1�.
,
input_1!�
input_1���������"/�,
*
output_1�
output_1���������