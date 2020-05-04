clear all; close all; clc; 

image = imread('lenagray.tif', 'tif'); 
image = im2double(image); 
imshow(image);

[r c] = ginput(4); 
bw = roipoly(image, r,c);
figure; 
imshow(bw)

[R C] = size(bw); 
for i = 1 : R 
    for j = 1 : C 
        if bw(i, j) == 1
            out(i,j) = image(i, j ); 
        else 
            out(i, j) = 0; 
        end
    end
end
figure; 
imshow(out, [])