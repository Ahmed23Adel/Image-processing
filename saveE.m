function y= saveE(x,y)

c=input(' do you want to save The last effect? y/n? ','s');
while c~='y'&& c~='n'
    c=input(' do you want to save The last effect? y/n? ','s');
end
   if c=='y'
      y=y;
   elseif c== 'n' 
      y=x;
      
 
end
end
        
        
