clc; clear;

%������� ��� ����������� �� ����� images, ����������� � ����� ���������� ��
%��������. ��� �� ���������� ������� ������ ����� imOutputs
addpath('images');
list = ls('images/*.*g');
%����� �����������
lsize = size(list);

for i = 1:lsize(1)
    imCurr = getOppacityMapFromImage(imread(strtrim(list(i,:))));
    imwrite(imCurr, strcat('imOutputs/', getFilenameWithoutExt(strtrim(list(i,:))), '.png'));
end