function [ imO ] = getOppacityMapFromImage(imIn)
%getOppacityMapFromImage получает карту размытия imO из исходного
%изображения imIn.
sizesOfImIn = size(imIn);
imO = uint8(zeros(sizesOfImIn));
for i = 1:sizesOfImIn(1)
    for j = 1:sizesOfImIn(2)
        for k = 1:sizesOfImIn(3)
            if(imIn(i,j,k) == 0)
                imO(i,j,k) = 0;
            else
                imO(i,j,k) = 255;
            end
        end
    end
end
end