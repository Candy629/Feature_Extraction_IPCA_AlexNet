%% Binarize Image Using Global Threshold
%  
%%
% Read grayscale image into the workspace.
I = imread('spring_301p_600p_fall_201p_700p_20d_0_255.png');
%%
% Convert the image into a binary image.
BW = imbinarize(I);
%%
% Display the original image next to the binary version.
figure
%imshowpair(I,BW,'montage')
imshow(BW)
se = strel('line',11,90);
%%
% Dilate the image with a vertical line structuring element and compare the
% results.
% BW1 = imerode(BW,se);
%BW2 = imdilate(BW,se);
% BW3 = imdilate(BW2,se);
% BW4 = imdilate(BW3,se);
% BW5 = imdilate(BW4,se);
% BW6 = imdilate(BW5,se);
% BW7 = imdilate(BW6,se);
% 
% BW9 = imerode(BW7,se);
% BW9 = imerode(BW9,se);
% 
% BW10 = imdilate(BW9,se);
% BW11 = imdilate(BW10,se);
%imshow(BW2), title('imdilate6')
% figure, imshow(BW2), title('imdilate6_erode2')
% figure,imshow(BW11), title('imdilate6_erode2_imdilate2')
imwrite(BW,'Binary_spring_301p_600p_fall_201p_700p_20d_0_255.png')