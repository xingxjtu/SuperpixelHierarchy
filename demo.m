clear; close all;

I = imread('335094.jpg');
E = imread('335094_edge.png');
gaus=fspecial('gaussian',3);
I = imfilter(I,gaus,'replicate');

% fine detail structure
tic; sh=SuperpixelHierarchyMex(I,E,0.5); toc
% get whatever you want
GetSuperpixels(sh,10000); color1 = MeanColor(double(I),sh.label);
GetSuperpixels(sh,1000); color2 = MeanColor(double(I),sh.label);
GetSuperpixels(sh,100); color3= MeanColor(double(I),sh.label);
GetSuperpixels(sh,10); color4= MeanColor(double(I),sh.label);
figure,imshow([color1,color2; color3,color4]);

% smooth boundary
tic; sh=SuperpixelHierarchyMex(I,E,0.9); toc
% get whatever you want
GetSuperpixels(sh,100); color1 = MeanColor(double(I),sh.label);
GetSuperpixels(sh,50); color2 = MeanColor(double(I),sh.label);
GetSuperpixels(sh,20); color3= MeanColor(double(I),sh.label);
GetSuperpixels(sh,10); color4= MeanColor(double(I),sh.label);
figure,imshow([color1,color2; color3,color4]);

% compact superpixel
tic; N=1000; sh=SuperpixelHierarchyMex(I,E,0.9,0.2,N); toc
% get whatever you want
GetSuperpixels(sh,1000); color1 = MeanColor(double(I),sh.label);
GetSuperpixels(sh,800); color2 = MeanColor(double(I),sh.label); 
GetSuperpixels(sh,400); color3= MeanColor(double(I),sh.label); 
GetSuperpixels(sh,100); color4= MeanColor(double(I),sh.label); 
figure,imshow([color1,color2; color3,color4]);
