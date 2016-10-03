function[gaussianBpamPulse] =gauss_bpam(pulseDuration, time)
sigma = pulseDuration/(2*pi); % sigma
gaussianBpamPulse = -time ./ (sqrt(2*pi)*sigma.^3).* exp( - time.^2/(2*sigma.^2));
% filter Impulse Response
norm_guass = sqrt(gaussianBpamPulse*gaussianBpamPulse');
gaussianBpamPulse = (gaussianBpamPulse ./ norm_guass);
% normalize the pulse
end