function func2(y_cl,y_fl)

l_cl = laplacian_filter(y_cl);
l_fl = laplacian_filter(y_fl);

n_cl = y_cl - l_cl;
n_fl = y_fl - l_fl;

n_cl = linear_transformation(n_cl,min(min(y_cl)), max(max(y_cl)));
n_fl = linear_transformation(n_fl,min(min(y_fl)), max(max(y_fl)));

subplot(2,2,1),
imshow(y_cl,[0 255]),
title('Original'),

subplot(2,2,2),
imshow(n_cl,[0 255]),
title('After laplacian filter');

subplot(2,2,3),
imshow(y_fl,[0 255]),
subplot(2,2,4),
imshow(n_fl,[0 255]);
end