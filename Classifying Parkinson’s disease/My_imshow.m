clc
clear
LPQfilters=createLPQfilters(3);
img=imread('cameraman.tif');
visualizeCharOrientation(mat2gray(img));