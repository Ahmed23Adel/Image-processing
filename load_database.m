function output_value = load_database();
persistent loaded;
persistent numeric_Image;
if(isempty(loaded))
    all_Images = zeros(10304,40);
    for k=1:40
        cd(strcat('s',num2str(k)));
        for s=1:10
            image_Container = imread(strcat(num2str(s),'.pgm'));
            all_Images(:,(k-1)*10+s)=reshape(image_Container,size(image_Container,1)*size(image_Container,2),1);
        end
        cd ..
    end
    numeric_Image = uint8(all_Images);
end
loaded = 1;
output_value = numeric_Image;