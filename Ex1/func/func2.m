function func2(im,ch)

%euresh kai emfanish  ranges me th gnwsth methodo
fprintf('Range of image1 : [%d,%d]\n',min(min(im)), max(max(im)));
fprintf('Range of church  : [%d,%d]\n',min(min(ch)),max(max(ch)));

%pairnoume tis kainouries contrast equalized eikones
n_im = eq_histogram(im);
n_ch = eq_histogram(ch);


figure(1);
subplot(2,2,1),
imshow(im,[0 255]),
subplot(2,2,2),
imshow(n_im,[0 255]),
subplot(2,2,3),
histogram(im),title("histo image1 pre")
subplot(2,2,4),
histogram(n_im),
title("histo image1 post")

figure(2);
subplot(2,2,1),
imshow(ch,[0 255]),
subplot(2,2,2),
imshow(n_ch,[0 255]),
subplot(2,2,3),
histogram(ch),title("church histo pre"),
subplot(2,2,4),
histogram(n_ch),title("church histo post"),
title("church")

end