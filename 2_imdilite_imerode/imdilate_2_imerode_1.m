%% Dilate Image with Vertical Line Structuring Element
% Read a binary image into the workspace.
BW = imread('Binary_spring_301p_600p_fall_201p_700p_20d_0_255.png');
% Create a vertical line shaped structuring element.
se = strel('line',11,90);
% Dilate the image with a vertical line structuring element and compare the
% results.
BW2 = imdilate(BW,se);
BW9 = imerode(BW2,se);

imshow(BW2), title('imdilate6')
figure, imshow(BW9), title('imdilate6_erode2')
figure,imshow(BW9), title('imdilate6_erode2_imdilate2')
imwrite(BW2,'imdilate_spring_301p_600p_fall_201p_700p_20d.png')
imwrite(BW9,'imdilate_erode_spring_301p_600p_fall_201p_700p_20d.png')