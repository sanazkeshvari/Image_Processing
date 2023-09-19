clc
clear
Hist=zeros(600,256);
z=1;
tic
for j=1:50
    for i=1:12
    LPQfilters=createLPQfilters(27);
    img=rgb2gray(imread(strcat('DataSet\Wrist\',num2str(j),'\Left\',num2str(i),'.jpg')));
    charOri=charOrientation(img);
    Hist (z,:)=ri_lpq(img,LPQfilters,charOri);
    z=z+1;
    end
end
  save('Hist.mat', 'Hist');
  toc
