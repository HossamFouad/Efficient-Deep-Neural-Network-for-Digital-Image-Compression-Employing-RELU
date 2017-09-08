function [data_modified1]=images_preprocessing()
data_modified1=zeros(10000,1024);
load('test_batch.mat');
for i=1:size(data,1)
new(:,:,1)=vec2mat(data(i,1:32*32),32);
new(:,:,2)=vec2mat(data(i,32*32+1:32*32*2),32);
new(:,:,3)=vec2mat(data(i,32*32*2+1:32*32*3),32);
I = rgb2gray(new);
I=I(:)';
data_modified1(i,:)=I;
end

end