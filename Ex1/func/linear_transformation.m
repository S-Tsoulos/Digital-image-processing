function n_im = linear_transformation(im,n_min,n_max)

o_min = min(min(im));
o_max = max(max(im));

n_im = ( ( (n_max - n_min) / (o_max - o_min) ) * (im - o_min) ) + n_min;

end