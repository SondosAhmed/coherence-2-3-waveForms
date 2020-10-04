clear all
clc; 
clf;
Data;


%% This program calls the main program "coherence_MVDR",
%% which computes the coherence function with the MVDR method

%example on how the coherence function works with the MVDR method
%see papers for more explanations
Fs=1000;
figure(1);
ax(1) = subplot(3,1,1);
 plot((0:numel(IED_F3High_betaEpoc)-1)/Fs,IED_F3High_betaEpoc,'k');
ylabel('Template 1')
axis([0 0.5 -1 10])
grid on
ax(2) = subplot(3,1,2); 
  plot((0:numel(IED_F8High_betaEpoc)-1)/Fs,IED_F8High_betaEpoc,'r');
ylabel('Template 2')
grid on
xlabel('Time (secs)')
linkaxes(ax(1:2),'x')
axis([0 0.5 -1 10])

%coherence with MATLAB
WL      = 100; %window length
for i=1:2
    IED_F3High_betaEpoc(i)=0;
    IED_F8High_betaEpoc(i)=0;
end
[cx1x2,w] = mscohere(IED_F3High_betaEpoc,IED_F8High_betaEpoc,WL);
p = mean(cx1x2)*100

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Coherence with the MVDR method
K = 200; %to increase resolution
L = 100; %window length
[MSC]=coherence_MVDR(IED_F3High_betaEpoc,IED_F8High_betaEpoc,L,K);
%
K2 = K/2;
MSCf = MSC(1:K2);
wwf = [0:1/K2:1-1/K2]';


%%%%%%%%%%%%%%%%ploting the results
if p==100
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




%
%%subplot(2,1,1)
%%plot(w/2,cx1x2)
%legend('');
%%grid on;
%%ylabel('MSC');
%%title('(a)')
%%axis([0 1/2 0 1]);


%

%

%
