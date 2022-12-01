function func3(dscn1078,museum)

%split RGB channels

r = dscn1078(:,:,1);
g = dscn1078(:,:,2);
b = dscn1078(:,:,3);

%apeutheias isostathmish twn RGB channels
h_r = eq_histogram(r);
h_g = eq_histogram(g);
h_b = eq_histogram(b);

%epanoikodomhsh ths eikonas 
dscn1078_new = cat(3,h_r, h_g, h_b);

figure(1);

subplot(2,2,1),
imshow(dscn1078),

subplot(2,2,2),
imshow(dscn1078_new),
subplot(2,2,3),
histogram(dscn1078),
subplot(2,2,4),
histogram(dscn1078_new);

%ta idia vimata kai gia to museum
r = museum(:,:,1);
g = museum(:,:,2);
b = museum(:,:,3);


h_r = eq_histogram(r);
h_g = eq_histogram(g);
h_b = eq_histogram(b);


museum_new = cat(3,h_r, h_g, h_b);


figure(2)
subplot(2,2,1),
imshow(museum),
title('pre'),

subplot(2,2,2),
imshow(museum_new),
title('post');

subplot(2,2,3),
histogram(museum),
subplot(2,2,4),
histogram(museum_new);

%metatroph apo montelo rgb se montelo hsi
dscn1078_hsi = rgb2hsv(dscn1078);
museum_hsi  = rgb2hsv(museum);

%kratame to kanali intensity 
I_dscn1078 = dscn1078_hsi(:,:,3);
I_museum  = museum_hsi(:,:,3);

%efarmozoume gramiko metasxhmatismo gia to euros [0-255]
I_dscn1078 = linear_transformation(I_dscn1078,0,255);
I_museum = linear_transformation(I_museum,0,255);

%efarmozoume isostathmish istogrammatos sta kanalia intensisy
I_dscn1078 = eq_histogram(I_dscn1078);
I_museum  = eq_histogram(I_museum);

%metatrepoume to kanali apo range 0-255 sto original tou intensity
%[0.0-1.0]
I_dscn1078 = double(I_dscn1078)/255;
I_museum = double(I_museum)/255;

%antikathistoume to palio kanali intensity
dscn1078_hsi(:,:,3) = I_dscn1078;
museum_hsi(:,:,3) = I_museum;

%hsi se se rgb
n_dscn1078 = hsv2rgb(dscn1078_hsi);
n_museum  = hsv2rgb(museum_hsi);

figure(3);
subplot(2,2,1),
imshow(dscn1078),
subplot(2,2,2),
imshow(n_dscn1078),

subplot(2,2,3),
histogram(dscn1078),
subplot(2,2,4),
histogram(n_dscn1078);


figure(4);
subplot(2,2,1),
imshow(museum),
subplot(2,2,2),
imshow(n_museum)

subplot(2,2,3),
histogram(museum),
subplot(2,2,4),
histogram(n_museum);


end