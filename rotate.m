


function y=rotate(x)
y=x;
sw='y';
while sw=='y'
    
theta=input('r to rotate clockwise l for anticlockwise ','s');
switch theta
    case 'r'
        y=imrotate(y,-90);
        imshow(y);
    case 'l' 
        y=imrotate(y,90);
        imshow(y);
end

sw=input('rotate again? y/n ','s');
end
end





