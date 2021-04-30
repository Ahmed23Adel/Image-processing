function img=increaseContrast(I)
%this function increases the contrast by that equation
%J=255*(I-Imin)/(Imax-Imin);
%it strethes the histogram
%why double?
I=double(I);
I_min=min(I(:));
I_max=max(I(:));
I=255*(I-I_min)/(I_max-I_min);
img=uint8(I);
end