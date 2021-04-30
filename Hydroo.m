clc
clear
fprintf('Greatings sir, how are you? my name is Hydroliuim\n');
fprintf('A simple Image Editor and processor\n');
fprintf('Please select the image \n');

[file,path] = uigetfile('*.*','select an image');
Original = strcat(path,file);
Or=imread(Original);
format=imfinfo(Original).Format;
Or1=Or;
Firststep=5;

while Firststep~=1&&Firststep~=2
    Firststep=input('1 For Editing And 2 for processing: ');
end
again='y';

if Firststep==1
    while again=='y'
    disp(' 1-I can rotate, 2-make your image square, 3-add boarders, 4-give you effects,');
    disp('5-crop, 6- resize, 7- increase brightnes, 8- mirror. Choose! -From one to Eight respectively');
    operator=input(' Enter your desired action number: ');
    y1=Or;
    switch operator 
        case 1 
            y=rotate(Or);
            y= saveE(Or,y);
        case 2 
            y=square(Or);
            imshow(y);
            y= saveE(Or,y);
        case 3
            y=boarder(Or);
            y= saveE(Or,y);
        case 4
            y=effect(Or);
            imshow(y);
            y= saveE(Or,y);
        case 5
            y=crop(Or);
            y= saveE(Or,y);
        case 6
            y=resize(Or);
            y= saveE(Or,y);
        case 7
            q1= input ('please enter the value uou want ' );
            y=increaseBrightnessBy(Or, q1 );
            y= saveE(Or,y);
        case 8
            y=mirror(Or);
            imshow(y);
            y= saveE(Or,y);

    end
    again=input('do you want to edit again? y/n: ','s');
    Or=y;

end
s=input('Do you want to save the Image? y/n ','s');
 if s=='y'
        path_name=input("please enter name for your picture ",'s');
        path_name=strcat(path_name,".");
        imwrite(y,strcat(path_name,format));
         disp("Done ");
 else 
     disp('thank you for using  ');
 end



elseif Firststep==2
    disp('1- Face recognition from attached 400 faces 2- face detection, 3 - nose dtection ');
    disp('4- Find eye pairs !');
    operator=input(' Enter your desired action number: ');
    switch operator 
        case 1 
              FR();
              %400 faces, it selects one and start looking for similar one.
        case 2
       
              Fd(Or);
  %Fd= Face detection, the main idea is to show the AI
        case 3
                FN(Or);
            %FN find nose !
        case 4
            ED(Or);
            %Eyes detection
    end
    
    
        

end