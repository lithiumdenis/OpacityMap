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
for i = 1:lsize(1)
    imageCell{i} = imread(strtrim(list(i,:)));
end

