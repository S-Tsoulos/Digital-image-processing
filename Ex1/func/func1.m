%To function tou module einai na  vriskei kai na apothikeuei ta range twn
%eikonwn , na ta emfanizei kai epeita na efarmozei gramiko metasxhmatismo 
%kai telos emfanizei tis eikones prin kai meta to metasxhmatismo

function func1(x_fl,x_cl,Mer)

%efarmogh 2 fores min (mia gia kathe row kai mia gia to oliko ths eikonas)
%opws to idio kai gia max

%flo
ranges(1,1) = min(min(x_fl));
ranges(1,2) = max(max(x_fl));
fprintf('Range of flower : [%d,%d]\n',ranges(1,1),ranges(1,2));
%clock
ranges(1,3) = min(min(x_cl));
ranges(1,4) = max(max(x_cl));
fprintf('Range of clock: [%d,%d]\n',ranges(1,3),ranges(1,4));
%merlin
ranges(1,5) = min(min(Mer));
ranges(1,6) = max(max(Mer));
fprintf('Range of monroe : [%d,%d]\n',ranges(1,5),ranges(1,6));

n_fl = linear_transformation(x_fl, 0, 255);
n_cl = linear_transformation(x_cl, 0, 255);
n_Mer = linear_transformation(Mer, 0, 255);



subplot(3,2,1),
imshow(x_fl,[0 255]),
title('Flowers pre'),

subplot(3,2,2),
imshow(n_fl,[0 225]),
title('Flowers post'),

subplot(3,2,3),
imshow(x_cl,[0 255]),
title('Clock pre'),

subplot(3,2,4),
imshow(n_cl,[0 225]),
title('Clock post'),

subplot(3,2,5),
imshow(Mer,[0 255]),
title('Merilin pre'),

subplot(3,2,6),
imshow(n_Mer,[0 225]),
title('Merilin post');

end

