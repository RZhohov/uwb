function [bits]=info_bits(num_bits)
rand('state',15);
bits = rand(1,num_bits)>0.5; 
end