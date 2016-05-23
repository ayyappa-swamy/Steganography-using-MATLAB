function DECODE
[fim,pim]=uigetfile('Select image file');
fnm=char(inputdlg({'Enter Destination file name(including extension)'},'DECODE'));
%ps=inputdlg({'Enter PASS CODE : '},'SECRET');
%psc=str2double(char(ps));
imnm=strcat(pim,fim);
im=imread(imnm);
l=size(im);
txt=reshape(im,1,l(1)*l(2));
%txt=txt(1:psc);
t=fopen(fnm,'wb');
fwrite(t,txt,'*ubit1');
fclose(t);
end