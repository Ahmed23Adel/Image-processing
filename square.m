function [x]= square(g)
c=input('1 for white square 0 for black ');
while c~=1&&c~=0
    c=input('1 for white square 0 for black ');
end

 
if size(g,1)>size(g,2)
    if c==0
        F1=zeros(size(g,1),size(g,1),3,'uint8');
    elseif c==1
        F1=ones(size(g,1),size(g,1),3,'uint8');
        F1=256*F1;
    end
    for j=1: size(F1,1)
       
        k2=1;
        for i= fix((size(F1,2)-size(g,2))/2)+1: size(F1,2)-((size(F1,2)-size(g,2))/2)
            F1(j,i,:)=g(j,k2,:);
           
            k2=k2+1;
            
        end
       
    end
    x=F1;
elseif size(g,1)<size(g,2)
    if c==0
        F2=zeros(size(g,2),size(g,2),3,'uint8');
    elseif c==1
            F2=ones(size(g,2),size(g,2),3,'uint8');
            F2=256*F2;
    end
    for j=1: size(F2,2)
       
        k2=1;
        %remove -1 and add +1 to uderstand it
        %you remove the image space and what is left if up and down which is not needed
        %you divide be 2 but after that you start after one row after the
        %extra up
        for i= fix((size(F2,1)-size(g,1))/2)+1: size(F2,1)-((size(F2,1)-size(g,1))/2)
            %we can use j also instead of K2 to reduce memoty usage
            F2(i,j,:)=g(k2,j,:);
           
            k2=k2+1;
        end
    end
    x=F2;
else
    %returning the image as a square
    x=g;
    disp('it is a square already!');
end
