function [s,f,t,p] = features(songname)
[data, fs] = audioread(songname);
window = hamming(512);
noverlap = 256;
nfft = 1024;
[s,f,t,p] = spectrogram(data(1,:),window,noverlap,nfft,fs,'yaxis');