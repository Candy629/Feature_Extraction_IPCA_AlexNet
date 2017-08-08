close all;clear all;clc;
img = imread('Binary_spring_301p_600p_fall_201p_700p_33d_0_255.png');
figure(1);
imshow(img);

img = imread('spring_301p_600p_fall_201p_700p_33d_0_255.png');
figure(1);
imshow(img);
figure(2);
%imhist(img); 
%thresh = graythresh(I);     %?????????
I2 = im2bw(img,0.5);   %set threshold for binary
imshow(I2)
img = I2;

hold on;
[height, width] = size(img);

data=[];
for i=1:100
    for j=1:width
        if img(i,j)==0
            data = [data;[j,i]];
        end
    end
end

K=3000;          
sigma=0.5;        
pretotal=0;     
k=1;
bestline=[];

while pretotal < size(data,1)*2/3 &&  k<K     
    SampIndex=floor(1+(size(data,1)-1)*rand(2,1)); 
    
    samp1=data(SampIndex(1),:);    
    samp2=data(SampIndex(2),:);
    
    line=Mytls([samp1;samp2]);      
    mask=abs(line*[data ones(size(data,1),1)]');    
    total=sum(mask<sigma);             
    
    if total>pretotal  &&    line(1)/line(2)>-5 &&  line(1)/line(2)<-0.2  
        pretotal=total;
        bestline=line;        
    end  
    k=k+1;
end

mask=abs(bestline*[data ones(size(data,1),1)]')<sigma;    
hold on;
best_fit_points = [];

for i=1:length(mask)
    if mask(i)
        %plot(data(i,1),data(i,2),'+');
        best_fit_points = [best_fit_points;data(i,:)];

    end
end
p = polyfit(best_fit_points(:,1),best_fit_points(:,2),1);

x_temp = best_fit_points(:,1);
y_temp = polyval(p,x_temp);
% plot(x_temp,y_temp,'g');
% k=p(1);
% b=p(2);
% k
% b
% hold off;


