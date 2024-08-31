clear
clc

wav = fread(fopen('canS-stereo.wav', 'r'), [1 , Inf], 'int16');
t = 1 : 1 : length(wav);

stem(t,wav)

gt = max(wav);
lt = min(wav);

% bin = fopen('canS-stereo-bin.bin', 'w');
% fwrite(bin, wav);
% fclose(bin);

