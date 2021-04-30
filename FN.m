function FN(x)
pic=rgb2gray(x);

fn=vision.CascadeObjectDetector('Nose');
bbox=step(fn,x);
dd=insertObjectAnnotation(pic,'Rectangle',bbox,'Nose');
imshow(dd);
end