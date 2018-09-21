source ~/.profile

run='/home/gmallia/CRYSTAL17_cx1/v1/qcry'

ScriptDir=`pwd`

SCANMODE_1_FILES="
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

# SCANMODE 1
for i in ${SCANMODE_1_FILES}; do

cd ./${i}
rm -Rf Findsym
mkdir Findsym

cp ${i}_TESTGEOM.gui  ./Findsym

cd $ScriptDir
done 

cd $ScriptDir
# SCANMODE 1 Running:
for i in ${SCANMODE_1_FILES}
do 
pwd

cp FINDSYM_key_in_CRYSTAL.d12 ./${i}/Findsym

cd ./${i}/Findsym

mv ${i}_TESTGEOM.gui  ${i}.gui
cp FINDSYM_key_in_CRYSTAL.d12 ${i}.d12

$run ${i} 48 01:00

qsub -q pqnmh ${i}.qsub

pwd
cd $ScriptDir

done

