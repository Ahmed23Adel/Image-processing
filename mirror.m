function w= mirror(m)
w=m;
s=input(' v for Upsidedown , h for horozontal: ','s');

switch s
    
    case 'v'
        
      for i=1:size(w,1)
          w(i,:,:)=m(size(w,1)-i+1,:,:);
      end
        
    case 'h'
       for i=1:size(w,2)
          w(:,i,:)=m(:,size(w,2)-i+1,:);
       end
end

