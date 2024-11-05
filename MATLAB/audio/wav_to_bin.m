clear
clc

wav = fread(fopen('canS-stereo-2.wav', 'r'), [1 , Inf], 'uint8');
t = 1 : 1 : length(wav);
x = length(t) / 2;
offset = 45;

% Truncate off header
wav = wav(offset:end);

wav_2 = reshape(wav, [], length(wav) / 2);

wav_3 = wav_2(1,1:2:end);
wav_4 = wav_2(2,1:2:end); 

len = length(wav_3);
wav_5 = zeros(2,len);

wav_5(1,:) = wav_3;
wav_5(2,:) = wav_4;

wav_6 = reshape(wav_5, 1, []);

% index = 1;
% for i = 1:length(wav)
% 
%     if(index == 3 || index == 4)
%        
%         wav(i) = 0;
%         
%     end
%     
%     index = index + 1;
%     
%     if (index == 5)
%        index = 1; 
%     end
%     
% end

% stem(t,wav)

% gt = max(wav);
% lt = min(wav);

file = fopen('canS-stereo-reduced.wav', 'w');
fwrite(file, wav_6);
fclose(file);

