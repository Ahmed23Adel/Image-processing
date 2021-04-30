function y=boarder(x)
c=-10;
while c<0 || c>255
    
    disp('Look you have a gray scale from 0 to 255 where 0 is black');
    c=input('and 255 is white Enter a color from this range of numbers: ');
end
for i=1:(1/20)*size(x,1);
    for j=1:size(x,2)
        x(i,j,:)=c;
        x(size(x,1)+1-i,j,:)=c;
    end
end

for i=1:(1/20)*size(x,2)
    for j=1:size(x,1)
        x(j,i,:)=c;
        x(j,size(x,2)+1-i,:)=c;
    end
end
y=x;
imshow(y);
end