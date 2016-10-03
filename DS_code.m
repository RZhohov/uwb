function [DScode] = DS_code (Np)
DScode = ((rand(1,Np) > 0.5).*2) - ones (1,Np);
end