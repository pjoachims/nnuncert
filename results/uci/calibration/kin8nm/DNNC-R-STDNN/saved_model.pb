╧╩
нГ
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
╛
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
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.5.02v2.5.0-0-ga4dfb8d1a718ЦХ
x
mean_-1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*
shared_namemean_-1/kernel
q
"mean_-1/kernel/Read/ReadVariableOpReadVariableOpmean_-1/kernel*
_output_shapes

:2*
dtype0
p
mean_-1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namemean_-1/bias
i
 mean_-1/bias/Read/ReadVariableOpReadVariableOpmean_-1/bias*
_output_shapes
:2*
dtype0
r
mean/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*
shared_namemean/kernel
k
mean/kernel/Read/ReadVariableOpReadVariableOpmean/kernel*
_output_shapes

:2*
dtype0
j
	mean/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	mean/bias
c
mean/bias/Read/ReadVariableOpReadVariableOp	mean/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
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
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
Ж
Adam/mean_-1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/mean_-1/kernel/m

)Adam/mean_-1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/mean_-1/kernel/m*
_output_shapes

:2*
dtype0
~
Adam/mean_-1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/mean_-1/bias/m
w
'Adam/mean_-1/bias/m/Read/ReadVariableOpReadVariableOpAdam/mean_-1/bias/m*
_output_shapes
:2*
dtype0
А
Adam/mean/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*#
shared_nameAdam/mean/kernel/m
y
&Adam/mean/kernel/m/Read/ReadVariableOpReadVariableOpAdam/mean/kernel/m*
_output_shapes

:2*
dtype0
x
Adam/mean/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/mean/bias/m
q
$Adam/mean/bias/m/Read/ReadVariableOpReadVariableOpAdam/mean/bias/m*
_output_shapes
:*
dtype0
Ж
Adam/mean_-1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*&
shared_nameAdam/mean_-1/kernel/v

)Adam/mean_-1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/mean_-1/kernel/v*
_output_shapes

:2*
dtype0
~
Adam/mean_-1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*$
shared_nameAdam/mean_-1/bias/v
w
'Adam/mean_-1/bias/v/Read/ReadVariableOpReadVariableOpAdam/mean_-1/bias/v*
_output_shapes
:2*
dtype0
А
Adam/mean/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*#
shared_nameAdam/mean/kernel/v
y
&Adam/mean/kernel/v/Read/ReadVariableOpReadVariableOpAdam/mean/kernel/v*
_output_shapes

:2*
dtype0
x
Adam/mean/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/mean/bias/v
q
$Adam/mean/bias/v/Read/ReadVariableOpReadVariableOpAdam/mean/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
Ё#
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*л#
valueб#BЮ# BЧ#
К
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
_model_paras
comp_args_kw
	optimizer
		variables

trainable_variables
regularization_losses
	keras_api

signatures
 
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api

"J

#1
И
$iter

%beta_1

&beta_2
	'decay
(learning_ratemTmUmVmWvXvYvZv[

0
1
2
3

0
1
2
3
 
н
		variables
)metrics

trainable_variables
regularization_losses
*non_trainable_variables
+layer_regularization_losses

,layers
-layer_metrics
 
 
 
 
н
	variables
.metrics
trainable_variables
regularization_losses
/non_trainable_variables
0layer_regularization_losses

1layers
2layer_metrics
ZX
VARIABLE_VALUEmean_-1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEmean_-1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
н
	variables
3metrics
trainable_variables
regularization_losses
4non_trainable_variables
5layer_regularization_losses

6layers
7layer_metrics
 
 
 
н
	variables
8metrics
trainable_variables
regularization_losses
9non_trainable_variables
:layer_regularization_losses

;layers
<layer_metrics
WU
VARIABLE_VALUEmean/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	mean/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
н
	variables
=metrics
trainable_variables
 regularization_losses
>non_trainable_variables
?layer_regularization_losses

@layers
Alayer_metrics
 

	optimizer
Bmetrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

C0
D1
E2
 
 
#
0
1
2
3
4
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	Ftotal
	Gcount
H	variables
I	keras_api
D
	Jtotal
	Kcount
L
_fn_kwargs
M	variables
N	keras_api
D
	Ototal
	Pcount
Q
_fn_kwargs
R	variables
S	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

F0
G1

H	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

J0
K1

M	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE
 

O0
P1

R	variables
}{
VARIABLE_VALUEAdam/mean_-1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/mean_-1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/mean/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/mean/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/mean_-1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/mean_-1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/mean/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/mean/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
x
serving_default_inputPlaceholder*'
_output_shapes
:         *
dtype0*
shape:         
Ё
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputmean_-1/kernelmean_-1/biasmean/kernel	mean/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *,
f'R%
#__inference_signature_wrapper_98334
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
╤
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"mean_-1/kernel/Read/ReadVariableOp mean_-1/bias/Read/ReadVariableOpmean/kernel/Read/ReadVariableOpmean/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOp)Adam/mean_-1/kernel/m/Read/ReadVariableOp'Adam/mean_-1/bias/m/Read/ReadVariableOp&Adam/mean/kernel/m/Read/ReadVariableOp$Adam/mean/bias/m/Read/ReadVariableOp)Adam/mean_-1/kernel/v/Read/ReadVariableOp'Adam/mean_-1/bias/v/Read/ReadVariableOp&Adam/mean/kernel/v/Read/ReadVariableOp$Adam/mean/bias/v/Read/ReadVariableOpConst*$
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *'
f"R 
__inference__traced_save_98565
А
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemean_-1/kernelmean_-1/biasmean/kernel	mean/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1total_2count_2Adam/mean_-1/kernel/mAdam/mean_-1/bias/mAdam/mean/kernel/mAdam/mean/bias/mAdam/mean_-1/kernel/vAdam/mean_-1/bias/vAdam/mean/kernel/vAdam/mean/bias/v*#
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__traced_restore_98644В╖
у
╛
G__inference_dnnc_ridge_8_layer_call_and_return_conditional_losses_98353

inputs8
&mean__1_matmul_readvariableop_resource:25
'mean__1_biasadd_readvariableop_resource:25
#mean_matmul_readvariableop_resource:22
$mean_biasadd_readvariableop_resource:
identityИвmean/BiasAdd/ReadVariableOpвmean/MatMul/ReadVariableOpвmean_-1/BiasAdd/ReadVariableOpвmean_-1/MatMul/ReadVariableOpr
dropout_146/IdentityIdentityinputs*
T0*'
_output_shapes
:         2
dropout_146/Identityе
mean_-1/MatMul/ReadVariableOpReadVariableOp&mean__1_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
mean_-1/MatMul/ReadVariableOpв
mean_-1/MatMulMatMuldropout_146/Identity:output:0%mean_-1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         22
mean_-1/MatMulд
mean_-1/BiasAdd/ReadVariableOpReadVariableOp'mean__1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02 
mean_-1/BiasAdd/ReadVariableOpб
mean_-1/BiasAddBiasAddmean_-1/MatMul:product:0&mean_-1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         22
mean_-1/BiasAddp
mean_-1/ReluRelumean_-1/BiasAdd:output:0*
T0*'
_output_shapes
:         22
mean_-1/ReluЖ
dropout_147/IdentityIdentitymean_-1/Relu:activations:0*
T0*'
_output_shapes
:         22
dropout_147/IdentityЬ
mean/MatMul/ReadVariableOpReadVariableOp#mean_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
mean/MatMul/ReadVariableOpЩ
mean/MatMulMatMuldropout_147/Identity:output:0"mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
mean/MatMulЫ
mean/BiasAdd/ReadVariableOpReadVariableOp$mean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
mean/BiasAdd/ReadVariableOpХ
mean/BiasAddBiasAddmean/MatMul:product:0#mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
mean/BiasAddх
IdentityIdentitymean/BiasAdd:output:0^mean/BiasAdd/ReadVariableOp^mean/MatMul/ReadVariableOp^mean_-1/BiasAdd/ReadVariableOp^mean_-1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2:
mean/BiasAdd/ReadVariableOpmean/BiasAdd/ReadVariableOp28
mean/MatMul/ReadVariableOpmean/MatMul/ReadVariableOp2@
mean_-1/BiasAdd/ReadVariableOpmean_-1/BiasAdd/ReadVariableOp2>
mean_-1/MatMul/ReadVariableOpmean_-1/MatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
┐b
ї
!__inference__traced_restore_98644
file_prefix1
assignvariableop_mean__1_kernel:2-
assignvariableop_1_mean__1_bias:20
assignvariableop_2_mean_kernel:2*
assignvariableop_3_mean_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: "
assignvariableop_9_total: #
assignvariableop_10_count: %
assignvariableop_11_total_1: %
assignvariableop_12_count_1: %
assignvariableop_13_total_2: %
assignvariableop_14_count_2: ;
)assignvariableop_15_adam_mean__1_kernel_m:25
'assignvariableop_16_adam_mean__1_bias_m:28
&assignvariableop_17_adam_mean_kernel_m:22
$assignvariableop_18_adam_mean_bias_m:;
)assignvariableop_19_adam_mean__1_kernel_v:25
'assignvariableop_20_adam_mean__1_bias_v:28
&assignvariableop_21_adam_mean_kernel_v:22
$assignvariableop_22_adam_mean_bias_v:
identity_24ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9─
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╨
value╞B├B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names╛
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*C
value:B8B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesг
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*t
_output_shapesb
`::::::::::::::::::::::::*&
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЮ
AssignVariableOpAssignVariableOpassignvariableop_mean__1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1д
AssignVariableOp_1AssignVariableOpassignvariableop_1_mean__1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2г
AssignVariableOp_2AssignVariableOpassignvariableop_2_mean_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3б
AssignVariableOp_3AssignVariableOpassignvariableop_3_mean_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_4б
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5г
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6г
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7в
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8к
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Э
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10б
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11г
AssignVariableOp_11AssignVariableOpassignvariableop_11_total_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12г
AssignVariableOp_12AssignVariableOpassignvariableop_12_count_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13г
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_2Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14г
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15▒
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_mean__1_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16п
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_mean__1_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17о
AssignVariableOp_17AssignVariableOp&assignvariableop_17_adam_mean_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18м
AssignVariableOp_18AssignVariableOp$assignvariableop_18_adam_mean_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19▒
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_mean__1_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20п
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_mean__1_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21о
AssignVariableOp_21AssignVariableOp&assignvariableop_21_adam_mean_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22м
AssignVariableOp_22AssignVariableOp$assignvariableop_22_adam_mean_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_229
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp╪
Identity_23Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_23╦
Identity_24IdentityIdentity_23:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_24"#
identity_24Identity_24:output:0*C
_input_shapes2
0: : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
▌
Ь
G__inference_dnnc_ridge_8_layer_call_and_return_conditional_losses_98313	
input
mean__1_98301:2
mean__1_98303:2

mean_98307:2

mean_98309:
identityИвmean/StatefulPartitionedCallвmean_-1/StatefulPartitionedCall▐
dropout_146/PartitionedCallPartitionedCallinput*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_146_layer_call_and_return_conditional_losses_982232
dropout_146/PartitionedCallн
mean_-1/StatefulPartitionedCallStatefulPartitionedCall$dropout_146/PartitionedCall:output:0mean__1_98301mean__1_98303*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_mean_-1_layer_call_and_return_conditional_losses_981352!
mean_-1/StatefulPartitionedCallБ
dropout_147/PartitionedCallPartitionedCall(mean_-1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_147_layer_call_and_return_conditional_losses_981982
dropout_147/PartitionedCallЮ
mean/StatefulPartitionedCallStatefulPartitionedCall$dropout_147/PartitionedCall:output:0
mean_98307
mean_98309*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_mean_layer_call_and_return_conditional_losses_981582
mean/StatefulPartitionedCall║
IdentityIdentity%mean/StatefulPartitionedCall:output:0^mean/StatefulPartitionedCall ^mean_-1/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2<
mean/StatefulPartitionedCallmean/StatefulPartitionedCall2B
mean_-1/StatefulPartitionedCallmean_-1/StatefulPartitionedCall:N J
'
_output_shapes
:         

_user_specified_nameinput
к

є
B__inference_mean_-1_layer_call_and_return_conditional_losses_98435

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         22
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         22	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         22
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ъ
Ф
'__inference_mean_-1_layer_call_fn_98424

inputs
unknown:2
	unknown_0:2
identityИвStatefulPartitionedCallї
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_mean_-1_layer_call_and_return_conditional_losses_981352
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
є
d
F__inference_dropout_146_layer_call_and_return_conditional_losses_98411

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:         2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
├
G
+__inference_dropout_147_layer_call_fn_98445

inputs
identity╟
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_147_layer_call_and_return_conditional_losses_981982
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         2:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
В
b
F__inference_dropout_146_layer_call_and_return_conditional_losses_98415

inputs
identityZ
IdentityIdentityinputs*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
є
d
F__inference_dropout_147_layer_call_and_return_conditional_losses_98450

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:         22

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         22

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         2:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
├
G
+__inference_dropout_147_layer_call_fn_98440

inputs
identity╟
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_147_layer_call_and_return_conditional_losses_981462
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         2:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
ї
╬
,__inference_dnnc_ridge_8_layer_call_fn_98176	
input
unknown:2
	unknown_0:2
	unknown_1:2
	unknown_2:
identityИвStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_dnnc_ridge_8_layer_call_and_return_conditional_losses_981652
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:         

_user_specified_nameinput
°
╧
,__inference_dnnc_ridge_8_layer_call_fn_98383

inputs
unknown:2
	unknown_0:2
	unknown_1:2
	unknown_2:
identityИвStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_dnnc_ridge_8_layer_call_and_return_conditional_losses_981652
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
є
d
F__inference_dropout_146_layer_call_and_return_conditional_losses_98122

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:         2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
р
Э
G__inference_dnnc_ridge_8_layer_call_and_return_conditional_losses_98257

inputs
mean__1_98245:2
mean__1_98247:2

mean_98251:2

mean_98253:
identityИвmean/StatefulPartitionedCallвmean_-1/StatefulPartitionedCall▀
dropout_146/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_146_layer_call_and_return_conditional_losses_982232
dropout_146/PartitionedCallн
mean_-1/StatefulPartitionedCallStatefulPartitionedCall$dropout_146/PartitionedCall:output:0mean__1_98245mean__1_98247*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_mean_-1_layer_call_and_return_conditional_losses_981352!
mean_-1/StatefulPartitionedCallБ
dropout_147/PartitionedCallPartitionedCall(mean_-1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_147_layer_call_and_return_conditional_losses_981982
dropout_147/PartitionedCallЮ
mean/StatefulPartitionedCallStatefulPartitionedCall$dropout_147/PartitionedCall:output:0
mean_98251
mean_98253*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_mean_layer_call_and_return_conditional_losses_981582
mean/StatefulPartitionedCall║
IdentityIdentity%mean/StatefulPartitionedCall:output:0^mean/StatefulPartitionedCall ^mean_-1/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2<
mean/StatefulPartitionedCallmean/StatefulPartitionedCall2B
mean_-1/StatefulPartitionedCallmean_-1/StatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
є
d
F__inference_dropout_147_layer_call_and_return_conditional_losses_98146

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:         22

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:         22

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         2:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
╦	
Ё
?__inference_mean_layer_call_and_return_conditional_losses_98158

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
╦	
Ё
?__inference_mean_layer_call_and_return_conditional_losses_98473

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
к

є
B__inference_mean_-1_layer_call_and_return_conditional_losses_98135

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:2
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         22
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         22	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:         22
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:         22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
а
■
 __inference__wrapped_model_98110	
inputE
3dnnc_ridge_8_mean__1_matmul_readvariableop_resource:2B
4dnnc_ridge_8_mean__1_biasadd_readvariableop_resource:2B
0dnnc_ridge_8_mean_matmul_readvariableop_resource:2?
1dnnc_ridge_8_mean_biasadd_readvariableop_resource:
identityИв(dnnc_ridge_8/mean/BiasAdd/ReadVariableOpв'dnnc_ridge_8/mean/MatMul/ReadVariableOpв+dnnc_ridge_8/mean_-1/BiasAdd/ReadVariableOpв*dnnc_ridge_8/mean_-1/MatMul/ReadVariableOpЛ
!dnnc_ridge_8/dropout_146/IdentityIdentityinput*
T0*'
_output_shapes
:         2#
!dnnc_ridge_8/dropout_146/Identity╠
*dnnc_ridge_8/mean_-1/MatMul/ReadVariableOpReadVariableOp3dnnc_ridge_8_mean__1_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02,
*dnnc_ridge_8/mean_-1/MatMul/ReadVariableOp╓
dnnc_ridge_8/mean_-1/MatMulMatMul*dnnc_ridge_8/dropout_146/Identity:output:02dnnc_ridge_8/mean_-1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         22
dnnc_ridge_8/mean_-1/MatMul╦
+dnnc_ridge_8/mean_-1/BiasAdd/ReadVariableOpReadVariableOp4dnnc_ridge_8_mean__1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02-
+dnnc_ridge_8/mean_-1/BiasAdd/ReadVariableOp╒
dnnc_ridge_8/mean_-1/BiasAddBiasAdd%dnnc_ridge_8/mean_-1/MatMul:product:03dnnc_ridge_8/mean_-1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         22
dnnc_ridge_8/mean_-1/BiasAddЧ
dnnc_ridge_8/mean_-1/ReluRelu%dnnc_ridge_8/mean_-1/BiasAdd:output:0*
T0*'
_output_shapes
:         22
dnnc_ridge_8/mean_-1/Reluн
!dnnc_ridge_8/dropout_147/IdentityIdentity'dnnc_ridge_8/mean_-1/Relu:activations:0*
T0*'
_output_shapes
:         22#
!dnnc_ridge_8/dropout_147/Identity├
'dnnc_ridge_8/mean/MatMul/ReadVariableOpReadVariableOp0dnnc_ridge_8_mean_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02)
'dnnc_ridge_8/mean/MatMul/ReadVariableOp═
dnnc_ridge_8/mean/MatMulMatMul*dnnc_ridge_8/dropout_147/Identity:output:0/dnnc_ridge_8/mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dnnc_ridge_8/mean/MatMul┬
(dnnc_ridge_8/mean/BiasAdd/ReadVariableOpReadVariableOp1dnnc_ridge_8_mean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(dnnc_ridge_8/mean/BiasAdd/ReadVariableOp╔
dnnc_ridge_8/mean/BiasAddBiasAdd"dnnc_ridge_8/mean/MatMul:product:00dnnc_ridge_8/mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
dnnc_ridge_8/mean/BiasAddж
IdentityIdentity"dnnc_ridge_8/mean/BiasAdd:output:0)^dnnc_ridge_8/mean/BiasAdd/ReadVariableOp(^dnnc_ridge_8/mean/MatMul/ReadVariableOp,^dnnc_ridge_8/mean_-1/BiasAdd/ReadVariableOp+^dnnc_ridge_8/mean_-1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2T
(dnnc_ridge_8/mean/BiasAdd/ReadVariableOp(dnnc_ridge_8/mean/BiasAdd/ReadVariableOp2R
'dnnc_ridge_8/mean/MatMul/ReadVariableOp'dnnc_ridge_8/mean/MatMul/ReadVariableOp2Z
+dnnc_ridge_8/mean_-1/BiasAdd/ReadVariableOp+dnnc_ridge_8/mean_-1/BiasAdd/ReadVariableOp2X
*dnnc_ridge_8/mean_-1/MatMul/ReadVariableOp*dnnc_ridge_8/mean_-1/MatMul/ReadVariableOp:N J
'
_output_shapes
:         

_user_specified_nameinput
В
b
F__inference_dropout_146_layer_call_and_return_conditional_losses_98223

inputs
identityZ
IdentityIdentityinputs*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
°
╧
,__inference_dnnc_ridge_8_layer_call_fn_98396

inputs
unknown:2
	unknown_0:2
	unknown_1:2
	unknown_2:
identityИвStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_dnnc_ridge_8_layer_call_and_return_conditional_losses_982572
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
▌
Ь
G__inference_dnnc_ridge_8_layer_call_and_return_conditional_losses_98297	
input
mean__1_98285:2
mean__1_98287:2

mean_98291:2

mean_98293:
identityИвmean/StatefulPartitionedCallвmean_-1/StatefulPartitionedCall▐
dropout_146/PartitionedCallPartitionedCallinput*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_146_layer_call_and_return_conditional_losses_981222
dropout_146/PartitionedCallн
mean_-1/StatefulPartitionedCallStatefulPartitionedCall$dropout_146/PartitionedCall:output:0mean__1_98285mean__1_98287*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_mean_-1_layer_call_and_return_conditional_losses_981352!
mean_-1/StatefulPartitionedCallБ
dropout_147/PartitionedCallPartitionedCall(mean_-1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_147_layer_call_and_return_conditional_losses_981462
dropout_147/PartitionedCallЮ
mean/StatefulPartitionedCallStatefulPartitionedCall$dropout_147/PartitionedCall:output:0
mean_98291
mean_98293*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_mean_layer_call_and_return_conditional_losses_981582
mean/StatefulPartitionedCall║
IdentityIdentity%mean/StatefulPartitionedCall:output:0^mean/StatefulPartitionedCall ^mean_-1/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2<
mean/StatefulPartitionedCallmean/StatefulPartitionedCall2B
mean_-1/StatefulPartitionedCallmean_-1/StatefulPartitionedCall:N J
'
_output_shapes
:         

_user_specified_nameinput
Г5
Е	
__inference__traced_save_98565
file_prefix-
)savev2_mean__1_kernel_read_readvariableop+
'savev2_mean__1_bias_read_readvariableop*
&savev2_mean_kernel_read_readvariableop(
$savev2_mean_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop4
0savev2_adam_mean__1_kernel_m_read_readvariableop2
.savev2_adam_mean__1_bias_m_read_readvariableop1
-savev2_adam_mean_kernel_m_read_readvariableop/
+savev2_adam_mean_bias_m_read_readvariableop4
0savev2_adam_mean__1_kernel_v_read_readvariableop2
.savev2_adam_mean__1_bias_v_read_readvariableop1
-savev2_adam_mean_kernel_v_read_readvariableop/
+savev2_adam_mean_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename╛
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╨
value╞B├B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names╕
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*C
value:B8B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesП	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_mean__1_kernel_read_readvariableop'savev2_mean__1_bias_read_readvariableop&savev2_mean_kernel_read_readvariableop$savev2_mean_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop0savev2_adam_mean__1_kernel_m_read_readvariableop.savev2_adam_mean__1_bias_m_read_readvariableop-savev2_adam_mean_kernel_m_read_readvariableop+savev2_adam_mean_bias_m_read_readvariableop0savev2_adam_mean__1_kernel_v_read_readvariableop.savev2_adam_mean__1_bias_v_read_readvariableop-savev2_adam_mean_kernel_v_read_readvariableop+savev2_adam_mean_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *&
dtypes
2	2
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*Н
_input_shapes|
z: :2:2:2:: : : : : : : : : : : :2:2:2::2:2:2:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::$ 

_output_shapes

:2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::

_output_shapes
: 
В
b
F__inference_dropout_147_layer_call_and_return_conditional_losses_98454

inputs
identityZ
IdentityIdentityinputs*
T0*'
_output_shapes
:         22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         2:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
р
Э
G__inference_dnnc_ridge_8_layer_call_and_return_conditional_losses_98165

inputs
mean__1_98136:2
mean__1_98138:2

mean_98159:2

mean_98161:
identityИвmean/StatefulPartitionedCallвmean_-1/StatefulPartitionedCall▀
dropout_146/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_146_layer_call_and_return_conditional_losses_981222
dropout_146/PartitionedCallн
mean_-1/StatefulPartitionedCallStatefulPartitionedCall$dropout_146/PartitionedCall:output:0mean__1_98136mean__1_98138*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_mean_-1_layer_call_and_return_conditional_losses_981352!
mean_-1/StatefulPartitionedCallБ
dropout_147/PartitionedCallPartitionedCall(mean_-1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_147_layer_call_and_return_conditional_losses_981462
dropout_147/PartitionedCallЮ
mean/StatefulPartitionedCallStatefulPartitionedCall$dropout_147/PartitionedCall:output:0
mean_98159
mean_98161*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_mean_layer_call_and_return_conditional_losses_981582
mean/StatefulPartitionedCall║
IdentityIdentity%mean/StatefulPartitionedCall:output:0^mean/StatefulPartitionedCall ^mean_-1/StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2<
mean/StatefulPartitionedCallmean/StatefulPartitionedCall2B
mean_-1/StatefulPartitionedCallmean_-1/StatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
ї
╬
,__inference_dnnc_ridge_8_layer_call_fn_98281	
input
unknown:2
	unknown_0:2
	unknown_1:2
	unknown_2:
identityИвStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_dnnc_ridge_8_layer_call_and_return_conditional_losses_982572
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:         

_user_specified_nameinput
╠
╛
G__inference_dnnc_ridge_8_layer_call_and_return_conditional_losses_98370

inputs8
&mean__1_matmul_readvariableop_resource:25
'mean__1_biasadd_readvariableop_resource:25
#mean_matmul_readvariableop_resource:22
$mean_biasadd_readvariableop_resource:
identityИвmean/BiasAdd/ReadVariableOpвmean/MatMul/ReadVariableOpвmean_-1/BiasAdd/ReadVariableOpвmean_-1/MatMul/ReadVariableOpе
mean_-1/MatMul/ReadVariableOpReadVariableOp&mean__1_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
mean_-1/MatMul/ReadVariableOpЛ
mean_-1/MatMulMatMulinputs%mean_-1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         22
mean_-1/MatMulд
mean_-1/BiasAdd/ReadVariableOpReadVariableOp'mean__1_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02 
mean_-1/BiasAdd/ReadVariableOpб
mean_-1/BiasAddBiasAddmean_-1/MatMul:product:0&mean_-1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         22
mean_-1/BiasAddp
mean_-1/ReluRelumean_-1/BiasAdd:output:0*
T0*'
_output_shapes
:         22
mean_-1/ReluЬ
mean/MatMul/ReadVariableOpReadVariableOp#mean_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
mean/MatMul/ReadVariableOpЦ
mean/MatMulMatMulmean_-1/Relu:activations:0"mean/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
mean/MatMulЫ
mean/BiasAdd/ReadVariableOpReadVariableOp$mean_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
mean/BiasAdd/ReadVariableOpХ
mean/BiasAddBiasAddmean/MatMul:product:0#mean/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2
mean/BiasAddх
IdentityIdentitymean/BiasAdd:output:0^mean/BiasAdd/ReadVariableOp^mean/MatMul/ReadVariableOp^mean_-1/BiasAdd/ReadVariableOp^mean_-1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 2:
mean/BiasAdd/ReadVariableOpmean/BiasAdd/ReadVariableOp28
mean/MatMul/ReadVariableOpmean/MatMul/ReadVariableOp2@
mean_-1/BiasAdd/ReadVariableOpmean_-1/BiasAdd/ReadVariableOp2>
mean_-1/MatMul/ReadVariableOpmean_-1/MatMul/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
├
G
+__inference_dropout_146_layer_call_fn_98406

inputs
identity╟
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_146_layer_call_and_return_conditional_losses_982232
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
┼
┼
#__inference_signature_wrapper_98334	
input
unknown:2
	unknown_0:2
	unknown_1:2
	unknown_2:
identityИвStatefulPartitionedCallь
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference__wrapped_model_981102
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:         

_user_specified_nameinput
Ф
С
$__inference_mean_layer_call_fn_98463

inputs
unknown:2
	unknown_0:
identityИвStatefulPartitionedCallЄ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *H
fCRA
?__inference_mean_layer_call_and_return_conditional_losses_981582
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
├
G
+__inference_dropout_146_layer_call_fn_98401

inputs
identity╟
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_dropout_146_layer_call_and_return_conditional_losses_981222
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs
В
b
F__inference_dropout_147_layer_call_and_return_conditional_losses_98198

inputs
identityZ
IdentityIdentityinputs*
T0*'
_output_shapes
:         22

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:         2:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs"╠L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*г
serving_defaultП
7
input.
serving_default_input:0         8
mean0
StatefulPartitionedCall:0         tensorflow/serving/predict:ме
ж*
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
_model_paras
comp_args_kw
	optimizer
		variables

trainable_variables
regularization_losses
	keras_api

signatures
*\&call_and_return_all_conditional_losses
]__call__
^_default_save_signature"┬'
_tf_keras_networkж'{"name": "dnnc_ridge_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "DNNCRidge", "config": {"name": "dnnc_ridge_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}, "name": "input", "inbound_nodes": []}, {"class_name": "Dropout", "config": {"name": "dropout_146", "trainable": true, "dtype": "float32", "rate": 0, "noise_shape": null, "seed": null}, "name": "dropout_146", "inbound_nodes": [[["input", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "mean_-1", "trainable": true, "dtype": "float32", "units": 50, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "mean_-1", "inbound_nodes": [[["dropout_146", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_147", "trainable": true, "dtype": "float32", "rate": 0, "noise_shape": null, "seed": null}, "name": "dropout_147", "inbound_nodes": [[["mean_-1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "mean", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "mean", "inbound_nodes": [[["dropout_147", 0, 0, {}]]]}], "input_layers": [["input", 0, 0]], "output_layers": [["mean", 0, 0]]}, "shared_object_id": 9, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 8]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 8]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 8]}, "float32", "input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "DNNCRidge", "config": {"name": "dnnc_ridge_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}, "name": "input", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Dropout", "config": {"name": "dropout_146", "trainable": true, "dtype": "float32", "rate": 0, "noise_shape": null, "seed": null}, "name": "dropout_146", "inbound_nodes": [[["input", 0, 0, {}]]], "shared_object_id": 1}, {"class_name": "Dense", "config": {"name": "mean_-1", "trainable": true, "dtype": "float32", "units": 50, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "mean_-1", "inbound_nodes": [[["dropout_146", 0, 0, {}]]], "shared_object_id": 4}, {"class_name": "Dropout", "config": {"name": "dropout_147", "trainable": true, "dtype": "float32", "rate": 0, "noise_shape": null, "seed": null}, "name": "dropout_147", "inbound_nodes": [[["mean_-1", 0, 0, {}]]], "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "mean", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "mean", "inbound_nodes": [[["dropout_147", 0, 0, {}]]], "shared_object_id": 8}], "input_layers": [["input", 0, 0]], "output_layers": [["mean", 0, 0]]}}, "training_config": {"loss": "mse", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "mae", "dtype": "float32", "fn": "mean_absolute_error"}, "shared_object_id": 11}, {"class_name": "MeanMetricWrapper", "config": {"name": "mse", "dtype": "float32", "fn": "mean_squared_error"}, "shared_object_id": 12}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.009999999776482582, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
х"т
_tf_keras_input_layer┬{"class_name": "InputLayer", "name": "input", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 8]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input"}}
и
	variables
trainable_variables
regularization_losses
	keras_api
___call__
*`&call_and_return_all_conditional_losses"Щ
_tf_keras_layer {"name": "dropout_146", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_146", "trainable": true, "dtype": "float32", "rate": 0, "noise_shape": null, "seed": null}, "inbound_nodes": [[["input", 0, 0, {}]]], "shared_object_id": 1}
√

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
a__call__
*b&call_and_return_all_conditional_losses"╓
_tf_keras_layer╝{"name": "mean_-1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "mean_-1", "trainable": true, "dtype": "float32", "units": 50, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dropout_146", 0, 0, {}]]], "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 8}}, "shared_object_id": 13}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8]}}
к
	variables
trainable_variables
regularization_losses
	keras_api
c__call__
*d&call_and_return_all_conditional_losses"Ы
_tf_keras_layerБ{"name": "dropout_147", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_147", "trainable": true, "dtype": "float32", "rate": 0, "noise_shape": null, "seed": null}, "inbound_nodes": [[["mean_-1", 0, 0, {}]]], "shared_object_id": 5}
°

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
e__call__
*f&call_and_return_all_conditional_losses"╙
_tf_keras_layer╣{"name": "mean", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "mean", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dropout_147", 0, 0, {}]]], "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 50}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 50]}}
'
"J"
trackable_dict_wrapper
(
#1"
trackable_tuple_wrapper
Ы
$iter

%beta_1

&beta_2
	'decay
(learning_ratemTmUmVmWvXvYvZv["
	optimizer
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
		variables
)metrics

trainable_variables
regularization_losses
*non_trainable_variables
+layer_regularization_losses

,layers
-layer_metrics
]__call__
^_default_save_signature
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
,
gserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
	variables
.metrics
trainable_variables
regularization_losses
/non_trainable_variables
0layer_regularization_losses

1layers
2layer_metrics
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
 :22mean_-1/kernel
:22mean_-1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
	variables
3metrics
trainable_variables
regularization_losses
4non_trainable_variables
5layer_regularization_losses

6layers
7layer_metrics
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
	variables
8metrics
trainable_variables
regularization_losses
9non_trainable_variables
:layer_regularization_losses

;layers
<layer_metrics
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
:22mean/kernel
:2	mean/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
	variables
=metrics
trainable_variables
 regularization_losses
>non_trainable_variables
?layer_regularization_losses

@layers
Alayer_metrics
e__call__
*f&call_and_return_all_conditional_losses
&f"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
<
	optimizer
Bmetrics"
trackable_dict_wrapper
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
5
C0
D1
E2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
╘
	Ftotal
	Gcount
H	variables
I	keras_api"Э
_tf_keras_metricВ{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 15}
М
	Jtotal
	Kcount
L
_fn_kwargs
M	variables
N	keras_api"┼
_tf_keras_metricк{"class_name": "MeanMetricWrapper", "name": "mae", "dtype": "float32", "config": {"name": "mae", "dtype": "float32", "fn": "mean_absolute_error"}, "shared_object_id": 11}
Л
	Ototal
	Pcount
Q
_fn_kwargs
R	variables
S	keras_api"─
_tf_keras_metricй{"class_name": "MeanMetricWrapper", "name": "mse", "dtype": "float32", "config": {"name": "mse", "dtype": "float32", "fn": "mean_squared_error"}, "shared_object_id": 12}
:  (2total
:  (2count
.
F0
G1"
trackable_list_wrapper
-
H	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
J0
K1"
trackable_list_wrapper
-
M	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
O0
P1"
trackable_list_wrapper
-
R	variables"
_generic_user_object
%:#22Adam/mean_-1/kernel/m
:22Adam/mean_-1/bias/m
": 22Adam/mean/kernel/m
:2Adam/mean/bias/m
%:#22Adam/mean_-1/kernel/v
:22Adam/mean_-1/bias/v
": 22Adam/mean/kernel/v
:2Adam/mean/bias/v
ъ2ч
G__inference_dnnc_ridge_8_layer_call_and_return_conditional_losses_98353
G__inference_dnnc_ridge_8_layer_call_and_return_conditional_losses_98370
G__inference_dnnc_ridge_8_layer_call_and_return_conditional_losses_98297
G__inference_dnnc_ridge_8_layer_call_and_return_conditional_losses_98313└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
■2√
,__inference_dnnc_ridge_8_layer_call_fn_98176
,__inference_dnnc_ridge_8_layer_call_fn_98383
,__inference_dnnc_ridge_8_layer_call_fn_98396
,__inference_dnnc_ridge_8_layer_call_fn_98281└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
▄2┘
 __inference__wrapped_model_98110┤
Л▓З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *$в!
К
input         
Ф2С
+__inference_dropout_146_layer_call_fn_98401
+__inference_dropout_146_layer_call_fn_98406┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╩2╟
F__inference_dropout_146_layer_call_and_return_conditional_losses_98411
F__inference_dropout_146_layer_call_and_return_conditional_losses_98415┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╤2╬
'__inference_mean_-1_layer_call_fn_98424в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ь2щ
B__inference_mean_-1_layer_call_and_return_conditional_losses_98435в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ф2С
+__inference_dropout_147_layer_call_fn_98440
+__inference_dropout_147_layer_call_fn_98445┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╩2╟
F__inference_dropout_147_layer_call_and_return_conditional_losses_98450
F__inference_dropout_147_layer_call_and_return_conditional_losses_98454┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╬2╦
$__inference_mean_layer_call_fn_98463в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
щ2ц
?__inference_mean_layer_call_and_return_conditional_losses_98473в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╚B┼
#__inference_signature_wrapper_98334input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 З
 __inference__wrapped_model_98110c.в+
$в!
К
input         
к "+к(
&
meanК
mean         ░
G__inference_dnnc_ridge_8_layer_call_and_return_conditional_losses_98297e6в3
,в)
К
input         
p 

 
к "%в"
К
0         
Ъ ░
G__inference_dnnc_ridge_8_layer_call_and_return_conditional_losses_98313e6в3
,в)
К
input         
p

 
к "%в"
К
0         
Ъ ▒
G__inference_dnnc_ridge_8_layer_call_and_return_conditional_losses_98353f7в4
-в*
 К
inputs         
p 

 
к "%в"
К
0         
Ъ ▒
G__inference_dnnc_ridge_8_layer_call_and_return_conditional_losses_98370f7в4
-в*
 К
inputs         
p

 
к "%в"
К
0         
Ъ И
,__inference_dnnc_ridge_8_layer_call_fn_98176X6в3
,в)
К
input         
p 

 
к "К         И
,__inference_dnnc_ridge_8_layer_call_fn_98281X6в3
,в)
К
input         
p

 
к "К         Й
,__inference_dnnc_ridge_8_layer_call_fn_98383Y7в4
-в*
 К
inputs         
p 

 
к "К         Й
,__inference_dnnc_ridge_8_layer_call_fn_98396Y7в4
-в*
 К
inputs         
p

 
к "К         ж
F__inference_dropout_146_layer_call_and_return_conditional_losses_98411\3в0
)в&
 К
inputs         
p 
к "%в"
К
0         
Ъ ж
F__inference_dropout_146_layer_call_and_return_conditional_losses_98415\3в0
)в&
 К
inputs         
p
к "%в"
К
0         
Ъ ~
+__inference_dropout_146_layer_call_fn_98401O3в0
)в&
 К
inputs         
p 
к "К         ~
+__inference_dropout_146_layer_call_fn_98406O3в0
)в&
 К
inputs         
p
к "К         ж
F__inference_dropout_147_layer_call_and_return_conditional_losses_98450\3в0
)в&
 К
inputs         2
p 
к "%в"
К
0         2
Ъ ж
F__inference_dropout_147_layer_call_and_return_conditional_losses_98454\3в0
)в&
 К
inputs         2
p
к "%в"
К
0         2
Ъ ~
+__inference_dropout_147_layer_call_fn_98440O3в0
)в&
 К
inputs         2
p 
к "К         2~
+__inference_dropout_147_layer_call_fn_98445O3в0
)в&
 К
inputs         2
p
к "К         2в
B__inference_mean_-1_layer_call_and_return_conditional_losses_98435\/в,
%в"
 К
inputs         
к "%в"
К
0         2
Ъ z
'__inference_mean_-1_layer_call_fn_98424O/в,
%в"
 К
inputs         
к "К         2Я
?__inference_mean_layer_call_and_return_conditional_losses_98473\/в,
%в"
 К
inputs         2
к "%в"
К
0         
Ъ w
$__inference_mean_layer_call_fn_98463O/в,
%в"
 К
inputs         2
к "К         У
#__inference_signature_wrapper_98334l7в4
в 
-к*
(
inputК
input         "+к(
&
meanК
mean         