function [UWB_Tx] = UWB_transmitter(num_bits,Ns, Np, sampling_time, bit_duration)
% impulse response of pulse shape filter
win_len = 20;
pulse_len = sampling_time*win_len;
pulse_time = (-win_len:1:win_len)* sampling_time;
gausBpam = gauss_bpam(pulse_len, pulse_time);
bits = info_bits(num_bits); % information bits
repbits = rep_coder(bits,Ns); % repeated bits
DScode = DS_code (Np); % code
pam_sig = DS_PAM(repbits,DScode);
tx_samples = diff_enc (pam_sig, 1 );
Tx_signal = upsample(tx_samples, int32(bit_duration./ sampling_time));
UWB_Tx = filter(gausBpam ,1, Tx_signal);
end