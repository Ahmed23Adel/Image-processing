function p=effect(p1)
 
fprintf(' 1 For Red 2 For Green 3 For Blue\n 4 for yellow\n ')
c=input('Enter color number ');
p=p1;
 switch c
     case 1 
         p(:,:,2)=0;
         p(:,:,3)=0;
     case 2 
         p(:,:,1)=0;
         p(:,:,3)=0;
     case 3
         p(:,:,2)=0;
         p(:,:,1)=0;
     case 4
         p(:,:,3)=0;
 end
 
 end
 