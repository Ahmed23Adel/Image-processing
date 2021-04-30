function FR ()

IMG=load_database();
i=round(400*rand(1,1));          
rI=IMG(:,i);             
%getting random image from the set
rest=IMG(:,[1:i-1 i+1:end]);         
sig=20;                            
white_Image=uint8(ones(1,size(rest,2)));
mean_value=uint8(mean(rest,2));                
mean_Removed=rest-uint8(single(mean_value)*single(white_Image)); 
L=single(mean_Removed)'*single(mean_Removed);
[V,D]=eig(L);
%getting eigen vectors## signature of images
V=single(mean_Removed)*V;
V=V(:,end:-1:end-(sig-1));          
allSig=zeros(size(rest,2),sig);
for i=1:size(rest,2);
    allSig(i,:)=single(mean_Removed(:,i))'*V;  
end
subplot(121);
imshow(reshape(rI,112,92));
title('Searching inside the base','FontWeight','bold','Fontsize',16,'color','red');
subplot(122);
c=rI-mean_value;
%comparing
s=single(c)'*V;
z=[];
for i=1:size(rest,2)
    z=[z,norm(allSig(i,:)-s,2)];
    if(rem(i,20)==0),imshow(reshape(rest(:,i),112,92)),end;
    drawnow;
end

[a,i]=min(z);
%the minimum difference in signature
subplot(122);
imshow(reshape(rest(:,i),112,92));

title('face: with 6% error! ','FontWeight','bold','Fontsize',16,'color','green');
end