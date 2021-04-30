function img=convertTo(path,desiredType)
imgType=imfinfo(path).ColorType;
I=imread(path);
if strcmp(imgType,'truecolor' )&&strcmp(desiredType,'gray' )
    img=rgb2gray(I);

elseif strcmp(imgType,'truecolor' )&&strcmp(desiredType,'bw' )
    I=rgb2gray(I);
    level=graythresh(I);
    img=im2bw(I,level);
elseif strcmp(imgType,'grayscale' )&&strcmp(desiredType,'bw' )
    level=graythresh(I);
    img=im2bw(I,level);
end
end