function func2(y)

%i)
%different cutoff frequncies and results
d0 = 10;
fi1 = but_to_image(y,d0);

d0 = 300;
fi2 = but_to_image(y,d0);
d0 = 600;
fi3 = but_to_image(y,d0);

%ii)

%stage 1
l_fi1 = laplacian_filter(fi1);
n_fi1 = fi1 - l_fi1;
n_fi1 = linear_transformation(n_fi1,min(min(fi1)), max(max(fi1)));
%stage 2
l_fi2 = laplacian_filter(fi2);
n_fi2 = fi2 - l_fi2;
n_fi2 = linear_transformation(n_fi2,min(min(fi2)), max(max(fi2)));

%stage 3
l_fi3 = laplacian_filter(fi3);
n_fi3 = fi3 - l_fi3;
n_fi3 = linear_transformation(n_fi3,min(min(fi3)), max(max(fi3)));




% subplot(1,2,1),
% imshow(fi1,[]),
% title('Original'),
% subplot(1,2,2),
% imshow(n_fi1,[]),
% title('After laplacian filter 10');

% figure(2);
% subplot(1,2,1),
% imshow(fi2,[]),
% title('Original'),
% subplot(1,2,2),
% imshow(n_fi2,[]),
% title('After laplacian filter 300');
% 
figure(3);
subplot(1,2,1),
imshow(fi3,[]), 
title('Original'),
subplot(1,2,2),
imshow(n_fi3,[]),
title('After laplacian filter 600');


end