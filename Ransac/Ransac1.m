close all;clear all;clc;
img = imread('Binary_spring_301p_600p_fall_201p_700p_33d_0_255.png');
figure(1);
imshow(img);

hold on;
[height, width] = size(img);
data=[];
for i=1:height
    for j=1:width
        if img(i,j)==0
            data = [data;[j,i]];
        end
    end
end

K=1000;          
sigma=1.0;        
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
        plot(data(i,1),data(i,2),'+');
        best_fit_points = [best_fit_points;data(i,:)];
    end
end
p = polyfit(best_fit_points(:,1),best_fit_points(:,2),1);

x_temp = best_fit_points(:,1);
y_temp = polyval(p,x_temp);
plot(x_temp,y_temp,'g');
hold off;

figure(2);
hold on;
k = p(1);
b = p(2);

seq_start_number = 0;
seq_length = 400;
All_data_base_route = '/Users/zhanghui/Documents/MATLAB/Examples/Ransac/fall/';
test_seq_base_route = '/Users/zhanghui/Documents/MATLAB/Examples/Ransac/spring_301p_600p/';
flag = 0;
y_t = 0;
i_yt = zeros(300,2);
for i=0:seq_length
    test_seq_file_name = sprintf('images-%05d.png',i+301);
    test_seq_file_name = strcat(test_seq_base_route,test_seq_file_name);
    seq_img_temp = imread(test_seq_file_name);
    subplot(2,1,1);
    imshow(seq_img_temp);
    
    %if flag == 1
    y_t = floor(i*p(1)+p(2))
    save('i_yt.mat', 'i', '-ASCII','-append')
    save('i_yt.mat', 'y_t', '-ASCII','-append')
    %else
     %   y_t = floor( (i-p(2))/p(1) )
      %   save('i_yt.mat', 'i', '-ASCII','-append')
       %  save('i_yt.mat', 'y_t', '-ASCII','-append')
    %end
    i_yt(i,1) = i;
    i_yt(i,2) = y_t;
    All_data_file_name = sprintf('images-%05d.png',y_t+201);
    All_data_file_name = strcat(All_data_base_route,All_data_file_name);
    All_data_image_temp = imread(All_data_file_name);    
    subplot(2,1,2);
    imshow(All_data_image_temp);
    pause(0.1);
end