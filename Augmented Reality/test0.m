 clear
    close all;
    clc;
     I2=imread('f1.png');
    figure,imshow(I2)
     
           
            w=size(I2,1);
            h=size(I2,2);
    %%%LBP ALGORITM
            for i=2:w-1
               for j=2:h-1
                    J0=I2(i,j);
                    I3(i-1,j-1)=I2(i-1,j-1)>J0;
                    I3(i-1,j)=I2(i-1,j)>J0;
                    I3(i-1,j+1)=I2(i-1,j+1)>J0; 
                    I3(i,j+1)=I2(i,j+1)>J0;
                    I3(i+1,j+1)=I2(i+1,j+1)>J0; 
                    I3(i+1,j)=I2(i+1,j)>J0; 
                    I3(i+1,j-1)=I2(i+1,j-1)>J0; 
                    I3(i,j-1)=I2(i,j-1)>J0;
                    LBP(i,j)=I3(i-1,j-1)*2^7+I3(i-1,j)*2^6+I3(i-1,j+1)*2^5+I3(i,j+1)*2^4+I3(i+1,j+1)*2^3+I3(i+1,j)*2^2+I3(i+1,j-1)*2^1+I3(i,j-1)*2^0;
                end
            end
%             imstr6=strcat(imstr4,'0',num2str(q),'lbpROI','.bmp');
            figure,imshow(LBP, [ ])
%save('t5','LBP');
% imwrite(LBP,t3);
          
    
 
%     close all; 
%      clc;
%      I=imread('f1.png');
%      figure,imshow(I)   
%    w=size(I2,1);     
%      h=size(I2,2);  
%      %% LBP    
%        for i=2:w-1   
%         for j=2:h-1    
%            J0=I2(i,j);   
%             I3(i-1,j-1)=I2(i-1,j-1)>J0;  
%              I3(i-1,j)=I2(i-1,j)>J0;   
%             I3(i-1,j+1)=I2(i-1,j+1)>J0;  
%               I3(i,j+1)=I2(i,j+1)>J0;     
%           I3(i+1,j+1)=I2(i+1,j+1)>J0;    
%             I3(i+1,j)=I2(i+1,j)>J0;      
%           I3(i+1,j-1)=I2(i+1,j-1)>J0;     
%            I3(i,j-1)=I2(i,j-1)>J0;       
%         LBP(i,j)=I3(i-1,j-1)*2^7+I3(i-1,j)*2^6+I3(i-1,j+1)*2^5+I3(i,j+1)*2^4+I3(i+1,j+1)*2^3+I3(i+1,j)*2^2+I3(i+1,j-1)*2^1+I3(i,j-1)*2^0;          
%   end  
%      end 
%          subplot(1,2,1);
%       imshow(LBP,[]);
%       subplot(1,2,2);
%       [pixel,y] = imhist(uint8(LBP));
%       bar(y,pixel);


% 
% table = zeros(1, 256);
% 
% nextLabel = 1;
% 
%     for k = 0:255
%         bits = bitand(k, 2.^(7:-1:0))>0;
%         if nnz(diff(bits([1:end, 1]))) <= 2
%             table(k+1) = nextLabel;
%             nextLabel = nextLabel + 1;
%         else
%             table(k+1) = 0;
%         end
%     end 
% UniformHist=[];
% m=size(I2,1);
% n=size(I2,2);
% counter = 1; 
% for i=1:20:m
%     for j=1:20:n
%         for k=i+1:i+48
%            for l=j+1:j+48
%              J0=I2(k,l);
%              I3(k-1,l-1)=I2(k-1,l-1)>J0;
%              I3(k-1,l)=I2(k-1,l)>J0;
%              I3(k-1,l+1)=I2(k-1,l+1)>J0; 
%              I3(k,l+1)=I2(k,l+1)>J0;
%              I3(k+1,l+1)=I2(k+1,l+1)>J0; 
%              I3(k+1,l)=I2(k+1,l)>J0; 
%              I3(k+1,l-1)=I2(k+1,l-1)>J0; 
%              I3(k,l-1)=I2(k,l-1)>J0;
%              LBP(k,l)=I3(k-1,l-1)*2^7+I3(k-1,l)*2^6+I3(k-1,l+1)*2^5+I3(k,l+1)*2^4+I3(k+1,l+1)*2^3+I3(k+1,l)*2^2+I3(k+1,l-1)*2^1+I3(k,l-1)*2^0;
%              ULBP(k,l)=table(LBP(k,l)+ 1);
%            end
%         end
%         ULBP=uint8(ULBP);
%         ULBPv=reshape(ULBP,1,size(ULBP,1)*size(ULBP,2));   
%         UHist=hist(ULBPv,0:58);
%         UniformHist = [UniformHist UHist];
%         counter = counter + 1; 
%     end
% end