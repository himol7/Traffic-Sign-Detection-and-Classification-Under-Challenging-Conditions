clear 
clc
x = dir('E:\AAASem-7\CV\Project\Frames\*.jpg');
cnt = 0
for K = 1  : size(x)
    str = strcat('E:\AAASem-7\CV\Project\Frame_Gaussian_Less\',x(K).name);
   I = im2double(imresize((imread(str)),0.5));
   
    i1 = I(:,:,1);
    i2 = I(:,:,2);
    i3 = I(:,:,3);
    
%     K1 = wiener2(i1,[5 5]);
%     K2 = wiener2(i2,[5 5]);
%     K3 = wiener2(i3,[5 5]);
    
%     X(:,:,1)=K1;
%     X(:,:,2)=K2;
%     X(:,:,3)=K3;

    IblurY1 = imgaussfilt(I,[1 2]);

    
   str1 = strcat('E:\AAASem-7\CV\Project\Remove_Gauss_Less\',x(K).name);
   imwrite(IblurY1,str1);
   cnt = cnt+1
end
