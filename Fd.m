function Fd (Or) 

pic=rgb2gray(Or);
%face
    fs=vision.CascadeObjectDetector();
    bbox=step(fs,pic);
    dd=insertObjectAnnotation(pic,'Rectangle',bbox,'Face');
    pts=detectMinEigenFeatures(pic,'ROI',bbox);
    dd = insertMarker(dd,pts,'+','color','green');
    imshow(dd);hold on
    plot(pts.Location(:,1),pts.Location(:,2));
    hold off    