%%%%%%%%%%%%%%%%%%
%%Created in 2018
%% Eng. Sondos
%% study to analyze and obtain coherence beween 2 waveform
%% inputs are data from excel sheet
%%%%%%%%%%%%%%%%%%%5
clc; 
clear all;
%%%Uploading Xls file as a vectors
Data
%%%%%%% Entering three Electrodes to calculate their coherence
First_waveform = input(' Enter your First electrode : ');
Second_waveform = input(' Enter the Second electrode : ');
%%Third_waveform = input(' Enter the Third electrod column name: ');
clc;
%%%%Plotting the three waveform
Fs=1000;
figure(1);
ax(1) = subplot(3,1,1);
 plot((0:numel(First_waveform)-1)/Fs,First_waveform,'k');
ylabel('First_waveform')
axis([0 0.5 -1 10])
grid on
ax(2) = subplot(3,1,2); 
  plot((0:numel(Second_waveform)-1)/Fs,Second_waveform,'r');
ylabel('Second_waveform' )
grid on
xlabel('Time (secs)')
linkaxes(ax(1:2),'x')
axis([0 0.5 -1 10])
%%grid on
%ax(2) = subplot(3,1,3); 
  %plot((0:numel(Third_waveform)-1)/Fs,Third_waveform,'r');
%%ylabel(Third_waveform )
%%grid on
%%xlabel('Time (secs)')
%%linkaxes(ax(1:2),'x')
%%axis([0 0.5 -1 10])
%Coherence Calculation with MATLAB
WL      = 100; %window length
%%%For loop to eliminate the first null value from each column
for i=1:2
    First_waveform(i)=0;
    Second_waveform(i)=0;
    %Third_waveform(i)=0;
end
%%%% Use MSCOHERE matlab Function to calculate the coherence between 
%%%% two signals
[cx1x2,w] = mscohere(First_waveform,Second_waveform,WL);
%%[cx2x3,w2] = mscohere(Second_waveform,Third_waveform,WL);
%%%%%%% Coherence percentage
Coherence_percentage = mean(cx1x2)*100

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Coherence with the MVDR method For graphs
K = 200; %to increase resolution
L = 100; %window length
[MSC]=coherence_MVDR(First_waveform,Second_waveform,L,K);
%%[MSC2]=coherence_MVDR(Second_waveform,Third_waveform,L,K);
%
K2 = K/2;
MSCf = MSC(1:K2);
wwf = [0:1/K2:1-1/K2]';


%%%%%%%%%%%%%%%%ploting the results
if Coherence_percentage==100
    subplot(3,1,3)
    plot(w/2,cx1x2);
    legend('');
    grid on;
    ylabel('MSC');
    title('Coherence')
    axis([0 1/2 0 1]);
    else
    subplot(3,1,3)
    plot(wwf/2,MSCf)
    grid on;
    ylabel('MSC');
    xlabel('Frequency');
    title('Coherence')
    axis([0 1/2 0 1]);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%