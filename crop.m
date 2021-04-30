

function y=crop(x)
disp('just select the region and double click it ')
y=imcrop(x);
imshow(y);
end