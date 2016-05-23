function CODE
[f,p]=uigetfile();
filnm=strcat(p,f);
im=char(inputdlg({'Enter destination image file name'},'CODE'));
imnm=strcat(im,'.bmp');
t=fopen(filnm,'rb');
txt=fread(t,'*ubit1');
fclose(t);
li=length(txt);
%msg=sprintf('YOUR PASS CODE IS : %d',li);
%msgbox(msg,'SECRET');
lim=ceil(sqrt(li));
ft=logical(zeros(1,lim^2));
ft(1:li)=txt;
txt=logical(reshape(ft,lim,lim));
imwrite(txt,imnm)
end