clc; clear;

%Получим все изображения из папки images, находящейся в одной директории со
%скриптом
addpath('images');
list = ls('images/*.*g');
%Число изображений
lsize = size(list);
lsize = lsize(1);

%Сохраним все изображения в единый cell
imageCell = cell(1, lsize);
for i = 1:lsize
    imageCell{i} = imread(strtrim(list(i,:)));
end

%Получим oppacity maps
imageOppacityCell = cell(1, lsize);
for i = 1:lsize
    imageOppacityCell{i} = getOppacityMapFromImage(imageCell{i});
end

