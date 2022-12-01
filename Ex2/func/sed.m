
function Gimage2 = sed(I)
PGC = [1 2 1;0 0 0;-1 -2 -1];
PGR = [-1 0 1; -2 0 2;-1 0 1];


GR = conv2(I,PGR);
GC = conv2(I,PGC);

G = round(sqrt((double(GR).^2 + double(GC).^2)));
Gimage = uint8(G);


T = 100;

[n,m] = size(G);

for i=1:n
	for j=1:m
		if G(i,j) > T
			G(i,j) = 255;
		else
			G(i,j) = 0;
        end
    end
end

Gimage2 = uint8(G);


figure,
subplot(1,3,1),
imshow(I),title('Original grayscale'),
subplot(1,3,2),imshow(Gimage),
title('Sobels'),
subplot(1,3,3),imshow(Gimage2),
title('After whole thresholding');

end