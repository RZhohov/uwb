function [repbits] = rep_coder(bits,Ns)
num_bits = length(bits); %number of bits
rect_filter = ones(1,Ns);
temp1 = zeros(1,(num_bits*Ns));
temp1(1:Ns:1+Ns*(num_bits-1)) = bits;
temp2 = conv(temp1, rect_filter);
repbits = temp2(1:Ns*num_bits);
end