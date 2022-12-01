function func1(H1, H2, a, im)


fft2d(H1);
fft2d(H2);
fft2d(a);
fft2d(im);


%rotate images
rota = imrotate(a, 45);
rotim = imrotate(im, 45);

fft2d(rota);
fft2d(rotim);

end