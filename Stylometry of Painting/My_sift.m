clc
clear
z=1;
tic
Hist=zeros(600,128);
for j=1:50
    for i=1:12
    image=rgb2gray(imread(strcat('DataSet\Wrist\',num2str(j),'\Right\',num2str(i),'.jpg')));
    f=sift(image);
    Hist(z,:)=mean(f,1);
    z=z+1;
    end
end
save('Hist');  
toc