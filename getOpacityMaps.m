clc; clear;

%Получим все изображения из папки images, находящейся в одной директории со
%скриптом. Там же необходимо создать пустую папку imOutputs
addpath('images');
list = ls('images/*.*g');
%Число изображений
lsize = size(list);

for i = 1:lsize(1)
    imCurr = getOppacityMapFromImage(imread(strtrim(list(i,:))));
    imwrite(imCurr, strcat('imOutputs/', getFilenameWithoutExt(strtrim(list(i,:))), '.png'));
end
