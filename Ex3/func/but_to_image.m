function fi1 = but_to_image(y,d0)

%order of 1
n = 1;
blpf1 = BLPF(y,d0,n);

%order of 2
n = 2;
blpf2 = BLPF(y,d0,n);

%order of 4
n = 4;
blpf3 = BLPF(y,d0,n);


fi1 = fdf(y, blpf1);
fi2 = fdf(y, blpf2);
fi3 = fdf(y, blpf3);


subplot(3,3,1),imshow(blpf1,[]);
subplot(3,3,2),imshow(blpf2,[]);
subplot(3,3,3),imshow(blpf3,[]);

if d0<40
    i=250;
    j=350;
elseif d0<200
    i=0;
    j=500;
else
    i=0;
    j=1000;
end


subplot(3,3,4),mesh(blpf1),axis([i j i j 0 1]);
subplot(3,3,5),mesh(blpf2),axis([i j i j 0 1]);
subplot(3,3,6),mesh(blpf3),axis([i j i j 0 1]);


subplot(3,3,7),imshow(fi1,[]);
subplot(3,3,8),imshow(fi2,[]);
subplot(3,3,9),imshow(fi3,[]);

suptitle({'Butterworth Lowpass Filter',['Cutoff Frequency: ',num2str(d0)]});

end