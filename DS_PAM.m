function [PAMseq] = DS_PAM(rep_bits,DS_code)
DS_len =length(DS_code);
seq_len = length(rep_bits);
PAMseq = zeros(1,seq_len);
for k = 1 : seq_len
KDS = DS_code(1+mod(k-1,DS_len));
PAMseq(k)=((2*rep_bits(k))-1) * KDS;
end
end