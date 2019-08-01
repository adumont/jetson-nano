for i in numpy pandas jupyter fastai torch torchvision tensorflow keras
do
   python3 -c "import $i; print('$i: ' + $i.__version__)"
done
