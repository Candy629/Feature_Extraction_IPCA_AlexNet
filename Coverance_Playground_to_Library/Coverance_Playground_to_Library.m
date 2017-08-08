%input txt matrix
a=load('IPCA_ExtracFeat_Playground_to_Library_160_64896.txt','%f%f%f');
%coverance of a'
%a=a';

%into cell
b=mat2cell(a,[20 20 20 20 20 20 20 20],[20 20 20 20 20 20 20 20]);
c=b(1,1);
d=b(2,1);
% c=var(c);
% cov_a=cov(b);
%cell sum
% c = cellfun(@sum,cellfun(@sum,b,'UniformOutput',false));
% d = sum(diag(c))/(20*7);
% e = (sum(cov_a(:))-d)/(20*8*7);
% figure,imshow(a);
% figure,imshow(cov_a);
% save cov_a;