ÔR
3F:\Projetos\hackerrank\Schedule\Schedule\Program.cs
	namespace 	

Hackerrank
 
{ 
static 

class 
Test 
{ 
public		 
static		 
List		 
<		 
string		 !
>		! "
findSchedules		# 0
(		0 1
int		1 4
	workHours		5 >
,		> ?
int		@ C
dayHours		D L
,		L M
string		N T
pattern		U \
)		\ ]
{

 	
var 
workPattern 
= 
pattern %
.% &
ToCharArray& 1
(1 2
)2 3
.3 4
Select4 :
(: ;
c; <
=>= ?
c@ A
.A B
ToStringB J
(J K
)K L
)L M
.M N
ToListN T
(T U
)U V
;V W
var 
openDaysPositions !
=" #
	indexesOf$ -
(- .
pattern. 5
)5 6
;6 7
var 
missingDays 
= 
pattern %
.% &
Count& +
(+ ,
c, -
=>. 0
c1 2
==3 5
$char6 9
)9 :
;: ;
var 
totalWorked 
= 

sumPattern (
(( )
pattern) 0
)0 1
;1 2
var 
differenceWorked  
=! "
	workHours# ,
-- .
totalWorked/ :
;: ;
var 

iterations 
= 
calculateSum )
() *
differenceWorked* :
,: ;
missingDays< G
,G H
dayHoursI Q
)Q R
;R S
return 
iterate 
( 

iterations %
,% &
workPattern' 2
,2 3
openDaysPositions4 E
)E F
;F G
} 	
private 
static 
List 
< 
string "
>" #
iterate$ +
(+ ,
List, 0
<0 1
List1 5
<5 6
string6 <
>< =
>= >

iterations? I
,I J
ListK O
<O P
stringP V
>V W
workPatternX c
,c d
Liste i
<i j
intj m
>m n
openDaysPositions	o 
)
 
{ 	
var 
result 
= 
new 
List !
<! "
string" (
>( )
() *
)* +
;+ ,
foreach 
( 
var 
item 
in  

iterations! +
)+ ,
{ 
int 
i 
= 
$num 
; 
foreach 
( 
var 
openDay $
in% '
openDaysPositions( 9
)9 :
{   
workPattern!! 
[!!  
openDay!!  '
]!!' (
=!!) *
item!!+ /
[!!/ 0
i!!0 1
]!!1 2
;!!2 3
i"" 
++"" 
;"" 
}## 
result$$ 
.$$ 
Add$$ 
($$ 
String$$ !
.$$! "
Join$$" &
($$& '
$str$$' )
,$$) *
workPattern$$+ 6
)$$6 7
)$$7 8
;$$8 9
}%% 
return'' 
result'' 
.'' 
OrderBy'' !
(''! "
o''" #
=>''$ &
o''' (
)''( )
.'') *
ToList''* 0
(''0 1
)''1 2
;''2 3
}(( 	
private** 
static** 
List** 
<** 
List**  
<**  !
string**! '
>**' (
>**( )
calculateSum*** 6
(**6 7
int**7 :
differenceWorked**; K
,**K L
int**M P
missingDays**Q \
,**\ ]
int**^ a
dayHours**b j
)**j k
{++ 	
var,, 
result,, 
=,, 
new,, 
List,, !
<,,! "
List,," &
<,,& '
string,,' -
>,,- .
>,,. /
(,,/ 0
),,0 1
;,,1 2
foreach-- 
(-- 
var-- 
perm-- 
in--  
permutations--! -
(--- .

Enumerable--. 8
.--8 9
Range--9 >
(--> ?
$num--? @
,--@ A
dayHours--B J
+--K L
$num--M N
)--N O
.--O P
ToList--P V
(--V W
)--W X
,--X Y
missingDays--Z e
)--e f
)--f g
{.. 
if// 
(// 
perm// 
.// 
Sum// 
(// 
x// 
=>// !
(//" #
int//# &
.//& '
Parse//' ,
(//, -
x//- .
)//. /
)/// 0
)//0 1
==//2 4
differenceWorked//5 E
)//E F
{00 
result11 
.11 
Add11 
(11 
perm11 #
)11# $
;11$ %
}22 
}33 
return55 
result55 
;55 
}66 	
private88 
static88 
List88 
<88 
List88  
<88  !
string88! '
>88' (
>88( )
permutations88* 6
(886 7
List887 ;
<88; <
int88< ?
>88? @
values88A G
,88G H
int88I L
missingDays88M X
)88X Y
{99 	
var:: 

listOutput:: 
=:: 
new::  
List::! %
<::% &
List::& *
<::* +
string::+ 1
>::1 2
>::2 3
(::3 4
)::4 5
;::5 6
var;; 
counter;; 
=;; 
Math;; 
.;; 
Pow;; "
(;;" #
values;;# )
.;;) *
Count;;* /
,;;/ 0
missingDays;;1 <
);;< =
;;;= >
for>> 
(>> 
int>> 
i>> 
=>> 
$num>> 
;>> 
i>> 
<>> 
counter>>  '
;>>' (
i>>) *
++>>* ,
)>>, -
{?? 
var@@ 
list@@ 
=@@ 
new@@ 
List@@ #
<@@# $
string@@$ *
>@@* +
(@@+ ,
)@@, -
;@@- .
varBB 
countBB 
=BB 
valuesBB "
.BB" #
CountBB# (
;BB( )
forCC 
(CC 
intCC 
jCC 
=CC 
$numCC 
;CC 
jCC  !
<CC" #
missingDaysCC$ /
;CC/ 0
jCC1 2
++CC2 4
)CC4 5
{DD 
varEE 
selectorEE  
=EE! "
(EE# $
intEE$ '
)EE' (
(EE( )
iEE) *
/EE+ ,
MathEE- 1
.EE1 2
PowEE2 5
(EE5 6
countEE6 ;
,EE; <
jEE= >
)EE> ?
)EE? @
%EEA B
countEEC H
;EEH I
ifFF 
(FF 
listFF 
.FF 
CountFF "
>FF# $
jFF% &
)FF& '
{GG 
listHH 
[HH 
jHH 
]HH 
=HH  !
(HH" #
valuesHH# )
[HH) *
selectorHH* 2
]HH2 3
.HH3 4
ToStringHH4 <
(HH< =
)HH= >
)HH> ?
;HH? @
}II 
elseJJ 
{KK 
listLL 
.LL 
AddLL  
(LL  !
valuesLL! '
[LL' (
selectorLL( 0
]LL0 1
.LL1 2
ToStringLL2 :
(LL: ;
)LL; <
)LL< =
;LL= >
}MM 
}NN 

listOutputPP 
.PP 
AddPP 
(PP 
listPP #
)PP# $
;PP$ %
}QQ 
returnSS 

listOutputSS 
;SS 
}TT 	
privateVV 
staticVV 
ListVV 
<VV 
intVV 
>VV  
	indexesOfVV! *
(VV* +
stringVV+ 1
patternVV2 9
)VV9 :
{WW 	
intXX 
indexXX 
=XX 
$numXX 
;XX 
ListYY 
<YY 
intYY 
>YY 
indexesYY 
=YY 
newYY  #
ListYY$ (
<YY( )
intYY) ,
>YY, -
(YY- .
)YY. /
;YY/ 0
foreachZZ 
(ZZ 
varZZ 
itemZZ 
inZZ  
patternZZ! (
)ZZ( )
{[[ 
if\\ 
(\\ 
item\\ 
.\\ 
Equals\\ 
(\\  
$char\\  #
)\\# $
)\\$ %
{]] 
indexes^^ 
.^^ 
Add^^ 
(^^  
index^^  %
)^^% &
;^^& '
}__ 
index`` 
++`` 
;`` 
}aa 
returncc 
indexescc 
;cc 
}dd 	
privateff 
staticff 
intff 

sumPatternff %
(ff% &
stringff& ,
patternff- 4
)ff4 5
{gg 	
varhh 
somahh 
=hh 
patternhh 
.hh 
Wherehh $
(hh$ %
whh% &
=>hh' )
whh* +
!=hh, .
$charhh/ 2
&&hh3 5
whh6 7
!=hh8 :
$charhh; >
)hh> ?
.hh? @
Sumhh@ C
(hhC D
xhhD E
=>hhF H
(hhI J
inthhJ M
)hhM N
CharhhN R
.hhR S
GetNumericValuehhS b
(hhb c
xhhc d
)hhd e
)hhe f
;hhf g
returnii 
somaii 
;ii 
}jj 	
privatemm 
staticmm 
voidmm 
Mainmm  
(mm  !
)mm! "
{nn 	
findSchedulesoo 
(oo 
$numoo 
,oo 
$numoo 
,oo  
$stroo! *
)oo* +
;oo+ ,
}pp 	
}qq 
}rr 