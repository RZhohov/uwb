function [output] = diff_enc(input, inputState)
output = zeros(size(input));
output(1) = (inputState * input(1));
for p = 2:length(input)
output(p)= (output(p-1)* input(p));
end
end