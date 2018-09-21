#

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
"


# SCANMODE 1
for i in ${SCANMODE_1_FILES}; do

cd ./${i}/Findsym/

rm -Rf Findsym_run
mkdir Findsym_run

cp ${i}.FINDSYM ./Findsym_run

cd Findsym_run

cp  ${i}.FINDSYM  ${i}_0_1.FINDSYM
sed -i 's/1   1   1   1   2   2   2   2   2   2   2   2   2   2   2   2   3   3   3   3/Ca   Ca   Ca   Ca   O   O   O   O   O   O   O   O   O   O   O   O   C   C   C   C/'  ${i}_0_1.FINDSYM
sed -i 's/0.0001   accuracy/0.1   accuracy\n0.1   accuracy\n0.1   accuracy/' ${i}_0_1.FINDSYM
findsym < ${i}_0_1.FINDSYM > ${i}_findsym_numbers_0_1.cif

cp  ${i}.FINDSYM  ${i}_0_01.FINDSYM
sed -i 's/1   1   1   1   2   2   2   2   2   2   2   2   2   2   2   2   3   3   3   3/Ca   Ca   Ca   Ca   O   O   O   O   O   O   O   O   O   O   O   O   C   C   C   C/'  ${i}_0_1.FINDSYM
sed -i 's/0.0001   accuracy/0.01   accuracy\n0.01   accuracy\n0.01   accuracy/' ${i}_0_01.FINDSYM
findsym < ${i}_0_01.FINDSYM > ${i}_findsym_numbers_0_01.cif

cp  ${i}.FINDSYM  ${i}_0_001.FINDSYM
sed -i 's/1   1   1   1   2   2   2   2   2   2   2   2   2   2   2   2   3   3   3   3/Ca   Ca   Ca   Ca   O   O   O   O   O   O   O   O   O   O   O   O   C   C   C   C/'  ${i}_0_1.FINDSYM
sed -i 's/0.0001   accuracy/0.001   accuracy\n0.001   accuracy\n0.001   accuracy/' ${i}_0_001.FINDSYM
findsym < ${i}_0_001.FINDSYM > ${i}_findsym_numbers_0_001.cif

cp  ${i}.FINDSYM  ${i}_0_0001.FINDSYM
sed -i 's/1   1   1   1   2   2   2   2   2   2   2   2   2   2   2   2   3   3   3   3/Ca   Ca   Ca   Ca   O   O   O   O   O   O   O   O   O   O   O   O   C   C   C   C/'  ${i}_0_1.FINDSYM
sed -i 's/0.0001   accuracy/0.0001   accuracy\n0.0001   accuracy\n0.0001   accuracy/' ${i}_0_0001.FINDSYM
findsym < ${i}_0_0001.FINDSYM > ${i}_findsym_numbers_0_0001.cif

cp  ${i}.FINDSYM  ${i}_0_00001.FINDSYM
sed -i 's/1   1   1   1   2   2   2   2   2   2   2   2   2   2   2   2   3   3   3   3/Ca   Ca   Ca   Ca   O   O   O   O   O   O   O   O   O   O   O   O   C   C   C   C/'  ${i}_0_1.FINDSYM
sed -i 's/0.0001   accuracy/0.00001   accuracy\n0.00001   accuracy\n0.00001   accuracy/' ${i}_0_00001.FINDSYM
findsym < ${i}_0_00001.FINDSYM > ${i}_findsym_numbers_0_00001.cif

cp  ${i}.FINDSYM  ${i}_0_000001.FINDSYM
sed -i 's/1   1   1   1   2   2   2   2   2   2   2   2   2   2   2   2   3   3   3   3/Ca   Ca   Ca   Ca   O   O   O   O   O   O   O   O   O   O   O   O   C   C   C   C/'  ${i}_0_1.FINDSYM
sed -i 's/0.0001   accuracy/0.000001   accuracy\n0.000001   accuracy\n0.000001   accuracy/' ${i}_0_000001.FINDSYM
findsym < ${i}_0_000001.FINDSYM > ${i}_findsym_numbers_0_000001.cif

cp  ${i}.FINDSYM  ${i}_0.FINDSYM
sed -i 's/1   1   1   1   2   2   2   2   2   2   2   2   2   2   2   2   3   3   3   3/Ca   Ca   Ca   Ca   O   O   O   O   O   O   O   O   O   O   O   O   C   C   C   C/'  ${i}_0_1.FINDSYM
sed -i 's/0.0001   accuracy/0   accuracy\n0   accuracy\n0   accuracy/' ${i}_0.FINDSYM
findsym < ${i}_0.FINDSYM > ${i}_findsym_numbers_0.cif



WorkingDir=`pwd`

cd $ScriptDir
done 

cd $ScriptDir

