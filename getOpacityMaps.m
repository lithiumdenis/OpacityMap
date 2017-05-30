clc; clear;

%������� ��� ����������� �� ����� images, ����������� � ����� ���������� ��
%��������
addpath('images');
list = ls('images/*.*g');
%����� �����������
lsize = size(list);
lsize = lsize(1);

%�������� ��� ����������� � ������ cell
imageCell = cell(1, lsize);
for i = 1:lsize
    imageCell{i} = imread(strtrim(list(i,:)));
end

%������� oppacity maps
imageOppacityCell = cell(1, lsize);
for i = 1:lsize
    imageOppacityCell{i} = getOppacityMapFromImage(imageCell{i});
end

