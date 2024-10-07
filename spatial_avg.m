function [img]=spatial_avg(img)
    n=length(img);
    imgf=zeros(n+2, n+2);
    imgf(2:end-1, 2:end-1)=img;
    for i=1:n
        for j=1:n
            arr=imgf(i:i+2, j:j+2);
            img(i,j)=mean(arr, "all");
        end
    end

