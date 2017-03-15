declare -r path_train=/home/dnr/Documents/data/bone/training
#declare -r path_test=/home/dnr/Documents/data/bone/testing
declare -r path_val=/home/dnr/Documents/data/bone/validation
declare -r path_inf=/home/dnr/Documents/data/bone/inference

declare -r name=bone-class

declare -r path_model=/home/dnr/modelState/$name.ckpt
declare -r path_log=/home/dnr/logs/$name.txt

python train_CNNclassification.py --pTrain $path_train --pInf $path_inf --pVal $path_val --pModel $path_model --pLog $path_log --name $name --nGPU 4 --bs 24 --ep 500 --nClass 3
