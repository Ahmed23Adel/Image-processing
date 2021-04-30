function img=removeNoiseWithClose(I,minPixels,strelPixels)
%this function will do 3 things 
%1-imfill : fill image regions 
%2-will remove objects that their pixels are less than minPixels
%3-imclose: it will fill the gap between two objects 
%the input Image should be in black and white
I=imfill(I,'holes');
I=bwareaopen(I,minPixels);
I=imclose(I,strel('disk',strelPixels));
img=I;
end 