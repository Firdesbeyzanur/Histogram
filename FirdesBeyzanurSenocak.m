clc;
clear all;
close all;

OrjinalResim=imread ( 'Fig0310(b)(washed_out_pollen_image).tif' );
GirisHistogram=imhist(OrjinalResim);
subplot(1,2,1);
imshow(OrjinalResim);
title('Orjinal Resim');
subplot(1,2,2);
plot(GirisHistogram);
title('Giriþ Histogramý');
axis tight;
figure

%s=T(r)=(L-1)integral_0^r(p(r)(w)dw)=1/(L-1) Histogram Equalization
%(Denkleþtirme)dönüþümünü kullandým. Dönüþüm fonksiyonu kýsaca 1/(L-1)'dir.
syms L
fplot(1/(L-1));
figure

HistogramResim=histeq(OrjinalResim);
subplot(1,2,1);
imshow(HistogramResim);
title('Histogram Uygulanmýþ Resim');
subplot(1,2,2);

CikisHistogram=imhist(HistogramResim);
plot(CikisHistogram);
title('Çýkýþ Histogram');

ortalama=899*899/256;
mean((CikisHistogram-ortalama).^2)















