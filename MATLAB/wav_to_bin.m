clear
clc

wav = fread(fopen('canS-mono.wav', 'r'), [1 , Inf], 'int16');
t = 1 : 1 : length(wav);

plot(t,wav)



gt = max(wav);
lt = min(wav);

% bin = fopen('canS-mono-bin.bin', 'w');
% fwrite(bin, wav);
% fclose(bin);

