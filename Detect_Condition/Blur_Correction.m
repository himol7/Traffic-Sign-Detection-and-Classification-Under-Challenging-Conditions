clear 
clc
x = dir('E:\AAASem-7\CV\Project\Blur_Remove_l2\*.jpg');
cnt = 0; 
for K = 1 : size(x)
    str = strcat('E:\AAASem-7\CV\Project\Blur_Remove_l2\',x(K).name);
   I = im2double(imresize((imread(str)),0.25));
   UNDERPSF = ones(7,7);
   [J1,P1] = deconvblind(I,UNDERPSF);
   str1 = strcat('E:\AAASem-7\CV\Project\Blur_Remove_l2\',x(K).name);
   imwrite(J1,str1);
   cnt = cnt + 1
end
% I = im2double(imresize((imread('frame54.jpg')),0.5));
% figure(1)
% imshow(I) 
% title('Original Image')
% UNDERPSF = ones(7,7);
% [J1,P1] = deconvblind(I,UNDERPSF);
% figure(2)
% imshow(J1) 
% title('De Blurred Image')




% I = im2double(imread('blurred_img.png'));
% figure(1); imshow(I); title('Source image');
% 
% 
% % Blur image
% PSF = fspecial('average', 15);
% Blurred = imfilter(I, PSF,'circular','conv' );
% 
% % Add noise
% noise_mean = 0;
% noise_var = 0.00001;
% Blurred = imnoise(Blurred, 'gaussian', noise_mean, noise_var);
% figure(2); imshow(Blurred); title('Blurred image');
% estimated_nsr = noise_var / var(Blurred(:));
% 
% % Restore image
% figure(3), imshow(deconvwnr(I, PSF, estimated_nsr)), title('Wiener');
% figure(4); imshow(deconvreg(I, PSF)); title('Regul');
% figure(5); imshow(deconvblind(I, PSF, 100));
% title('Blind');
% figure(6); imshow(deconvlucy(Blurred, PSF, 100));
% title('Lucy');

% I = im2double(imread('image_src.png'));
% figure(1); imshow(I); title('Source image');
% % Blur image
% Blurred = imfilter(I, PSF,'circular','conv' );
% figure(2); imshow(Blurred); title('Blurred image');
% % Add noise
% noise_mean = 0;
% noise_var = 0.0;
% Blurred = imnoise(Blurred, 'gaussian', noise_mean, noise_var);
% % Deconvolution
% figure(3); imshow(deconvwnr(Blurred, PSF, 0)); title('Result');
