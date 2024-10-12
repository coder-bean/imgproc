function [img]=reduce_intensity(img, i_levels)
    for i=1:log2(i_levels)-1
        img=floor(img/2);
    end



    