 
j=0
for i in 10 1 0.1
do
for jj in 0.1 1 10
do
for k in 1e-7 1e-6 1e-2
do
for p in 200 
do
python train.py --style-image ../images/leaf.jpg --content-weight $i --style-weight $jj --tv-weight $k --num-image 20 --epochs $p --style-size 512 512 --lr 3e3 --model-name "leaf_r5_encoder$i$k$p$jj" --num-res 1 --num-rotation 2 --num-scale 2 --stride 4 --patch-size 4 --net resnet --gpu 1
#python train.py --style-image ../images/leaf.jpg --content-weight $i $i --style-weight 1 1 --tv-weight 1e-3 --num-image 5 --epochs 5 --style-size 512 512 --lr 3e3 --model-name "leaf_r5_encoder$j" --num-res 2 --num-rotation 2 --num-scale 2 --stride 4 --patch-size 6 --net resnet
j=$((j+1))
done
done
done
done
