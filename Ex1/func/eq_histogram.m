function n_im = eq_histogram(im)

im = uint8(im);

rows = size(im,1);
columns = size(im,2);
total = rows * columns;

freq  = zeros(256,1);
r_cdf = zeros(256,1);

n_im  = uint8(zeros(rows,columns));

sum = 0;

%euresh syxnothtas pykntothtas tou gkri
for i=1:rows
    for j=1:columns
        freq(im(i,j)+1) = freq(im(i,j)+1) + 1;
    end
end

%ypologismos pithanothtas pykntothtas 
pdf = freq/total;

%ypologimos ths synarthshs katanomhs
for i=1:size(pdf)
    sum = sum + freq(i);
    r_cdf(i) = round(sum/total*255); %strogylopoihsh synarthshs katanomhs
end

%dhmiourgia neas eikonas me xrhsh strogyloopihmenhs synarthshs katanomhs
for i=1:rows
    for j=1:columns
        n_im(i,j) = r_cdf(im(i,j)+1);
    end
end

end