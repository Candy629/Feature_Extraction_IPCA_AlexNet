a=imread('Result_Matlab_imdilate.tif');
b=imread('Result_Matlab_imerode.tif');
c=imread('Result_Matlab_imdilate_2.tif');
d=imread('Result_Matlab_imerode_2.tif');
e=imread('Result_Matlab_imdilate_2_imerode_imdilate.tif');
f=imread('Result_Matlab_imdilate_2_imerode.tif');
figure
h=[];
h(1)=subplot(6,1,1);
h(2)=subplot(6,1,2);
h(3)=subplot(6,1,3);
h(4)=subplot(6,1,4);
h(5)=subplot(6,1,5);
h(6)=subplot(6,1,6);
subplot(6,1, 1)
title('dilate.tif')
image(a);
subplot(6,1, 2);
title('dilate.tif');
image(b);
subplot(6,1, 3);
title('dilate.tif');
image(c);
subplot(6,1, 4);
title('dilate.tif');
image(d);
subplot(6,1, 5);
title('dilate.tif');
image(e);
subplot(6,1, 6);
title('dilate.tif');
image(f);