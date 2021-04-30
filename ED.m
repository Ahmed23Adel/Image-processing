function ED(x)
pic=rgb2gray(x);
fe=vision.CascadeObjectDetector('RightEye','MergeThreshold',40);
bbox=step(fe,x);
dd=insertObjectAnnotation(pic,'Rectangle',bbox,'Eye');
imshow(dd);
end
