function LI = laplacian_filter(I)

LM = [0 1 0;1 -4 1;0 1 0];
LI = conv2(I,LM,'same');
LI = linear_transformation(LI,min(min(I)), max(max(I)));

end