#
source ~/.profile

run='/home/gmallia/CRYSTAL17_cx1/v1/qcry'

ScriptDir=`pwd`

VOLUMES="
234.010329
237.798667
240.365066
243.035054
245.669959
248.294358
250.917393
256.217828
253.622886
258.896828
240.010532
240.010532
"
cd $ScriptDir
for i in ${VOLUMES} ; do

rm -Rf $i
mkdir $i

done
cd $ScriptDir

# RUNNING:
for i in ${VOLUMES} ; do

cp  ${i}_TESTGEOM.d12   ./$i
cd $i
$run ${i}_TESTGEOM 48 72:00 
qsub -q pqnmh ${i}_TESTGEOM.qsub
cd $ScriptDir

done 
