%CHOOSING TO IGNORE PARTIAL BLOCKS
function [imgc]=pixel_avg(img, block_size)
    n=length(img);
    looper=floor(log2(block_size));
    l=1;
    imgc=zeros(floor(log2(n)/log2(block_size)),floor(log2(n)/log2(block_size)));
    for i=1+looper:looper:n-looper
        m=1;
        for j=1+looper:looper:n-looper
            block=img(i-looper:i+looper,j-looper:j+looper);
            avg=mean(block, "all");
            imgc(l,m)=avg;
            m=m+1
        end
        l=l+1
    end
    disp(l)
    disp(m)
end


