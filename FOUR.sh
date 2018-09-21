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

cd ./${i}/Findsym/Findsym_run

grep "symmetry_space_group_name_H-M" *cif
#grep "symmetry_space_group_name_H-M" *cif > space_groups_found.dat
#grep "Ca1 Ca   " *0_1.cif
echo ++++++++++
WorkingDir=`pwd`

cd $ScriptDir
done 

cd $ScriptDir

