function func1(ch2, san)

%se aspromauro
gch2 = rgb2gray(ch2);
gsan = rgb2gray(san);

%Sobels 
tch2 = sed(gch2);
tsan = sed(gsan);


figure,subplot(2,2,1),
image(ch2),
title('Pre'),
subplot(2,2,2),
image(tch2),
title('Post'),
subplot(2,2,3),
image(san),
subplot(2,2,4),
image(tsan);

end