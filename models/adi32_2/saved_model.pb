??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
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
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
?
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
executor_typestring ?
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8Қ
~
board1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameboard1/kernel
w
!board1/kernel/Read/ReadVariableOpReadVariableOpboard1/kernel*&
_output_shapes
:*
dtype0
n
board1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameboard1/bias
g
board1/bias/Read/ReadVariableOpReadVariableOpboard1/bias*
_output_shapes
:*
dtype0
~
board2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameboard2/kernel
w
!board2/kernel/Read/ReadVariableOpReadVariableOpboard2/kernel*&
_output_shapes
:*
dtype0
n
board2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameboard2/bias
g
board2/bias/Read/ReadVariableOpReadVariableOpboard2/bias*
_output_shapes
:*
dtype0
?
fileconv/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namefileconv/kernel
{
#fileconv/kernel/Read/ReadVariableOpReadVariableOpfileconv/kernel*&
_output_shapes
:*
dtype0
r
fileconv/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namefileconv/bias
k
!fileconv/bias/Read/ReadVariableOpReadVariableOpfileconv/bias*
_output_shapes
:*
dtype0
?
rankconv/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_namerankconv/kernel
{
#rankconv/kernel/Read/ReadVariableOpReadVariableOprankconv/kernel*&
_output_shapes
:*
dtype0
r
rankconv/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namerankconv/bias
k
!rankconv/bias/Read/ReadVariableOpReadVariableOprankconv/bias*
_output_shapes
:*
dtype0
?
quarterconv/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namequarterconv/kernel
?
&quarterconv/kernel/Read/ReadVariableOpReadVariableOpquarterconv/kernel*&
_output_shapes
:*
dtype0
x
quarterconv/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namequarterconv/bias
q
$quarterconv/bias/Read/ReadVariableOpReadVariableOpquarterconv/bias*
_output_shapes
:*
dtype0
?
largeconv/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namelargeconv/kernel
}
$largeconv/kernel/Read/ReadVariableOpReadVariableOplargeconv/kernel*&
_output_shapes
:*
dtype0
t
largeconv/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namelargeconv/bias
m
"largeconv/bias/Read/ReadVariableOpReadVariableOplargeconv/bias*
_output_shapes
:*
dtype0
~
board3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameboard3/kernel
w
!board3/kernel/Read/ReadVariableOpReadVariableOpboard3/kernel*&
_output_shapes
:*
dtype0
n
board3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameboard3/bias
g
board3/bias/Read/ReadVariableOpReadVariableOpboard3/bias*
_output_shapes
:*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
??*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:?*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	?@*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:@*
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

:@ *
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
: *
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

: *
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
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

NoOpNoOp
?O
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?O
value?OB?O B?O
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer_with_weights-7
layer-16
layer_with_weights-8
layer-17
layer-18
layer_with_weights-9
layer-19
layer-20
layer_with_weights-10
layer-21
	optimizer
loss
trainable_variables
regularization_losses
	variables
	keras_api

signatures
 
h

kernel
bias
 trainable_variables
!regularization_losses
"	variables
#	keras_api
h

$kernel
%bias
&trainable_variables
'regularization_losses
(	variables
)	keras_api
h

*kernel
+bias
,trainable_variables
-regularization_losses
.	variables
/	keras_api
h

0kernel
1bias
2trainable_variables
3regularization_losses
4	variables
5	keras_api
h

6kernel
7bias
8trainable_variables
9regularization_losses
:	variables
;	keras_api
h

<kernel
=bias
>trainable_variables
?regularization_losses
@	variables
A	keras_api
h

Bkernel
Cbias
Dtrainable_variables
Eregularization_losses
F	variables
G	keras_api
R
Htrainable_variables
Iregularization_losses
J	variables
K	keras_api
R
Ltrainable_variables
Mregularization_losses
N	variables
O	keras_api
R
Ptrainable_variables
Qregularization_losses
R	variables
S	keras_api
R
Ttrainable_variables
Uregularization_losses
V	variables
W	keras_api
R
Xtrainable_variables
Yregularization_losses
Z	variables
[	keras_api
R
\trainable_variables
]regularization_losses
^	variables
_	keras_api
R
`trainable_variables
aregularization_losses
b	variables
c	keras_api
R
dtrainable_variables
eregularization_losses
f	variables
g	keras_api
h

hkernel
ibias
jtrainable_variables
kregularization_losses
l	variables
m	keras_api
h

nkernel
obias
ptrainable_variables
qregularization_losses
r	variables
s	keras_api
R
ttrainable_variables
uregularization_losses
v	variables
w	keras_api
h

xkernel
ybias
ztrainable_variables
{regularization_losses
|	variables
}	keras_api
T
~trainable_variables
regularization_losses
?	variables
?	keras_api
n
?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
 
 
?
0
1
$2
%3
*4
+5
06
17
68
79
<10
=11
B12
C13
h14
i15
n16
o17
x18
y19
?20
?21
 
?
0
1
$2
%3
*4
+5
06
17
68
79
<10
=11
B12
C13
h14
i15
n16
o17
x18
y19
?20
?21
?
trainable_variables
?layers
regularization_losses
?non_trainable_variables
?layer_metrics
	variables
?metrics
 ?layer_regularization_losses
 
YW
VARIABLE_VALUEboard1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEboard1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
 trainable_variables
?layers
!regularization_losses
?non_trainable_variables
?layer_metrics
"	variables
?metrics
 ?layer_regularization_losses
YW
VARIABLE_VALUEboard2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEboard2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

$0
%1
 

$0
%1
?
&trainable_variables
?layers
'regularization_losses
?non_trainable_variables
?layer_metrics
(	variables
?metrics
 ?layer_regularization_losses
[Y
VARIABLE_VALUEfileconv/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEfileconv/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

*0
+1
 

*0
+1
?
,trainable_variables
?layers
-regularization_losses
?non_trainable_variables
?layer_metrics
.	variables
?metrics
 ?layer_regularization_losses
[Y
VARIABLE_VALUErankconv/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUErankconv/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

00
11
 

00
11
?
2trainable_variables
?layers
3regularization_losses
?non_trainable_variables
?layer_metrics
4	variables
?metrics
 ?layer_regularization_losses
^\
VARIABLE_VALUEquarterconv/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEquarterconv/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

60
71
 

60
71
?
8trainable_variables
?layers
9regularization_losses
?non_trainable_variables
?layer_metrics
:	variables
?metrics
 ?layer_regularization_losses
\Z
VARIABLE_VALUElargeconv/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUElargeconv/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

<0
=1
 

<0
=1
?
>trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics
@	variables
?metrics
 ?layer_regularization_losses
YW
VARIABLE_VALUEboard3/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEboard3/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

B0
C1
 

B0
C1
?
Dtrainable_variables
?layers
Eregularization_losses
?non_trainable_variables
?layer_metrics
F	variables
?metrics
 ?layer_regularization_losses
 
 
 
?
Htrainable_variables
?layers
Iregularization_losses
?non_trainable_variables
?layer_metrics
J	variables
?metrics
 ?layer_regularization_losses
 
 
 
?
Ltrainable_variables
?layers
Mregularization_losses
?non_trainable_variables
?layer_metrics
N	variables
?metrics
 ?layer_regularization_losses
 
 
 
?
Ptrainable_variables
?layers
Qregularization_losses
?non_trainable_variables
?layer_metrics
R	variables
?metrics
 ?layer_regularization_losses
 
 
 
?
Ttrainable_variables
?layers
Uregularization_losses
?non_trainable_variables
?layer_metrics
V	variables
?metrics
 ?layer_regularization_losses
 
 
 
?
Xtrainable_variables
?layers
Yregularization_losses
?non_trainable_variables
?layer_metrics
Z	variables
?metrics
 ?layer_regularization_losses
 
 
 
?
\trainable_variables
?layers
]regularization_losses
?non_trainable_variables
?layer_metrics
^	variables
?metrics
 ?layer_regularization_losses
 
 
 
?
`trainable_variables
?layers
aregularization_losses
?non_trainable_variables
?layer_metrics
b	variables
?metrics
 ?layer_regularization_losses
 
 
 
?
dtrainable_variables
?layers
eregularization_losses
?non_trainable_variables
?layer_metrics
f	variables
?metrics
 ?layer_regularization_losses
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

h0
i1
 

h0
i1
?
jtrainable_variables
?layers
kregularization_losses
?non_trainable_variables
?layer_metrics
l	variables
?metrics
 ?layer_regularization_losses
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

n0
o1
 

n0
o1
?
ptrainable_variables
?layers
qregularization_losses
?non_trainable_variables
?layer_metrics
r	variables
?metrics
 ?layer_regularization_losses
 
 
 
?
ttrainable_variables
?layers
uregularization_losses
?non_trainable_variables
?layer_metrics
v	variables
?metrics
 ?layer_regularization_losses
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE

x0
y1
 

x0
y1
?
ztrainable_variables
?layers
{regularization_losses
?non_trainable_variables
?layer_metrics
|	variables
?metrics
 ?layer_regularization_losses
 
 
 
?
~trainable_variables
?layers
regularization_losses
?non_trainable_variables
?layer_metrics
?	variables
?metrics
 ?layer_regularization_losses
[Y
VARIABLE_VALUEdense_3/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_3/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
 

?0
?1
?
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics
?	variables
?metrics
 ?layer_regularization_losses
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
 
 

?0
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
8

?total

?count
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
?
serving_default_statePlaceholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_stateboard1/kernelboard1/biasboard2/kernelboard2/biasboard3/kernelboard3/biaslargeconv/kernellargeconv/biasquarterconv/kernelquarterconv/biasrankconv/kernelrankconv/biasfileconv/kernelfileconv/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_5791698
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!board1/kernel/Read/ReadVariableOpboard1/bias/Read/ReadVariableOp!board2/kernel/Read/ReadVariableOpboard2/bias/Read/ReadVariableOp#fileconv/kernel/Read/ReadVariableOp!fileconv/bias/Read/ReadVariableOp#rankconv/kernel/Read/ReadVariableOp!rankconv/bias/Read/ReadVariableOp&quarterconv/kernel/Read/ReadVariableOp$quarterconv/bias/Read/ReadVariableOp$largeconv/kernel/Read/ReadVariableOp"largeconv/bias/Read/ReadVariableOp!board3/kernel/Read/ReadVariableOpboard3/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*%
Tin
2*
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
GPU2*0J 8? *)
f$R"
 __inference__traced_save_5792507
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameboard1/kernelboard1/biasboard2/kernelboard2/biasfileconv/kernelfileconv/biasrankconv/kernelrankconv/biasquarterconv/kernelquarterconv/biaslargeconv/kernellargeconv/biasboard3/kernelboard3/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biastotalcount*$
Tin
2*
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
GPU2*0J 8? *,
f'R%
#__inference__traced_restore_5792589??
?
E
)__inference_flatten_layer_call_fn_5792176

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_57908762
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_5790744	
stateG
-model_1_board1_conv2d_readvariableop_resource:<
.model_1_board1_biasadd_readvariableop_resource:G
-model_1_board2_conv2d_readvariableop_resource:<
.model_1_board2_biasadd_readvariableop_resource:G
-model_1_board3_conv2d_readvariableop_resource:<
.model_1_board3_biasadd_readvariableop_resource:J
0model_1_largeconv_conv2d_readvariableop_resource:?
1model_1_largeconv_biasadd_readvariableop_resource:L
2model_1_quarterconv_conv2d_readvariableop_resource:A
3model_1_quarterconv_biasadd_readvariableop_resource:I
/model_1_rankconv_conv2d_readvariableop_resource:>
0model_1_rankconv_biasadd_readvariableop_resource:I
/model_1_fileconv_conv2d_readvariableop_resource:>
0model_1_fileconv_biasadd_readvariableop_resource:@
,model_1_dense_matmul_readvariableop_resource:
??<
-model_1_dense_biasadd_readvariableop_resource:	?A
.model_1_dense_1_matmul_readvariableop_resource:	?@=
/model_1_dense_1_biasadd_readvariableop_resource:@@
.model_1_dense_2_matmul_readvariableop_resource:@ =
/model_1_dense_2_biasadd_readvariableop_resource: @
.model_1_dense_3_matmul_readvariableop_resource: =
/model_1_dense_3_biasadd_readvariableop_resource:
identity??%model_1/board1/BiasAdd/ReadVariableOp?$model_1/board1/Conv2D/ReadVariableOp?%model_1/board2/BiasAdd/ReadVariableOp?$model_1/board2/Conv2D/ReadVariableOp?%model_1/board3/BiasAdd/ReadVariableOp?$model_1/board3/Conv2D/ReadVariableOp?$model_1/dense/BiasAdd/ReadVariableOp?#model_1/dense/MatMul/ReadVariableOp?&model_1/dense_1/BiasAdd/ReadVariableOp?%model_1/dense_1/MatMul/ReadVariableOp?&model_1/dense_2/BiasAdd/ReadVariableOp?%model_1/dense_2/MatMul/ReadVariableOp?&model_1/dense_3/BiasAdd/ReadVariableOp?%model_1/dense_3/MatMul/ReadVariableOp?'model_1/fileconv/BiasAdd/ReadVariableOp?&model_1/fileconv/Conv2D/ReadVariableOp?(model_1/largeconv/BiasAdd/ReadVariableOp?'model_1/largeconv/Conv2D/ReadVariableOp?*model_1/quarterconv/BiasAdd/ReadVariableOp?)model_1/quarterconv/Conv2D/ReadVariableOp?'model_1/rankconv/BiasAdd/ReadVariableOp?&model_1/rankconv/Conv2D/ReadVariableOp?
$model_1/board1/Conv2D/ReadVariableOpReadVariableOp-model_1_board1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02&
$model_1/board1/Conv2D/ReadVariableOp?
model_1/board1/Conv2DConv2Dstate,model_1/board1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
model_1/board1/Conv2D?
%model_1/board1/BiasAdd/ReadVariableOpReadVariableOp.model_1_board1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%model_1/board1/BiasAdd/ReadVariableOp?
model_1/board1/BiasAddBiasAddmodel_1/board1/Conv2D:output:0-model_1/board1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
model_1/board1/BiasAdd?
model_1/board1/ReluRelumodel_1/board1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
model_1/board1/Relu?
$model_1/board2/Conv2D/ReadVariableOpReadVariableOp-model_1_board2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02&
$model_1/board2/Conv2D/ReadVariableOp?
model_1/board2/Conv2DConv2D!model_1/board1/Relu:activations:0,model_1/board2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
model_1/board2/Conv2D?
%model_1/board2/BiasAdd/ReadVariableOpReadVariableOp.model_1_board2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%model_1/board2/BiasAdd/ReadVariableOp?
model_1/board2/BiasAddBiasAddmodel_1/board2/Conv2D:output:0-model_1/board2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
model_1/board2/BiasAdd?
model_1/board2/ReluRelumodel_1/board2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
model_1/board2/Relu?
$model_1/board3/Conv2D/ReadVariableOpReadVariableOp-model_1_board3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02&
$model_1/board3/Conv2D/ReadVariableOp?
model_1/board3/Conv2DConv2D!model_1/board2/Relu:activations:0,model_1/board3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
model_1/board3/Conv2D?
%model_1/board3/BiasAdd/ReadVariableOpReadVariableOp.model_1_board3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%model_1/board3/BiasAdd/ReadVariableOp?
model_1/board3/BiasAddBiasAddmodel_1/board3/Conv2D:output:0-model_1/board3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
model_1/board3/BiasAdd?
model_1/board3/ReluRelumodel_1/board3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
model_1/board3/Relu?
'model_1/largeconv/Conv2D/ReadVariableOpReadVariableOp0model_1_largeconv_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02)
'model_1/largeconv/Conv2D/ReadVariableOp?
model_1/largeconv/Conv2DConv2Dstate/model_1/largeconv/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
model_1/largeconv/Conv2D?
(model_1/largeconv/BiasAdd/ReadVariableOpReadVariableOp1model_1_largeconv_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02*
(model_1/largeconv/BiasAdd/ReadVariableOp?
model_1/largeconv/BiasAddBiasAdd!model_1/largeconv/Conv2D:output:00model_1/largeconv/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
model_1/largeconv/BiasAdd?
model_1/largeconv/ReluRelu"model_1/largeconv/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
model_1/largeconv/Relu?
)model_1/quarterconv/Conv2D/ReadVariableOpReadVariableOp2model_1_quarterconv_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02+
)model_1/quarterconv/Conv2D/ReadVariableOp?
model_1/quarterconv/Conv2DConv2Dstate1model_1/quarterconv/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
model_1/quarterconv/Conv2D?
*model_1/quarterconv/BiasAdd/ReadVariableOpReadVariableOp3model_1_quarterconv_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*model_1/quarterconv/BiasAdd/ReadVariableOp?
model_1/quarterconv/BiasAddBiasAdd#model_1/quarterconv/Conv2D:output:02model_1/quarterconv/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
model_1/quarterconv/BiasAdd?
model_1/quarterconv/ReluRelu$model_1/quarterconv/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
model_1/quarterconv/Relu?
&model_1/rankconv/Conv2D/ReadVariableOpReadVariableOp/model_1_rankconv_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02(
&model_1/rankconv/Conv2D/ReadVariableOp?
model_1/rankconv/Conv2DConv2Dstate.model_1/rankconv/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
model_1/rankconv/Conv2D?
'model_1/rankconv/BiasAdd/ReadVariableOpReadVariableOp0model_1_rankconv_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model_1/rankconv/BiasAdd/ReadVariableOp?
model_1/rankconv/BiasAddBiasAdd model_1/rankconv/Conv2D:output:0/model_1/rankconv/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
model_1/rankconv/BiasAdd?
model_1/rankconv/ReluRelu!model_1/rankconv/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
model_1/rankconv/Relu?
&model_1/fileconv/Conv2D/ReadVariableOpReadVariableOp/model_1_fileconv_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02(
&model_1/fileconv/Conv2D/ReadVariableOp?
model_1/fileconv/Conv2DConv2Dstate.model_1/fileconv/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
model_1/fileconv/Conv2D?
'model_1/fileconv/BiasAdd/ReadVariableOpReadVariableOp0model_1_fileconv_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'model_1/fileconv/BiasAdd/ReadVariableOp?
model_1/fileconv/BiasAddBiasAdd model_1/fileconv/Conv2D:output:0/model_1/fileconv/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
model_1/fileconv/BiasAdd?
model_1/fileconv/ReluRelu!model_1/fileconv/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
model_1/fileconv/Relu
model_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
model_1/flatten/Const?
model_1/flatten/ReshapeReshape#model_1/fileconv/Relu:activations:0model_1/flatten/Const:output:0*
T0*'
_output_shapes
:?????????2
model_1/flatten/Reshape?
model_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
model_1/flatten_1/Const?
model_1/flatten_1/ReshapeReshape#model_1/rankconv/Relu:activations:0 model_1/flatten_1/Const:output:0*
T0*'
_output_shapes
:?????????2
model_1/flatten_1/Reshape?
model_1/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
model_1/flatten_2/Const?
model_1/flatten_2/ReshapeReshape&model_1/quarterconv/Relu:activations:0 model_1/flatten_2/Const:output:0*
T0*'
_output_shapes
:?????????2
model_1/flatten_2/Reshape?
model_1/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????H   2
model_1/flatten_3/Const?
model_1/flatten_3/ReshapeReshape$model_1/largeconv/Relu:activations:0 model_1/flatten_3/Const:output:0*
T0*'
_output_shapes
:?????????H2
model_1/flatten_3/Reshape?
model_1/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
model_1/flatten_4/Const?
model_1/flatten_4/ReshapeReshape!model_1/board1/Relu:activations:0 model_1/flatten_4/Const:output:0*
T0*(
_output_shapes
:??????????2
model_1/flatten_4/Reshape?
model_1/flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"????`   2
model_1/flatten_5/Const?
model_1/flatten_5/ReshapeReshape!model_1/board3/Relu:activations:0 model_1/flatten_5/Const:output:0*
T0*'
_output_shapes
:?????????`2
model_1/flatten_5/Reshape?
model_1/dense_bass/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2 
model_1/dense_bass/concat/axis?
model_1/dense_bass/concatConcatV2 model_1/flatten/Reshape:output:0"model_1/flatten_1/Reshape:output:0"model_1/flatten_2/Reshape:output:0"model_1/flatten_3/Reshape:output:0"model_1/flatten_4/Reshape:output:0"model_1/flatten_5/Reshape:output:0'model_1/dense_bass/concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????2
model_1/dense_bass/concat?
model_1/dropout/IdentityIdentity"model_1/dense_bass/concat:output:0*
T0*(
_output_shapes
:??????????2
model_1/dropout/Identity?
#model_1/dense/MatMul/ReadVariableOpReadVariableOp,model_1_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02%
#model_1/dense/MatMul/ReadVariableOp?
model_1/dense/MatMulMatMul!model_1/dropout/Identity:output:0+model_1/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_1/dense/MatMul?
$model_1/dense/BiasAdd/ReadVariableOpReadVariableOp-model_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$model_1/dense/BiasAdd/ReadVariableOp?
model_1/dense/BiasAddBiasAddmodel_1/dense/MatMul:product:0,model_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model_1/dense/BiasAdd?
model_1/dense/SigmoidSigmoidmodel_1/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
model_1/dense/Sigmoid?
%model_1/dense_1/MatMul/ReadVariableOpReadVariableOp.model_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02'
%model_1/dense_1/MatMul/ReadVariableOp?
model_1/dense_1/MatMulMatMulmodel_1/dense/Sigmoid:y:0-model_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model_1/dense_1/MatMul?
&model_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02(
&model_1/dense_1/BiasAdd/ReadVariableOp?
model_1/dense_1/BiasAddBiasAdd model_1/dense_1/MatMul:product:0.model_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model_1/dense_1/BiasAdd?
model_1/dense_1/SigmoidSigmoid model_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
model_1/dense_1/Sigmoid?
model_1/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2!
model_1/dropout_1/dropout/Const?
model_1/dropout_1/dropout/MulMulmodel_1/dense_1/Sigmoid:y:0(model_1/dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
model_1/dropout_1/dropout/Mul?
model_1/dropout_1/dropout/ShapeShapemodel_1/dense_1/Sigmoid:y:0*
T0*
_output_shapes
:2!
model_1/dropout_1/dropout/Shape?
6model_1/dropout_1/dropout/random_uniform/RandomUniformRandomUniform(model_1/dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype028
6model_1/dropout_1/dropout/random_uniform/RandomUniform?
(model_1/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2*
(model_1/dropout_1/dropout/GreaterEqual/y?
&model_1/dropout_1/dropout/GreaterEqualGreaterEqual?model_1/dropout_1/dropout/random_uniform/RandomUniform:output:01model_1/dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2(
&model_1/dropout_1/dropout/GreaterEqual?
model_1/dropout_1/dropout/CastCast*model_1/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2 
model_1/dropout_1/dropout/Cast?
model_1/dropout_1/dropout/Mul_1Mul!model_1/dropout_1/dropout/Mul:z:0"model_1/dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2!
model_1/dropout_1/dropout/Mul_1?
%model_1/dense_2/MatMul/ReadVariableOpReadVariableOp.model_1_dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02'
%model_1/dense_2/MatMul/ReadVariableOp?
model_1/dense_2/MatMulMatMul#model_1/dropout_1/dropout/Mul_1:z:0-model_1/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
model_1/dense_2/MatMul?
&model_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02(
&model_1/dense_2/BiasAdd/ReadVariableOp?
model_1/dense_2/BiasAddBiasAdd model_1/dense_2/MatMul:product:0.model_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
model_1/dense_2/BiasAdd?
model_1/dense_2/SigmoidSigmoid model_1/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
model_1/dense_2/Sigmoid?
model_1/dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2!
model_1/dropout_2/dropout/Const?
model_1/dropout_2/dropout/MulMulmodel_1/dense_2/Sigmoid:y:0(model_1/dropout_2/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
model_1/dropout_2/dropout/Mul?
model_1/dropout_2/dropout/ShapeShapemodel_1/dense_2/Sigmoid:y:0*
T0*
_output_shapes
:2!
model_1/dropout_2/dropout/Shape?
6model_1/dropout_2/dropout/random_uniform/RandomUniformRandomUniform(model_1/dropout_2/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype028
6model_1/dropout_2/dropout/random_uniform/RandomUniform?
(model_1/dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2*
(model_1/dropout_2/dropout/GreaterEqual/y?
&model_1/dropout_2/dropout/GreaterEqualGreaterEqual?model_1/dropout_2/dropout/random_uniform/RandomUniform:output:01model_1/dropout_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2(
&model_1/dropout_2/dropout/GreaterEqual?
model_1/dropout_2/dropout/CastCast*model_1/dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2 
model_1/dropout_2/dropout/Cast?
model_1/dropout_2/dropout/Mul_1Mul!model_1/dropout_2/dropout/Mul:z:0"model_1/dropout_2/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2!
model_1/dropout_2/dropout/Mul_1?
%model_1/dense_3/MatMul/ReadVariableOpReadVariableOp.model_1_dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02'
%model_1/dense_3/MatMul/ReadVariableOp?
model_1/dense_3/MatMulMatMul#model_1/dropout_2/dropout/Mul_1:z:0-model_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_1/dense_3/MatMul?
&model_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp/model_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&model_1/dense_3/BiasAdd/ReadVariableOp?
model_1/dense_3/BiasAddBiasAdd model_1/dense_3/MatMul:product:0.model_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_1/dense_3/BiasAdd{
IdentityIdentity model_1/dense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp&^model_1/board1/BiasAdd/ReadVariableOp%^model_1/board1/Conv2D/ReadVariableOp&^model_1/board2/BiasAdd/ReadVariableOp%^model_1/board2/Conv2D/ReadVariableOp&^model_1/board3/BiasAdd/ReadVariableOp%^model_1/board3/Conv2D/ReadVariableOp%^model_1/dense/BiasAdd/ReadVariableOp$^model_1/dense/MatMul/ReadVariableOp'^model_1/dense_1/BiasAdd/ReadVariableOp&^model_1/dense_1/MatMul/ReadVariableOp'^model_1/dense_2/BiasAdd/ReadVariableOp&^model_1/dense_2/MatMul/ReadVariableOp'^model_1/dense_3/BiasAdd/ReadVariableOp&^model_1/dense_3/MatMul/ReadVariableOp(^model_1/fileconv/BiasAdd/ReadVariableOp'^model_1/fileconv/Conv2D/ReadVariableOp)^model_1/largeconv/BiasAdd/ReadVariableOp(^model_1/largeconv/Conv2D/ReadVariableOp+^model_1/quarterconv/BiasAdd/ReadVariableOp*^model_1/quarterconv/Conv2D/ReadVariableOp(^model_1/rankconv/BiasAdd/ReadVariableOp'^model_1/rankconv/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????: : : : : : : : : : : : : : : : : : : : : : 2N
%model_1/board1/BiasAdd/ReadVariableOp%model_1/board1/BiasAdd/ReadVariableOp2L
$model_1/board1/Conv2D/ReadVariableOp$model_1/board1/Conv2D/ReadVariableOp2N
%model_1/board2/BiasAdd/ReadVariableOp%model_1/board2/BiasAdd/ReadVariableOp2L
$model_1/board2/Conv2D/ReadVariableOp$model_1/board2/Conv2D/ReadVariableOp2N
%model_1/board3/BiasAdd/ReadVariableOp%model_1/board3/BiasAdd/ReadVariableOp2L
$model_1/board3/Conv2D/ReadVariableOp$model_1/board3/Conv2D/ReadVariableOp2L
$model_1/dense/BiasAdd/ReadVariableOp$model_1/dense/BiasAdd/ReadVariableOp2J
#model_1/dense/MatMul/ReadVariableOp#model_1/dense/MatMul/ReadVariableOp2P
&model_1/dense_1/BiasAdd/ReadVariableOp&model_1/dense_1/BiasAdd/ReadVariableOp2N
%model_1/dense_1/MatMul/ReadVariableOp%model_1/dense_1/MatMul/ReadVariableOp2P
&model_1/dense_2/BiasAdd/ReadVariableOp&model_1/dense_2/BiasAdd/ReadVariableOp2N
%model_1/dense_2/MatMul/ReadVariableOp%model_1/dense_2/MatMul/ReadVariableOp2P
&model_1/dense_3/BiasAdd/ReadVariableOp&model_1/dense_3/BiasAdd/ReadVariableOp2N
%model_1/dense_3/MatMul/ReadVariableOp%model_1/dense_3/MatMul/ReadVariableOp2R
'model_1/fileconv/BiasAdd/ReadVariableOp'model_1/fileconv/BiasAdd/ReadVariableOp2P
&model_1/fileconv/Conv2D/ReadVariableOp&model_1/fileconv/Conv2D/ReadVariableOp2T
(model_1/largeconv/BiasAdd/ReadVariableOp(model_1/largeconv/BiasAdd/ReadVariableOp2R
'model_1/largeconv/Conv2D/ReadVariableOp'model_1/largeconv/Conv2D/ReadVariableOp2X
*model_1/quarterconv/BiasAdd/ReadVariableOp*model_1/quarterconv/BiasAdd/ReadVariableOp2V
)model_1/quarterconv/Conv2D/ReadVariableOp)model_1/quarterconv/Conv2D/ReadVariableOp2R
'model_1/rankconv/BiasAdd/ReadVariableOp'model_1/rankconv/BiasAdd/ReadVariableOp2P
&model_1/rankconv/Conv2D/ReadVariableOp&model_1/rankconv/Conv2D/ReadVariableOp:V R
/
_output_shapes
:?????????

_user_specified_namestate
?
?
C__inference_board2_layer_call_and_return_conditional_losses_5790779

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_fileconv_layer_call_and_return_conditional_losses_5792076

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_model_1_layer_call_fn_5792025

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:
??

unknown_14:	?

unknown_15:	?@

unknown_16:@

unknown_17:@ 

unknown_18: 

unknown_19: 

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_57914132
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
B__inference_dense_layer_call_and_return_conditional_losses_5790949

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidg
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
D__inference_model_1_layer_call_and_return_conditional_losses_5791809

inputs?
%board1_conv2d_readvariableop_resource:4
&board1_biasadd_readvariableop_resource:?
%board2_conv2d_readvariableop_resource:4
&board2_biasadd_readvariableop_resource:?
%board3_conv2d_readvariableop_resource:4
&board3_biasadd_readvariableop_resource:B
(largeconv_conv2d_readvariableop_resource:7
)largeconv_biasadd_readvariableop_resource:D
*quarterconv_conv2d_readvariableop_resource:9
+quarterconv_biasadd_readvariableop_resource:A
'rankconv_conv2d_readvariableop_resource:6
(rankconv_biasadd_readvariableop_resource:A
'fileconv_conv2d_readvariableop_resource:6
(fileconv_biasadd_readvariableop_resource:8
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?9
&dense_1_matmul_readvariableop_resource:	?@5
'dense_1_biasadd_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:@ 5
'dense_2_biasadd_readvariableop_resource: 8
&dense_3_matmul_readvariableop_resource: 5
'dense_3_biasadd_readvariableop_resource:
identity??board1/BiasAdd/ReadVariableOp?board1/Conv2D/ReadVariableOp?board2/BiasAdd/ReadVariableOp?board2/Conv2D/ReadVariableOp?board3/BiasAdd/ReadVariableOp?board3/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?fileconv/BiasAdd/ReadVariableOp?fileconv/Conv2D/ReadVariableOp? largeconv/BiasAdd/ReadVariableOp?largeconv/Conv2D/ReadVariableOp?"quarterconv/BiasAdd/ReadVariableOp?!quarterconv/Conv2D/ReadVariableOp?rankconv/BiasAdd/ReadVariableOp?rankconv/Conv2D/ReadVariableOp?
board1/Conv2D/ReadVariableOpReadVariableOp%board1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
board1/Conv2D/ReadVariableOp?
board1/Conv2DConv2Dinputs$board1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
board1/Conv2D?
board1/BiasAdd/ReadVariableOpReadVariableOp&board1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
board1/BiasAdd/ReadVariableOp?
board1/BiasAddBiasAddboard1/Conv2D:output:0%board1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
board1/BiasAddu
board1/ReluReluboard1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
board1/Relu?
board2/Conv2D/ReadVariableOpReadVariableOp%board2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
board2/Conv2D/ReadVariableOp?
board2/Conv2DConv2Dboard1/Relu:activations:0$board2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
board2/Conv2D?
board2/BiasAdd/ReadVariableOpReadVariableOp&board2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
board2/BiasAdd/ReadVariableOp?
board2/BiasAddBiasAddboard2/Conv2D:output:0%board2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
board2/BiasAddu
board2/ReluReluboard2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
board2/Relu?
board3/Conv2D/ReadVariableOpReadVariableOp%board3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
board3/Conv2D/ReadVariableOp?
board3/Conv2DConv2Dboard2/Relu:activations:0$board3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
board3/Conv2D?
board3/BiasAdd/ReadVariableOpReadVariableOp&board3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
board3/BiasAdd/ReadVariableOp?
board3/BiasAddBiasAddboard3/Conv2D:output:0%board3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
board3/BiasAddu
board3/ReluReluboard3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
board3/Relu?
largeconv/Conv2D/ReadVariableOpReadVariableOp(largeconv_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
largeconv/Conv2D/ReadVariableOp?
largeconv/Conv2DConv2Dinputs'largeconv/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
largeconv/Conv2D?
 largeconv/BiasAdd/ReadVariableOpReadVariableOp)largeconv_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 largeconv/BiasAdd/ReadVariableOp?
largeconv/BiasAddBiasAddlargeconv/Conv2D:output:0(largeconv/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
largeconv/BiasAdd~
largeconv/ReluRelulargeconv/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
largeconv/Relu?
!quarterconv/Conv2D/ReadVariableOpReadVariableOp*quarterconv_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02#
!quarterconv/Conv2D/ReadVariableOp?
quarterconv/Conv2DConv2Dinputs)quarterconv/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
quarterconv/Conv2D?
"quarterconv/BiasAdd/ReadVariableOpReadVariableOp+quarterconv_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"quarterconv/BiasAdd/ReadVariableOp?
quarterconv/BiasAddBiasAddquarterconv/Conv2D:output:0*quarterconv/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
quarterconv/BiasAdd?
quarterconv/ReluReluquarterconv/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
quarterconv/Relu?
rankconv/Conv2D/ReadVariableOpReadVariableOp'rankconv_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
rankconv/Conv2D/ReadVariableOp?
rankconv/Conv2DConv2Dinputs&rankconv/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
rankconv/Conv2D?
rankconv/BiasAdd/ReadVariableOpReadVariableOp(rankconv_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
rankconv/BiasAdd/ReadVariableOp?
rankconv/BiasAddBiasAddrankconv/Conv2D:output:0'rankconv/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
rankconv/BiasAdd{
rankconv/ReluRelurankconv/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
rankconv/Relu?
fileconv/Conv2D/ReadVariableOpReadVariableOp'fileconv_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
fileconv/Conv2D/ReadVariableOp?
fileconv/Conv2DConv2Dinputs&fileconv/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
fileconv/Conv2D?
fileconv/BiasAdd/ReadVariableOpReadVariableOp(fileconv_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
fileconv/BiasAdd/ReadVariableOp?
fileconv/BiasAddBiasAddfileconv/Conv2D:output:0'fileconv/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
fileconv/BiasAdd{
fileconv/ReluRelufileconv/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
fileconv/Reluo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten/Const?
flatten/ReshapeReshapefileconv/Relu:activations:0flatten/Const:output:0*
T0*'
_output_shapes
:?????????2
flatten/Reshapes
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_1/Const?
flatten_1/ReshapeReshaperankconv/Relu:activations:0flatten_1/Const:output:0*
T0*'
_output_shapes
:?????????2
flatten_1/Reshapes
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_2/Const?
flatten_2/ReshapeReshapequarterconv/Relu:activations:0flatten_2/Const:output:0*
T0*'
_output_shapes
:?????????2
flatten_2/Reshapes
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????H   2
flatten_3/Const?
flatten_3/ReshapeReshapelargeconv/Relu:activations:0flatten_3/Const:output:0*
T0*'
_output_shapes
:?????????H2
flatten_3/Reshapes
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
flatten_4/Const?
flatten_4/ReshapeReshapeboard1/Relu:activations:0flatten_4/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_4/Reshapes
flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"????`   2
flatten_5/Const?
flatten_5/ReshapeReshapeboard3/Relu:activations:0flatten_5/Const:output:0*
T0*'
_output_shapes
:?????????`2
flatten_5/Reshaper
dense_bass/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
dense_bass/concat/axis?
dense_bass/concatConcatV2flatten/Reshape:output:0flatten_1/Reshape:output:0flatten_2/Reshape:output:0flatten_3/Reshape:output:0flatten_4/Reshape:output:0flatten_5/Reshape:output:0dense_bass/concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????2
dense_bass/concat
dropout/IdentityIdentitydense_bass/concat:output:0*
T0*(
_output_shapes
:??????????2
dropout/Identity?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMuldropout/Identity:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddt
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense/Sigmoid?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldense/Sigmoid:y:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/BiasAddy
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_1/Sigmoidw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_1/dropout/Const?
dropout_1/dropout/MulMuldense_1/Sigmoid:y:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_1/dropout/Mulu
dropout_1/dropout/ShapeShapedense_1/Sigmoid:y:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_1/dropout/Mul_1?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_2/BiasAddy
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_2/Sigmoidw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_2/dropout/Const?
dropout_2/dropout/MulMuldense_2/Sigmoid:y:0 dropout_2/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_2/dropout/Mulu
dropout_2/dropout/ShapeShapedense_2/Sigmoid:y:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shape?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype020
.dropout_2/dropout/random_uniform/RandomUniform?
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2"
 dropout_2/dropout/GreaterEqual/y?
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2 
dropout_2/dropout/GreaterEqual?
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_2/dropout/Cast?
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_2/dropout/Mul_1?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMuldropout_2/dropout/Mul_1:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/BiasAdds
IdentityIdentitydense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^board1/BiasAdd/ReadVariableOp^board1/Conv2D/ReadVariableOp^board2/BiasAdd/ReadVariableOp^board2/Conv2D/ReadVariableOp^board3/BiasAdd/ReadVariableOp^board3/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp ^fileconv/BiasAdd/ReadVariableOp^fileconv/Conv2D/ReadVariableOp!^largeconv/BiasAdd/ReadVariableOp ^largeconv/Conv2D/ReadVariableOp#^quarterconv/BiasAdd/ReadVariableOp"^quarterconv/Conv2D/ReadVariableOp ^rankconv/BiasAdd/ReadVariableOp^rankconv/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????: : : : : : : : : : : : : : : : : : : : : : 2>
board1/BiasAdd/ReadVariableOpboard1/BiasAdd/ReadVariableOp2<
board1/Conv2D/ReadVariableOpboard1/Conv2D/ReadVariableOp2>
board2/BiasAdd/ReadVariableOpboard2/BiasAdd/ReadVariableOp2<
board2/Conv2D/ReadVariableOpboard2/Conv2D/ReadVariableOp2>
board3/BiasAdd/ReadVariableOpboard3/BiasAdd/ReadVariableOp2<
board3/Conv2D/ReadVariableOpboard3/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2B
fileconv/BiasAdd/ReadVariableOpfileconv/BiasAdd/ReadVariableOp2@
fileconv/Conv2D/ReadVariableOpfileconv/Conv2D/ReadVariableOp2D
 largeconv/BiasAdd/ReadVariableOp largeconv/BiasAdd/ReadVariableOp2B
largeconv/Conv2D/ReadVariableOplargeconv/Conv2D/ReadVariableOp2H
"quarterconv/BiasAdd/ReadVariableOp"quarterconv/BiasAdd/ReadVariableOp2F
!quarterconv/Conv2D/ReadVariableOp!quarterconv/Conv2D/ReadVariableOp2B
rankconv/BiasAdd/ReadVariableOprankconv/BiasAdd/ReadVariableOp2@
rankconv/Conv2D/ReadVariableOprankconv/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
*__inference_fileconv_layer_call_fn_5792085

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_fileconv_layer_call_and_return_conditional_losses_57908642
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_quarterconv_layer_call_and_return_conditional_losses_5792116

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?_
?

D__inference_model_1_layer_call_and_return_conditional_losses_5791413

inputs(
board1_5791347:
board1_5791349:(
board2_5791352:
board2_5791354:(
board3_5791357:
board3_5791359:+
largeconv_5791362:
largeconv_5791364:-
quarterconv_5791367:!
quarterconv_5791369:*
rankconv_5791372:
rankconv_5791374:*
fileconv_5791377:
fileconv_5791379:!
dense_5791390:
??
dense_5791392:	?"
dense_1_5791395:	?@
dense_1_5791397:@!
dense_2_5791401:@ 
dense_2_5791403: !
dense_3_5791407: 
dense_3_5791409:
identity??board1/StatefulPartitionedCall?board2/StatefulPartitionedCall?board3/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall? fileconv/StatefulPartitionedCall?!largeconv/StatefulPartitionedCall?#quarterconv/StatefulPartitionedCall? rankconv/StatefulPartitionedCall?
board1/StatefulPartitionedCallStatefulPartitionedCallinputsboard1_5791347board1_5791349*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_board1_layer_call_and_return_conditional_losses_57907622 
board1/StatefulPartitionedCall?
board2/StatefulPartitionedCallStatefulPartitionedCall'board1/StatefulPartitionedCall:output:0board2_5791352board2_5791354*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_board2_layer_call_and_return_conditional_losses_57907792 
board2/StatefulPartitionedCall?
board3/StatefulPartitionedCallStatefulPartitionedCall'board2/StatefulPartitionedCall:output:0board3_5791357board3_5791359*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_board3_layer_call_and_return_conditional_losses_57907962 
board3/StatefulPartitionedCall?
!largeconv/StatefulPartitionedCallStatefulPartitionedCallinputslargeconv_5791362largeconv_5791364*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_largeconv_layer_call_and_return_conditional_losses_57908132#
!largeconv/StatefulPartitionedCall?
#quarterconv/StatefulPartitionedCallStatefulPartitionedCallinputsquarterconv_5791367quarterconv_5791369*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_quarterconv_layer_call_and_return_conditional_losses_57908302%
#quarterconv/StatefulPartitionedCall?
 rankconv/StatefulPartitionedCallStatefulPartitionedCallinputsrankconv_5791372rankconv_5791374*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_rankconv_layer_call_and_return_conditional_losses_57908472"
 rankconv/StatefulPartitionedCall?
 fileconv/StatefulPartitionedCallStatefulPartitionedCallinputsfileconv_5791377fileconv_5791379*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_fileconv_layer_call_and_return_conditional_losses_57908642"
 fileconv/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall)fileconv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_57908762
flatten/PartitionedCall?
flatten_1/PartitionedCallPartitionedCall)rankconv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_57908842
flatten_1/PartitionedCall?
flatten_2/PartitionedCallPartitionedCall,quarterconv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_57908922
flatten_2/PartitionedCall?
flatten_3/PartitionedCallPartitionedCall*largeconv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????H* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_57909002
flatten_3/PartitionedCall?
flatten_4/PartitionedCallPartitionedCall'board1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_57909082
flatten_4/PartitionedCall?
flatten_5/PartitionedCallPartitionedCall'board3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_57909162
flatten_5/PartitionedCall?
dense_bass/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0"flatten_2/PartitionedCall:output:0"flatten_3/PartitionedCall:output:0"flatten_4/PartitionedCall:output:0"flatten_5/PartitionedCall:output:0*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dense_bass_layer_call_and_return_conditional_losses_57909292
dense_bass/PartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall#dense_bass/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_57911732!
dropout/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_5791390dense_5791392*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_57909492
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_5791395dense_1_5791397*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_57909662!
dense_1/StatefulPartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_57909842#
!dropout_1/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_2_5791401dense_2_5791403*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_57909972!
dense_2/StatefulPartitionedCall?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_57910152#
!dropout_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_3_5791407dense_3_5791409*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_57910272!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^board1/StatefulPartitionedCall^board2/StatefulPartitionedCall^board3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall!^fileconv/StatefulPartitionedCall"^largeconv/StatefulPartitionedCall$^quarterconv/StatefulPartitionedCall!^rankconv/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????: : : : : : : : : : : : : : : : : : : : : : 2@
board1/StatefulPartitionedCallboard1/StatefulPartitionedCall2@
board2/StatefulPartitionedCallboard2/StatefulPartitionedCall2@
board3/StatefulPartitionedCallboard3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2D
 fileconv/StatefulPartitionedCall fileconv/StatefulPartitionedCall2F
!largeconv/StatefulPartitionedCall!largeconv/StatefulPartitionedCall2J
#quarterconv/StatefulPartitionedCall#quarterconv/StatefulPartitionedCall2D
 rankconv/StatefulPartitionedCall rankconv/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
D__inference_dense_1_layer_call_and_return_conditional_losses_5792310

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
G
+__inference_flatten_2_layer_call_fn_5792198

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_57908922
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_2_layer_call_and_return_conditional_losses_5792383

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:????????? 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
G
+__inference_dropout_2_layer_call_fn_5792388

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_57910992
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
D__inference_dense_3_layer_call_and_return_conditional_losses_5792403

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
F__inference_largeconv_layer_call_and_return_conditional_losses_5790813

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?7
?	
 __inference__traced_save_5792507
file_prefix,
(savev2_board1_kernel_read_readvariableop*
&savev2_board1_bias_read_readvariableop,
(savev2_board2_kernel_read_readvariableop*
&savev2_board2_bias_read_readvariableop.
*savev2_fileconv_kernel_read_readvariableop,
(savev2_fileconv_bias_read_readvariableop.
*savev2_rankconv_kernel_read_readvariableop,
(savev2_rankconv_bias_read_readvariableop1
-savev2_quarterconv_kernel_read_readvariableop/
+savev2_quarterconv_bias_read_readvariableop/
+savev2_largeconv_kernel_read_readvariableop-
)savev2_largeconv_bias_read_readvariableop,
(savev2_board3_kernel_read_readvariableop*
&savev2_board3_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Const_1?
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
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_board1_kernel_read_readvariableop&savev2_board1_bias_read_readvariableop(savev2_board2_kernel_read_readvariableop&savev2_board2_bias_read_readvariableop*savev2_fileconv_kernel_read_readvariableop(savev2_fileconv_bias_read_readvariableop*savev2_rankconv_kernel_read_readvariableop(savev2_rankconv_bias_read_readvariableop-savev2_quarterconv_kernel_read_readvariableop+savev2_quarterconv_bias_read_readvariableop+savev2_largeconv_kernel_read_readvariableop)savev2_largeconv_bias_read_readvariableop(savev2_board3_kernel_read_readvariableop&savev2_board3_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *'
dtypes
22
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :::::::::::::::
??:?:	?@:@:@ : : :: : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,	(
&
_output_shapes
:: 


_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
e
F__inference_dropout_2_layer_call_and_return_conditional_losses_5791015

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
D__inference_dense_3_layer_call_and_return_conditional_losses_5791027

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
b
F__inference_flatten_5_layer_call_and_return_conditional_losses_5790916

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????`   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????`2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
C__inference_board1_layer_call_and_return_conditional_losses_5790762

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_model_1_layer_call_fn_5791509	
state!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:
??

unknown_14:	?

unknown_15:	?@

unknown_16:@

unknown_17:@ 

unknown_18: 

unknown_19: 

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallstateunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_57914132
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:?????????

_user_specified_namestate
?
?
)__inference_dense_3_layer_call_fn_5792412

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_57910272
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
C__inference_board2_layer_call_and_return_conditional_losses_5792056

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
G
+__inference_flatten_1_layer_call_fn_5792187

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_57908842
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_1_layer_call_and_return_conditional_losses_5792182

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_5_layer_call_and_return_conditional_losses_5792226

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????`   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????`2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_5792336

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
b
D__inference_dropout_layer_call_and_return_conditional_losses_5792257

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_quarterconv_layer_call_fn_5792125

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_quarterconv_layer_call_and_return_conditional_losses_57908302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
e
F__inference_dropout_2_layer_call_and_return_conditional_losses_5792378

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
'__inference_dense_layer_call_fn_5792299

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_57909492
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
`
D__inference_flatten_layer_call_and_return_conditional_losses_5790876

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
)__inference_model_1_layer_call_fn_5791081	
state!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:
??

unknown_14:	?

unknown_15:	?@

unknown_16:@

unknown_17:@ 

unknown_18: 

unknown_19: 

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallstateunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_57910342
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:?????????

_user_specified_namestate
?
G
+__inference_dropout_1_layer_call_fn_5792341

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_57911252
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
e
F__inference_dropout_1_layer_call_and_return_conditional_losses_5792331

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
e
F__inference_dropout_1_layer_call_and_return_conditional_losses_5790984

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?_
?

D__inference_model_1_layer_call_and_return_conditional_losses_5791647	
state(
board1_5791581:
board1_5791583:(
board2_5791586:
board2_5791588:(
board3_5791591:
board3_5791593:+
largeconv_5791596:
largeconv_5791598:-
quarterconv_5791601:!
quarterconv_5791603:*
rankconv_5791606:
rankconv_5791608:*
fileconv_5791611:
fileconv_5791613:!
dense_5791624:
??
dense_5791626:	?"
dense_1_5791629:	?@
dense_1_5791631:@!
dense_2_5791635:@ 
dense_2_5791637: !
dense_3_5791641: 
dense_3_5791643:
identity??board1/StatefulPartitionedCall?board2/StatefulPartitionedCall?board3/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall? fileconv/StatefulPartitionedCall?!largeconv/StatefulPartitionedCall?#quarterconv/StatefulPartitionedCall? rankconv/StatefulPartitionedCall?
board1/StatefulPartitionedCallStatefulPartitionedCallstateboard1_5791581board1_5791583*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_board1_layer_call_and_return_conditional_losses_57907622 
board1/StatefulPartitionedCall?
board2/StatefulPartitionedCallStatefulPartitionedCall'board1/StatefulPartitionedCall:output:0board2_5791586board2_5791588*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_board2_layer_call_and_return_conditional_losses_57907792 
board2/StatefulPartitionedCall?
board3/StatefulPartitionedCallStatefulPartitionedCall'board2/StatefulPartitionedCall:output:0board3_5791591board3_5791593*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_board3_layer_call_and_return_conditional_losses_57907962 
board3/StatefulPartitionedCall?
!largeconv/StatefulPartitionedCallStatefulPartitionedCallstatelargeconv_5791596largeconv_5791598*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_largeconv_layer_call_and_return_conditional_losses_57908132#
!largeconv/StatefulPartitionedCall?
#quarterconv/StatefulPartitionedCallStatefulPartitionedCallstatequarterconv_5791601quarterconv_5791603*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_quarterconv_layer_call_and_return_conditional_losses_57908302%
#quarterconv/StatefulPartitionedCall?
 rankconv/StatefulPartitionedCallStatefulPartitionedCallstaterankconv_5791606rankconv_5791608*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_rankconv_layer_call_and_return_conditional_losses_57908472"
 rankconv/StatefulPartitionedCall?
 fileconv/StatefulPartitionedCallStatefulPartitionedCallstatefileconv_5791611fileconv_5791613*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_fileconv_layer_call_and_return_conditional_losses_57908642"
 fileconv/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall)fileconv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_57908762
flatten/PartitionedCall?
flatten_1/PartitionedCallPartitionedCall)rankconv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_57908842
flatten_1/PartitionedCall?
flatten_2/PartitionedCallPartitionedCall,quarterconv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_57908922
flatten_2/PartitionedCall?
flatten_3/PartitionedCallPartitionedCall*largeconv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????H* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_57909002
flatten_3/PartitionedCall?
flatten_4/PartitionedCallPartitionedCall'board1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_57909082
flatten_4/PartitionedCall?
flatten_5/PartitionedCallPartitionedCall'board3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_57909162
flatten_5/PartitionedCall?
dense_bass/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0"flatten_2/PartitionedCall:output:0"flatten_3/PartitionedCall:output:0"flatten_4/PartitionedCall:output:0"flatten_5/PartitionedCall:output:0*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dense_bass_layer_call_and_return_conditional_losses_57909292
dense_bass/PartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall#dense_bass/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_57911732!
dropout/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_5791624dense_5791626*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_57909492
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_5791629dense_1_5791631*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_57909662!
dense_1/StatefulPartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_57909842#
!dropout_1/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_2_5791635dense_2_5791637*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_57909972!
dense_2/StatefulPartitionedCall?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_57910152#
!dropout_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_3_5791641dense_3_5791643*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_57910272!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^board1/StatefulPartitionedCall^board2/StatefulPartitionedCall^board3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall!^fileconv/StatefulPartitionedCall"^largeconv/StatefulPartitionedCall$^quarterconv/StatefulPartitionedCall!^rankconv/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????: : : : : : : : : : : : : : : : : : : : : : 2@
board1/StatefulPartitionedCallboard1/StatefulPartitionedCall2@
board2/StatefulPartitionedCallboard2/StatefulPartitionedCall2@
board3/StatefulPartitionedCallboard3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2D
 fileconv/StatefulPartitionedCall fileconv/StatefulPartitionedCall2F
!largeconv/StatefulPartitionedCall!largeconv/StatefulPartitionedCall2J
#quarterconv/StatefulPartitionedCall#quarterconv/StatefulPartitionedCall2D
 rankconv/StatefulPartitionedCall rankconv/StatefulPartitionedCall:V R
/
_output_shapes
:?????????

_user_specified_namestate
?
b
F__inference_flatten_4_layer_call_and_return_conditional_losses_5792215

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
H__inference_quarterconv_layer_call_and_return_conditional_losses_5790830

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_2_layer_call_and_return_conditional_losses_5792193

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_rankconv_layer_call_and_return_conditional_losses_5792096

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
D__inference_dropout_layer_call_and_return_conditional_losses_5792269

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_model_1_layer_call_fn_5791976

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:
??

unknown_14:	?

unknown_15:	?@

unknown_16:@

unknown_17:@ 

unknown_18: 

unknown_19: 

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_57910342
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_fileconv_layer_call_and_return_conditional_losses_5790864

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?]
?

D__inference_model_1_layer_call_and_return_conditional_losses_5791578	
state(
board1_5791512:
board1_5791514:(
board2_5791517:
board2_5791519:(
board3_5791522:
board3_5791524:+
largeconv_5791527:
largeconv_5791529:-
quarterconv_5791532:!
quarterconv_5791534:*
rankconv_5791537:
rankconv_5791539:*
fileconv_5791542:
fileconv_5791544:!
dense_5791555:
??
dense_5791557:	?"
dense_1_5791560:	?@
dense_1_5791562:@!
dense_2_5791566:@ 
dense_2_5791568: !
dense_3_5791572: 
dense_3_5791574:
identity??board1/StatefulPartitionedCall?board2/StatefulPartitionedCall?board3/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall? fileconv/StatefulPartitionedCall?!largeconv/StatefulPartitionedCall?#quarterconv/StatefulPartitionedCall? rankconv/StatefulPartitionedCall?
board1/StatefulPartitionedCallStatefulPartitionedCallstateboard1_5791512board1_5791514*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_board1_layer_call_and_return_conditional_losses_57907622 
board1/StatefulPartitionedCall?
board2/StatefulPartitionedCallStatefulPartitionedCall'board1/StatefulPartitionedCall:output:0board2_5791517board2_5791519*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_board2_layer_call_and_return_conditional_losses_57907792 
board2/StatefulPartitionedCall?
board3/StatefulPartitionedCallStatefulPartitionedCall'board2/StatefulPartitionedCall:output:0board3_5791522board3_5791524*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_board3_layer_call_and_return_conditional_losses_57907962 
board3/StatefulPartitionedCall?
!largeconv/StatefulPartitionedCallStatefulPartitionedCallstatelargeconv_5791527largeconv_5791529*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_largeconv_layer_call_and_return_conditional_losses_57908132#
!largeconv/StatefulPartitionedCall?
#quarterconv/StatefulPartitionedCallStatefulPartitionedCallstatequarterconv_5791532quarterconv_5791534*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_quarterconv_layer_call_and_return_conditional_losses_57908302%
#quarterconv/StatefulPartitionedCall?
 rankconv/StatefulPartitionedCallStatefulPartitionedCallstaterankconv_5791537rankconv_5791539*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_rankconv_layer_call_and_return_conditional_losses_57908472"
 rankconv/StatefulPartitionedCall?
 fileconv/StatefulPartitionedCallStatefulPartitionedCallstatefileconv_5791542fileconv_5791544*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_fileconv_layer_call_and_return_conditional_losses_57908642"
 fileconv/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall)fileconv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_57908762
flatten/PartitionedCall?
flatten_1/PartitionedCallPartitionedCall)rankconv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_57908842
flatten_1/PartitionedCall?
flatten_2/PartitionedCallPartitionedCall,quarterconv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_57908922
flatten_2/PartitionedCall?
flatten_3/PartitionedCallPartitionedCall*largeconv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????H* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_57909002
flatten_3/PartitionedCall?
flatten_4/PartitionedCallPartitionedCall'board1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_57909082
flatten_4/PartitionedCall?
flatten_5/PartitionedCallPartitionedCall'board3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_57909162
flatten_5/PartitionedCall?
dense_bass/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0"flatten_2/PartitionedCall:output:0"flatten_3/PartitionedCall:output:0"flatten_4/PartitionedCall:output:0"flatten_5/PartitionedCall:output:0*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dense_bass_layer_call_and_return_conditional_losses_57909292
dense_bass/PartitionedCall?
dropout/PartitionedCallPartitionedCall#dense_bass/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_57909362
dropout/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_5791555dense_5791557*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_57909492
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_5791560dense_1_5791562*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_57909662!
dense_1/StatefulPartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_57909842#
!dropout_1/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_2_5791566dense_2_5791568*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_57909972!
dense_2/StatefulPartitionedCall?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_57910152#
!dropout_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_3_5791572dense_3_5791574*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_57910272!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^board1/StatefulPartitionedCall^board2/StatefulPartitionedCall^board3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall!^fileconv/StatefulPartitionedCall"^largeconv/StatefulPartitionedCall$^quarterconv/StatefulPartitionedCall!^rankconv/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????: : : : : : : : : : : : : : : : : : : : : : 2@
board1/StatefulPartitionedCallboard1/StatefulPartitionedCall2@
board2/StatefulPartitionedCallboard2/StatefulPartitionedCall2@
board3/StatefulPartitionedCallboard3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2D
 fileconv/StatefulPartitionedCall fileconv/StatefulPartitionedCall2F
!largeconv/StatefulPartitionedCall!largeconv/StatefulPartitionedCall2J
#quarterconv/StatefulPartitionedCall#quarterconv/StatefulPartitionedCall2D
 rankconv/StatefulPartitionedCall rankconv/StatefulPartitionedCall:V R
/
_output_shapes
:?????????

_user_specified_namestate
?
?
F__inference_largeconv_layer_call_and_return_conditional_losses_5792136

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
C__inference_board3_layer_call_and_return_conditional_losses_5792156

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
D__inference_dense_2_layer_call_and_return_conditional_losses_5792357

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
b
)__inference_dropout_layer_call_fn_5792279

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_57911732
StatefulPartitionedCall|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
)__inference_dense_2_layer_call_fn_5792366

inputs
unknown:@ 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_57909972
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
b
D__inference_dropout_layer_call_and_return_conditional_losses_5790936

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_1_layer_call_and_return_conditional_losses_5790884

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_5791698	
state!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7:
	unknown_8:#
	unknown_9:

unknown_10:$

unknown_11:

unknown_12:

unknown_13:
??

unknown_14:	?

unknown_15:	?@

unknown_16:@

unknown_17:@ 

unknown_18: 

unknown_19: 

unknown_20:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallstateunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20*"
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*8
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_57907442
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????: : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
/
_output_shapes
:?????????

_user_specified_namestate
?
?
)__inference_dense_1_layer_call_fn_5792319

inputs
unknown:	?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_57909662
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_2_layer_call_and_return_conditional_losses_5790892

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_2_layer_call_and_return_conditional_losses_5791099

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:????????? 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
G__inference_dense_bass_layer_call_and_return_conditional_losses_5790929

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputsinputs_1inputs_2inputs_3inputs_4inputs_5concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesu
s:?????????:?????????:?????????:?????????H:??????????:?????????`:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????H
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????`
 
_user_specified_nameinputs
?
?
(__inference_board2_layer_call_fn_5792065

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_board2_layer_call_and_return_conditional_losses_57907792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
(__inference_board1_layer_call_fn_5792045

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_board1_layer_call_and_return_conditional_losses_57907622
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
G
+__inference_flatten_3_layer_call_fn_5792209

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????H* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_57909002
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????H2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_2_layer_call_fn_5792393

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_57910152
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:????????? 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
G
+__inference_flatten_5_layer_call_fn_5792231

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_57909162
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????`2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_5791125

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
+__inference_largeconv_layer_call_fn_5792145

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_largeconv_layer_call_and_return_conditional_losses_57908132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
E
)__inference_dropout_layer_call_fn_5792274

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_57909362
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
C__inference_board3_layer_call_and_return_conditional_losses_5790796

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?]
?

D__inference_model_1_layer_call_and_return_conditional_losses_5791034

inputs(
board1_5790763:
board1_5790765:(
board2_5790780:
board2_5790782:(
board3_5790797:
board3_5790799:+
largeconv_5790814:
largeconv_5790816:-
quarterconv_5790831:!
quarterconv_5790833:*
rankconv_5790848:
rankconv_5790850:*
fileconv_5790865:
fileconv_5790867:!
dense_5790950:
??
dense_5790952:	?"
dense_1_5790967:	?@
dense_1_5790969:@!
dense_2_5790998:@ 
dense_2_5791000: !
dense_3_5791028: 
dense_3_5791030:
identity??board1/StatefulPartitionedCall?board2/StatefulPartitionedCall?board3/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall? fileconv/StatefulPartitionedCall?!largeconv/StatefulPartitionedCall?#quarterconv/StatefulPartitionedCall? rankconv/StatefulPartitionedCall?
board1/StatefulPartitionedCallStatefulPartitionedCallinputsboard1_5790763board1_5790765*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_board1_layer_call_and_return_conditional_losses_57907622 
board1/StatefulPartitionedCall?
board2/StatefulPartitionedCallStatefulPartitionedCall'board1/StatefulPartitionedCall:output:0board2_5790780board2_5790782*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_board2_layer_call_and_return_conditional_losses_57907792 
board2/StatefulPartitionedCall?
board3/StatefulPartitionedCallStatefulPartitionedCall'board2/StatefulPartitionedCall:output:0board3_5790797board3_5790799*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_board3_layer_call_and_return_conditional_losses_57907962 
board3/StatefulPartitionedCall?
!largeconv/StatefulPartitionedCallStatefulPartitionedCallinputslargeconv_5790814largeconv_5790816*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_largeconv_layer_call_and_return_conditional_losses_57908132#
!largeconv/StatefulPartitionedCall?
#quarterconv/StatefulPartitionedCallStatefulPartitionedCallinputsquarterconv_5790831quarterconv_5790833*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_quarterconv_layer_call_and_return_conditional_losses_57908302%
#quarterconv/StatefulPartitionedCall?
 rankconv/StatefulPartitionedCallStatefulPartitionedCallinputsrankconv_5790848rankconv_5790850*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_rankconv_layer_call_and_return_conditional_losses_57908472"
 rankconv/StatefulPartitionedCall?
 fileconv/StatefulPartitionedCallStatefulPartitionedCallinputsfileconv_5790865fileconv_5790867*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_fileconv_layer_call_and_return_conditional_losses_57908642"
 fileconv/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall)fileconv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_57908762
flatten/PartitionedCall?
flatten_1/PartitionedCallPartitionedCall)rankconv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_57908842
flatten_1/PartitionedCall?
flatten_2/PartitionedCallPartitionedCall,quarterconv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_57908922
flatten_2/PartitionedCall?
flatten_3/PartitionedCallPartitionedCall*largeconv/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????H* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_57909002
flatten_3/PartitionedCall?
flatten_4/PartitionedCallPartitionedCall'board1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_57909082
flatten_4/PartitionedCall?
flatten_5/PartitionedCallPartitionedCall'board3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????`* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_5_layer_call_and_return_conditional_losses_57909162
flatten_5/PartitionedCall?
dense_bass/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0"flatten_2/PartitionedCall:output:0"flatten_3/PartitionedCall:output:0"flatten_4/PartitionedCall:output:0"flatten_5/PartitionedCall:output:0*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dense_bass_layer_call_and_return_conditional_losses_57909292
dense_bass/PartitionedCall?
dropout/PartitionedCallPartitionedCall#dense_bass/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_57909362
dropout/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_5790950dense_5790952*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_57909492
dense/StatefulPartitionedCall?
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_5790967dense_1_5790969*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_57909662!
dense_1/StatefulPartitionedCall?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_57909842#
!dropout_1/StatefulPartitionedCall?
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_2_5790998dense_2_5791000*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_57909972!
dense_2/StatefulPartitionedCall?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_2_layer_call_and_return_conditional_losses_57910152#
!dropout_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_3_5791028dense_3_5791030*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dense_3_layer_call_and_return_conditional_losses_57910272!
dense_3/StatefulPartitionedCall?
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^board1/StatefulPartitionedCall^board2/StatefulPartitionedCall^board3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall!^fileconv/StatefulPartitionedCall"^largeconv/StatefulPartitionedCall$^quarterconv/StatefulPartitionedCall!^rankconv/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????: : : : : : : : : : : : : : : : : : : : : : 2@
board1/StatefulPartitionedCallboard1/StatefulPartitionedCall2@
board2/StatefulPartitionedCallboard2/StatefulPartitionedCall2@
board3/StatefulPartitionedCallboard3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2D
 fileconv/StatefulPartitionedCall fileconv/StatefulPartitionedCall2F
!largeconv/StatefulPartitionedCall!largeconv/StatefulPartitionedCall2J
#quarterconv/StatefulPartitionedCall#quarterconv/StatefulPartitionedCall2D
 rankconv/StatefulPartitionedCall rankconv/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_1_layer_call_fn_5792346

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_57909842
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
G__inference_dense_bass_layer_call_and_return_conditional_losses_5792242
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputs_0inputs_1inputs_2inputs_3inputs_4inputs_5concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesu
s:?????????:?????????:?????????:?????????H:??????????:?????????`:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????H
"
_user_specified_name
inputs/3:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:?????????`
"
_user_specified_name
inputs/5
?
`
D__inference_flatten_layer_call_and_return_conditional_losses_5792171

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
D__inference_dropout_layer_call_and_return_conditional_losses_5791173

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_4_layer_call_and_return_conditional_losses_5790908

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?f
?
#__inference__traced_restore_5792589
file_prefix8
assignvariableop_board1_kernel:,
assignvariableop_1_board1_bias::
 assignvariableop_2_board2_kernel:,
assignvariableop_3_board2_bias:<
"assignvariableop_4_fileconv_kernel:.
 assignvariableop_5_fileconv_bias:<
"assignvariableop_6_rankconv_kernel:.
 assignvariableop_7_rankconv_bias:?
%assignvariableop_8_quarterconv_kernel:1
#assignvariableop_9_quarterconv_bias:>
$assignvariableop_10_largeconv_kernel:0
"assignvariableop_11_largeconv_bias:;
!assignvariableop_12_board3_kernel:-
assignvariableop_13_board3_bias:4
 assignvariableop_14_dense_kernel:
??-
assignvariableop_15_dense_bias:	?5
"assignvariableop_16_dense_1_kernel:	?@.
 assignvariableop_17_dense_1_bias:@4
"assignvariableop_18_dense_2_kernel:@ .
 assignvariableop_19_dense_2_bias: 4
"assignvariableop_20_dense_3_kernel: .
 assignvariableop_21_dense_3_bias:#
assignvariableop_22_total: #
assignvariableop_23_count: 
identity_25??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?

value?
B?
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_board1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_board1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp assignvariableop_2_board2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_board2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp"assignvariableop_4_fileconv_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp assignvariableop_5_fileconv_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp"assignvariableop_6_rankconv_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_rankconv_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp%assignvariableop_8_quarterconv_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp#assignvariableop_9_quarterconv_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp$assignvariableop_10_largeconv_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp"assignvariableop_11_largeconv_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp!assignvariableop_12_board3_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_board3_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp assignvariableop_14_dense_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_dense_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp"assignvariableop_16_dense_1_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp assignvariableop_17_dense_1_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp"assignvariableop_18_dense_2_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp assignvariableop_19_dense_2_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp"assignvariableop_20_dense_3_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp assignvariableop_21_dense_3_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOpassignvariableop_22_totalIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpassignvariableop_23_countIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_239
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_24f
Identity_25IdentityIdentity_24:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_25?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_25Identity_25:output:0*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232(
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
?
?
D__inference_dense_2_layer_call_and_return_conditional_losses_5790997

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:????????? 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
??
?
D__inference_model_1_layer_call_and_return_conditional_losses_5791927

inputs?
%board1_conv2d_readvariableop_resource:4
&board1_biasadd_readvariableop_resource:?
%board2_conv2d_readvariableop_resource:4
&board2_biasadd_readvariableop_resource:?
%board3_conv2d_readvariableop_resource:4
&board3_biasadd_readvariableop_resource:B
(largeconv_conv2d_readvariableop_resource:7
)largeconv_biasadd_readvariableop_resource:D
*quarterconv_conv2d_readvariableop_resource:9
+quarterconv_biasadd_readvariableop_resource:A
'rankconv_conv2d_readvariableop_resource:6
(rankconv_biasadd_readvariableop_resource:A
'fileconv_conv2d_readvariableop_resource:6
(fileconv_biasadd_readvariableop_resource:8
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?9
&dense_1_matmul_readvariableop_resource:	?@5
'dense_1_biasadd_readvariableop_resource:@8
&dense_2_matmul_readvariableop_resource:@ 5
'dense_2_biasadd_readvariableop_resource: 8
&dense_3_matmul_readvariableop_resource: 5
'dense_3_biasadd_readvariableop_resource:
identity??board1/BiasAdd/ReadVariableOp?board1/Conv2D/ReadVariableOp?board2/BiasAdd/ReadVariableOp?board2/Conv2D/ReadVariableOp?board3/BiasAdd/ReadVariableOp?board3/Conv2D/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOp?fileconv/BiasAdd/ReadVariableOp?fileconv/Conv2D/ReadVariableOp? largeconv/BiasAdd/ReadVariableOp?largeconv/Conv2D/ReadVariableOp?"quarterconv/BiasAdd/ReadVariableOp?!quarterconv/Conv2D/ReadVariableOp?rankconv/BiasAdd/ReadVariableOp?rankconv/Conv2D/ReadVariableOp?
board1/Conv2D/ReadVariableOpReadVariableOp%board1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
board1/Conv2D/ReadVariableOp?
board1/Conv2DConv2Dinputs$board1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
board1/Conv2D?
board1/BiasAdd/ReadVariableOpReadVariableOp&board1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
board1/BiasAdd/ReadVariableOp?
board1/BiasAddBiasAddboard1/Conv2D:output:0%board1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
board1/BiasAddu
board1/ReluReluboard1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
board1/Relu?
board2/Conv2D/ReadVariableOpReadVariableOp%board2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
board2/Conv2D/ReadVariableOp?
board2/Conv2DConv2Dboard1/Relu:activations:0$board2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
board2/Conv2D?
board2/BiasAdd/ReadVariableOpReadVariableOp&board2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
board2/BiasAdd/ReadVariableOp?
board2/BiasAddBiasAddboard2/Conv2D:output:0%board2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
board2/BiasAddu
board2/ReluReluboard2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
board2/Relu?
board3/Conv2D/ReadVariableOpReadVariableOp%board3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
board3/Conv2D/ReadVariableOp?
board3/Conv2DConv2Dboard2/Relu:activations:0$board3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
board3/Conv2D?
board3/BiasAdd/ReadVariableOpReadVariableOp&board3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
board3/BiasAdd/ReadVariableOp?
board3/BiasAddBiasAddboard3/Conv2D:output:0%board3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
board3/BiasAddu
board3/ReluReluboard3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
board3/Relu?
largeconv/Conv2D/ReadVariableOpReadVariableOp(largeconv_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02!
largeconv/Conv2D/ReadVariableOp?
largeconv/Conv2DConv2Dinputs'largeconv/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
largeconv/Conv2D?
 largeconv/BiasAdd/ReadVariableOpReadVariableOp)largeconv_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 largeconv/BiasAdd/ReadVariableOp?
largeconv/BiasAddBiasAddlargeconv/Conv2D:output:0(largeconv/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
largeconv/BiasAdd~
largeconv/ReluRelulargeconv/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
largeconv/Relu?
!quarterconv/Conv2D/ReadVariableOpReadVariableOp*quarterconv_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02#
!quarterconv/Conv2D/ReadVariableOp?
quarterconv/Conv2DConv2Dinputs)quarterconv/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
quarterconv/Conv2D?
"quarterconv/BiasAdd/ReadVariableOpReadVariableOp+quarterconv_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02$
"quarterconv/BiasAdd/ReadVariableOp?
quarterconv/BiasAddBiasAddquarterconv/Conv2D:output:0*quarterconv/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
quarterconv/BiasAdd?
quarterconv/ReluReluquarterconv/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
quarterconv/Relu?
rankconv/Conv2D/ReadVariableOpReadVariableOp'rankconv_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
rankconv/Conv2D/ReadVariableOp?
rankconv/Conv2DConv2Dinputs&rankconv/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
rankconv/Conv2D?
rankconv/BiasAdd/ReadVariableOpReadVariableOp(rankconv_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
rankconv/BiasAdd/ReadVariableOp?
rankconv/BiasAddBiasAddrankconv/Conv2D:output:0'rankconv/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
rankconv/BiasAdd{
rankconv/ReluRelurankconv/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
rankconv/Relu?
fileconv/Conv2D/ReadVariableOpReadVariableOp'fileconv_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
fileconv/Conv2D/ReadVariableOp?
fileconv/Conv2DConv2Dinputs&fileconv/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
fileconv/Conv2D?
fileconv/BiasAdd/ReadVariableOpReadVariableOp(fileconv_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
fileconv/BiasAdd/ReadVariableOp?
fileconv/BiasAddBiasAddfileconv/Conv2D:output:0'fileconv/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
fileconv/BiasAdd{
fileconv/ReluRelufileconv/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
fileconv/Reluo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten/Const?
flatten/ReshapeReshapefileconv/Relu:activations:0flatten/Const:output:0*
T0*'
_output_shapes
:?????????2
flatten/Reshapes
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_1/Const?
flatten_1/ReshapeReshaperankconv/Relu:activations:0flatten_1/Const:output:0*
T0*'
_output_shapes
:?????????2
flatten_1/Reshapes
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_2/Const?
flatten_2/ReshapeReshapequarterconv/Relu:activations:0flatten_2/Const:output:0*
T0*'
_output_shapes
:?????????2
flatten_2/Reshapes
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????H   2
flatten_3/Const?
flatten_3/ReshapeReshapelargeconv/Relu:activations:0flatten_3/Const:output:0*
T0*'
_output_shapes
:?????????H2
flatten_3/Reshapes
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@  2
flatten_4/Const?
flatten_4/ReshapeReshapeboard1/Relu:activations:0flatten_4/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_4/Reshapes
flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"????`   2
flatten_5/Const?
flatten_5/ReshapeReshapeboard3/Relu:activations:0flatten_5/Const:output:0*
T0*'
_output_shapes
:?????????`2
flatten_5/Reshaper
dense_bass/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
dense_bass/concat/axis?
dense_bass/concatConcatV2flatten/Reshape:output:0flatten_1/Reshape:output:0flatten_2/Reshape:output:0flatten_3/Reshape:output:0flatten_4/Reshape:output:0flatten_5/Reshape:output:0dense_bass/concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????2
dense_bass/concats
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout/dropout/Const?
dropout/dropout/MulMuldense_bass/concat:output:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/dropout/Mulx
dropout/dropout/ShapeShapedense_bass/concat:output:0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/dropout/Mul_1?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMuldropout/dropout/Mul_1:z:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAddt
dense/SigmoidSigmoiddense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense/Sigmoid?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMuldense/Sigmoid:y:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/BiasAddy
dense_1/SigmoidSigmoiddense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
dense_1/Sigmoidw
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_1/dropout/Const?
dropout_1/dropout/MulMuldense_1/Sigmoid:y:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@2
dropout_1/dropout/Mulu
dropout_1/dropout/ShapeShapedense_1/Sigmoid:y:0*
T0*
_output_shapes
:2
dropout_1/dropout/Shape?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype020
.dropout_1/dropout/random_uniform/RandomUniform?
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2"
 dropout_1/dropout/GreaterEqual/y?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@2 
dropout_1/dropout/GreaterEqual?
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@2
dropout_1/dropout/Cast?
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@2
dropout_1/dropout/Mul_1?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_2/BiasAddy
dense_2/SigmoidSigmoiddense_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
dense_2/Sigmoidw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?8??2
dropout_2/dropout/Const?
dropout_2/dropout/MulMuldense_2/Sigmoid:y:0 dropout_2/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout_2/dropout/Mulu
dropout_2/dropout/ShapeShapedense_2/Sigmoid:y:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shape?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype020
.dropout_2/dropout/random_uniform/RandomUniform?
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???=2"
 dropout_2/dropout/GreaterEqual/y?
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2 
dropout_2/dropout/GreaterEqual?
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout_2/dropout/Cast?
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout_2/dropout/Mul_1?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMuldropout_2/dropout/Mul_1:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/BiasAdds
IdentityIdentitydense_3/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^board1/BiasAdd/ReadVariableOp^board1/Conv2D/ReadVariableOp^board2/BiasAdd/ReadVariableOp^board2/Conv2D/ReadVariableOp^board3/BiasAdd/ReadVariableOp^board3/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp ^fileconv/BiasAdd/ReadVariableOp^fileconv/Conv2D/ReadVariableOp!^largeconv/BiasAdd/ReadVariableOp ^largeconv/Conv2D/ReadVariableOp#^quarterconv/BiasAdd/ReadVariableOp"^quarterconv/Conv2D/ReadVariableOp ^rankconv/BiasAdd/ReadVariableOp^rankconv/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????: : : : : : : : : : : : : : : : : : : : : : 2>
board1/BiasAdd/ReadVariableOpboard1/BiasAdd/ReadVariableOp2<
board1/Conv2D/ReadVariableOpboard1/Conv2D/ReadVariableOp2>
board2/BiasAdd/ReadVariableOpboard2/BiasAdd/ReadVariableOp2<
board2/Conv2D/ReadVariableOpboard2/Conv2D/ReadVariableOp2>
board3/BiasAdd/ReadVariableOpboard3/BiasAdd/ReadVariableOp2<
board3/Conv2D/ReadVariableOpboard3/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2B
fileconv/BiasAdd/ReadVariableOpfileconv/BiasAdd/ReadVariableOp2@
fileconv/Conv2D/ReadVariableOpfileconv/Conv2D/ReadVariableOp2D
 largeconv/BiasAdd/ReadVariableOp largeconv/BiasAdd/ReadVariableOp2B
largeconv/Conv2D/ReadVariableOplargeconv/Conv2D/ReadVariableOp2H
"quarterconv/BiasAdd/ReadVariableOp"quarterconv/BiasAdd/ReadVariableOp2F
!quarterconv/Conv2D/ReadVariableOp!quarterconv/Conv2D/ReadVariableOp2B
rankconv/BiasAdd/ReadVariableOprankconv/BiasAdd/ReadVariableOp2@
rankconv/Conv2D/ReadVariableOprankconv/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
D__inference_dense_1_layer_call_and_return_conditional_losses_5790966

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_rankconv_layer_call_fn_5792105

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_rankconv_layer_call_and_return_conditional_losses_57908472
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_3_layer_call_and_return_conditional_losses_5790900

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????H   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????H2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????H2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
C__inference_board1_layer_call_and_return_conditional_losses_5792036

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
G
+__inference_flatten_4_layer_call_fn_5792220

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_flatten_4_layer_call_and_return_conditional_losses_57909082
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
F__inference_flatten_3_layer_call_and_return_conditional_losses_5792204

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????H   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????H2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????H2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
B__inference_dense_layer_call_and_return_conditional_losses_5792290

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoidg
IdentityIdentitySigmoid:y:0^NoOp*
T0*(
_output_shapes
:??????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_board3_layer_call_fn_5792165

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_board3_layer_call_and_return_conditional_losses_57907962
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
,__inference_dense_bass_layer_call_fn_5792252
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
identity?
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_dense_bass_layer_call_and_return_conditional_losses_57909292
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesu
s:?????????:?????????:?????????:?????????H:??????????:?????????`:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:?????????H
"
_user_specified_name
inputs/3:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/4:QM
'
_output_shapes
:?????????`
"
_user_specified_name
inputs/5
?
?
E__inference_rankconv_layer_call_and_return_conditional_losses_5790847

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
?
state6
serving_default_state:0?????????;
dense_30
StatefulPartitionedCall:0?????????tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
layer_with_weights-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer_with_weights-7
layer-16
layer_with_weights-8
layer-17
layer-18
layer_with_weights-9
layer-19
layer-20
layer_with_weights-10
layer-21
	optimizer
loss
trainable_variables
regularization_losses
	variables
	keras_api

signatures
+?&call_and_return_all_conditional_losses
?__call__
?_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
?

kernel
bias
 trainable_variables
!regularization_losses
"	variables
#	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

$kernel
%bias
&trainable_variables
'regularization_losses
(	variables
)	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

*kernel
+bias
,trainable_variables
-regularization_losses
.	variables
/	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

0kernel
1bias
2trainable_variables
3regularization_losses
4	variables
5	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

6kernel
7bias
8trainable_variables
9regularization_losses
:	variables
;	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

<kernel
=bias
>trainable_variables
?regularization_losses
@	variables
A	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

Bkernel
Cbias
Dtrainable_variables
Eregularization_losses
F	variables
G	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
Htrainable_variables
Iregularization_losses
J	variables
K	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
Ltrainable_variables
Mregularization_losses
N	variables
O	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
Ptrainable_variables
Qregularization_losses
R	variables
S	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
Ttrainable_variables
Uregularization_losses
V	variables
W	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
Xtrainable_variables
Yregularization_losses
Z	variables
[	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
\trainable_variables
]regularization_losses
^	variables
_	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
`trainable_variables
aregularization_losses
b	variables
c	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
dtrainable_variables
eregularization_losses
f	variables
g	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

hkernel
ibias
jtrainable_variables
kregularization_losses
l	variables
m	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

nkernel
obias
ptrainable_variables
qregularization_losses
r	variables
s	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
ttrainable_variables
uregularization_losses
v	variables
w	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?

xkernel
ybias
ztrainable_variables
{regularization_losses
|	variables
}	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
~trainable_variables
regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
?
?kernel
	?bias
?trainable_variables
?regularization_losses
?	variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"
_tf_keras_layer
"
	optimizer
 "
trackable_list_wrapper
?
0
1
$2
%3
*4
+5
06
17
68
79
<10
=11
B12
C13
h14
i15
n16
o17
x18
y19
?20
?21"
trackable_list_wrapper
 "
trackable_list_wrapper
?
0
1
$2
%3
*4
+5
06
17
68
79
<10
=11
B12
C13
h14
i15
n16
o17
x18
y19
?20
?21"
trackable_list_wrapper
?
trainable_variables
?layers
regularization_losses
?non_trainable_variables
?layer_metrics
	variables
?metrics
 ?layer_regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
':%2board1/kernel
:2board1/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
 trainable_variables
?layers
!regularization_losses
?non_trainable_variables
?layer_metrics
"	variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
':%2board2/kernel
:2board2/bias
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
?
&trainable_variables
?layers
'regularization_losses
?non_trainable_variables
?layer_metrics
(	variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):'2fileconv/kernel
:2fileconv/bias
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
?
,trainable_variables
?layers
-regularization_losses
?non_trainable_variables
?layer_metrics
.	variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
):'2rankconv/kernel
:2rankconv/bias
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
?
2trainable_variables
?layers
3regularization_losses
?non_trainable_variables
?layer_metrics
4	variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
,:*2quarterconv/kernel
:2quarterconv/bias
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
?
8trainable_variables
?layers
9regularization_losses
?non_trainable_variables
?layer_metrics
:	variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
*:(2largeconv/kernel
:2largeconv/bias
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
?
>trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics
@	variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
':%2board3/kernel
:2board3/bias
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
?
Dtrainable_variables
?layers
Eregularization_losses
?non_trainable_variables
?layer_metrics
F	variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Htrainable_variables
?layers
Iregularization_losses
?non_trainable_variables
?layer_metrics
J	variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Ltrainable_variables
?layers
Mregularization_losses
?non_trainable_variables
?layer_metrics
N	variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Ptrainable_variables
?layers
Qregularization_losses
?non_trainable_variables
?layer_metrics
R	variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Ttrainable_variables
?layers
Uregularization_losses
?non_trainable_variables
?layer_metrics
V	variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Xtrainable_variables
?layers
Yregularization_losses
?non_trainable_variables
?layer_metrics
Z	variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
\trainable_variables
?layers
]regularization_losses
?non_trainable_variables
?layer_metrics
^	variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
`trainable_variables
?layers
aregularization_losses
?non_trainable_variables
?layer_metrics
b	variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
dtrainable_variables
?layers
eregularization_losses
?non_trainable_variables
?layer_metrics
f	variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :
??2dense/kernel
:?2
dense/bias
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
?
jtrainable_variables
?layers
kregularization_losses
?non_trainable_variables
?layer_metrics
l	variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?@2dense_1/kernel
:@2dense_1/bias
.
n0
o1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
n0
o1"
trackable_list_wrapper
?
ptrainable_variables
?layers
qregularization_losses
?non_trainable_variables
?layer_metrics
r	variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
ttrainable_variables
?layers
uregularization_losses
?non_trainable_variables
?layer_metrics
v	variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :@ 2dense_2/kernel
: 2dense_2/bias
.
x0
y1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
x0
y1"
trackable_list_wrapper
?
ztrainable_variables
?layers
{regularization_losses
?non_trainable_variables
?layer_metrics
|	variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
~trainable_variables
?layers
regularization_losses
?non_trainable_variables
?layer_metrics
?	variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 : 2dense_3/kernel
:2dense_3/bias
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
?
?trainable_variables
?layers
?regularization_losses
?non_trainable_variables
?layer_metrics
?	variables
?metrics
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
?0"
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
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
?2?
D__inference_model_1_layer_call_and_return_conditional_losses_5791809
D__inference_model_1_layer_call_and_return_conditional_losses_5791927
D__inference_model_1_layer_call_and_return_conditional_losses_5791578
D__inference_model_1_layer_call_and_return_conditional_losses_5791647?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_model_1_layer_call_fn_5791081
)__inference_model_1_layer_call_fn_5791976
)__inference_model_1_layer_call_fn_5792025
)__inference_model_1_layer_call_fn_5791509?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
"__inference__wrapped_model_5790744state"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_board1_layer_call_and_return_conditional_losses_5792036?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_board1_layer_call_fn_5792045?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_board2_layer_call_and_return_conditional_losses_5792056?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_board2_layer_call_fn_5792065?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_fileconv_layer_call_and_return_conditional_losses_5792076?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_fileconv_layer_call_fn_5792085?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
E__inference_rankconv_layer_call_and_return_conditional_losses_5792096?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_rankconv_layer_call_fn_5792105?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
H__inference_quarterconv_layer_call_and_return_conditional_losses_5792116?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
-__inference_quarterconv_layer_call_fn_5792125?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_largeconv_layer_call_and_return_conditional_losses_5792136?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_largeconv_layer_call_fn_5792145?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_board3_layer_call_and_return_conditional_losses_5792156?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
(__inference_board3_layer_call_fn_5792165?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_flatten_layer_call_and_return_conditional_losses_5792171?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_flatten_layer_call_fn_5792176?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_flatten_1_layer_call_and_return_conditional_losses_5792182?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_flatten_1_layer_call_fn_5792187?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_flatten_2_layer_call_and_return_conditional_losses_5792193?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_flatten_2_layer_call_fn_5792198?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_flatten_3_layer_call_and_return_conditional_losses_5792204?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_flatten_3_layer_call_fn_5792209?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_flatten_4_layer_call_and_return_conditional_losses_5792215?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_flatten_4_layer_call_fn_5792220?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_flatten_5_layer_call_and_return_conditional_losses_5792226?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_flatten_5_layer_call_fn_5792231?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_dense_bass_layer_call_and_return_conditional_losses_5792242?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_dense_bass_layer_call_fn_5792252?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dropout_layer_call_and_return_conditional_losses_5792257
D__inference_dropout_layer_call_and_return_conditional_losses_5792269?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
)__inference_dropout_layer_call_fn_5792274
)__inference_dropout_layer_call_fn_5792279?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_dense_layer_call_and_return_conditional_losses_5792290?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
'__inference_dense_layer_call_fn_5792299?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_dense_1_layer_call_and_return_conditional_losses_5792310?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_1_layer_call_fn_5792319?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dropout_1_layer_call_and_return_conditional_losses_5792331
F__inference_dropout_1_layer_call_and_return_conditional_losses_5792336?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_dropout_1_layer_call_fn_5792341
+__inference_dropout_1_layer_call_fn_5792346?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dense_2_layer_call_and_return_conditional_losses_5792357?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_2_layer_call_fn_5792366?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_dropout_2_layer_call_and_return_conditional_losses_5792378
F__inference_dropout_2_layer_call_and_return_conditional_losses_5792383?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_dropout_2_layer_call_fn_5792388
+__inference_dropout_2_layer_call_fn_5792393?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dense_3_layer_call_and_return_conditional_losses_5792403?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dense_3_layer_call_fn_5792412?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
%__inference_signature_wrapper_5791698state"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
"__inference__wrapped_model_5790744?$%BC<=6701*+hinoxy??6?3
,?)
'?$
state?????????
? "1?.
,
dense_3!?
dense_3??????????
C__inference_board1_layer_call_and_return_conditional_losses_5792036l7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
(__inference_board1_layer_call_fn_5792045_7?4
-?*
(?%
inputs?????????
? " ???????????
C__inference_board2_layer_call_and_return_conditional_losses_5792056l$%7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
(__inference_board2_layer_call_fn_5792065_$%7?4
-?*
(?%
inputs?????????
? " ???????????
C__inference_board3_layer_call_and_return_conditional_losses_5792156lBC7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
(__inference_board3_layer_call_fn_5792165_BC7?4
-?*
(?%
inputs?????????
? " ???????????
D__inference_dense_1_layer_call_and_return_conditional_losses_5792310]no0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? }
)__inference_dense_1_layer_call_fn_5792319Pno0?-
&?#
!?
inputs??????????
? "??????????@?
D__inference_dense_2_layer_call_and_return_conditional_losses_5792357\xy/?,
%?"
 ?
inputs?????????@
? "%?"
?
0????????? 
? |
)__inference_dense_2_layer_call_fn_5792366Oxy/?,
%?"
 ?
inputs?????????@
? "?????????? ?
D__inference_dense_3_layer_call_and_return_conditional_losses_5792403^??/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? ~
)__inference_dense_3_layer_call_fn_5792412Q??/?,
%?"
 ?
inputs????????? 
? "???????????
G__inference_dense_bass_layer_call_and_return_conditional_losses_5792242????
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????H
#? 
inputs/4??????????
"?
inputs/5?????????`
? "&?#
?
0??????????
? ?
,__inference_dense_bass_layer_call_fn_5792252????
???
???
"?
inputs/0?????????
"?
inputs/1?????????
"?
inputs/2?????????
"?
inputs/3?????????H
#? 
inputs/4??????????
"?
inputs/5?????????`
? "????????????
B__inference_dense_layer_call_and_return_conditional_losses_5792290^hi0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? |
'__inference_dense_layer_call_fn_5792299Qhi0?-
&?#
!?
inputs??????????
? "????????????
F__inference_dropout_1_layer_call_and_return_conditional_losses_5792331\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? ?
F__inference_dropout_1_layer_call_and_return_conditional_losses_5792336\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ~
+__inference_dropout_1_layer_call_fn_5792341O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@~
+__inference_dropout_1_layer_call_fn_5792346O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
F__inference_dropout_2_layer_call_and_return_conditional_losses_5792378\3?0
)?&
 ?
inputs????????? 
p
? "%?"
?
0????????? 
? ?
F__inference_dropout_2_layer_call_and_return_conditional_losses_5792383\3?0
)?&
 ?
inputs????????? 
p 
? "%?"
?
0????????? 
? ~
+__inference_dropout_2_layer_call_fn_5792388O3?0
)?&
 ?
inputs????????? 
p 
? "?????????? ~
+__inference_dropout_2_layer_call_fn_5792393O3?0
)?&
 ?
inputs????????? 
p
? "?????????? ?
D__inference_dropout_layer_call_and_return_conditional_losses_5792257^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
D__inference_dropout_layer_call_and_return_conditional_losses_5792269^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ~
)__inference_dropout_layer_call_fn_5792274Q4?1
*?'
!?
inputs??????????
p 
? "???????????~
)__inference_dropout_layer_call_fn_5792279Q4?1
*?'
!?
inputs??????????
p
? "????????????
E__inference_fileconv_layer_call_and_return_conditional_losses_5792076l*+7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
*__inference_fileconv_layer_call_fn_5792085_*+7?4
-?*
(?%
inputs?????????
? " ???????????
F__inference_flatten_1_layer_call_and_return_conditional_losses_5792182`7?4
-?*
(?%
inputs?????????
? "%?"
?
0?????????
? ?
+__inference_flatten_1_layer_call_fn_5792187S7?4
-?*
(?%
inputs?????????
? "???????????
F__inference_flatten_2_layer_call_and_return_conditional_losses_5792193`7?4
-?*
(?%
inputs?????????
? "%?"
?
0?????????
? ?
+__inference_flatten_2_layer_call_fn_5792198S7?4
-?*
(?%
inputs?????????
? "???????????
F__inference_flatten_3_layer_call_and_return_conditional_losses_5792204`7?4
-?*
(?%
inputs?????????
? "%?"
?
0?????????H
? ?
+__inference_flatten_3_layer_call_fn_5792209S7?4
-?*
(?%
inputs?????????
? "??????????H?
F__inference_flatten_4_layer_call_and_return_conditional_losses_5792215a7?4
-?*
(?%
inputs?????????
? "&?#
?
0??????????
? ?
+__inference_flatten_4_layer_call_fn_5792220T7?4
-?*
(?%
inputs?????????
? "????????????
F__inference_flatten_5_layer_call_and_return_conditional_losses_5792226`7?4
-?*
(?%
inputs?????????
? "%?"
?
0?????????`
? ?
+__inference_flatten_5_layer_call_fn_5792231S7?4
-?*
(?%
inputs?????????
? "??????????`?
D__inference_flatten_layer_call_and_return_conditional_losses_5792171`7?4
-?*
(?%
inputs?????????
? "%?"
?
0?????????
? ?
)__inference_flatten_layer_call_fn_5792176S7?4
-?*
(?%
inputs?????????
? "???????????
F__inference_largeconv_layer_call_and_return_conditional_losses_5792136l<=7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
+__inference_largeconv_layer_call_fn_5792145_<=7?4
-?*
(?%
inputs?????????
? " ???????????
D__inference_model_1_layer_call_and_return_conditional_losses_5791578?$%BC<=6701*+hinoxy??>?;
4?1
'?$
state?????????
p 

 
? "%?"
?
0?????????
? ?
D__inference_model_1_layer_call_and_return_conditional_losses_5791647?$%BC<=6701*+hinoxy??>?;
4?1
'?$
state?????????
p

 
? "%?"
?
0?????????
? ?
D__inference_model_1_layer_call_and_return_conditional_losses_5791809?$%BC<=6701*+hinoxy????<
5?2
(?%
inputs?????????
p 

 
? "%?"
?
0?????????
? ?
D__inference_model_1_layer_call_and_return_conditional_losses_5791927?$%BC<=6701*+hinoxy????<
5?2
(?%
inputs?????????
p

 
? "%?"
?
0?????????
? ?
)__inference_model_1_layer_call_fn_5791081t$%BC<=6701*+hinoxy??>?;
4?1
'?$
state?????????
p 

 
? "???????????
)__inference_model_1_layer_call_fn_5791509t$%BC<=6701*+hinoxy??>?;
4?1
'?$
state?????????
p

 
? "???????????
)__inference_model_1_layer_call_fn_5791976u$%BC<=6701*+hinoxy????<
5?2
(?%
inputs?????????
p 

 
? "???????????
)__inference_model_1_layer_call_fn_5792025u$%BC<=6701*+hinoxy????<
5?2
(?%
inputs?????????
p

 
? "???????????
H__inference_quarterconv_layer_call_and_return_conditional_losses_5792116l677?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
-__inference_quarterconv_layer_call_fn_5792125_677?4
-?*
(?%
inputs?????????
? " ???????????
E__inference_rankconv_layer_call_and_return_conditional_losses_5792096l017?4
-?*
(?%
inputs?????????
? "-?*
#? 
0?????????
? ?
*__inference_rankconv_layer_call_fn_5792105_017?4
-?*
(?%
inputs?????????
? " ???????????
%__inference_signature_wrapper_5791698?$%BC<=6701*+hinoxy????<
? 
5?2
0
state'?$
state?????????"1?.
,
dense_3!?
dense_3?????????