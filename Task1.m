%% LAN Reliability Project  
% Amber Hamlin
%
% Network Engineering: Task 1

colorMatrix=['b','g','c','m','r']; %matrix to switch colors for different values of k 
Kmatrix=[1 5 15 50 100]; % number of packets
N=1000; % number of simulations to run

for Kindex=1:5 % go through each k value in K matrix
K= Kmatrix(Kindex); % k is set to the k index value
index=1; %used to index into array to build result of transmission simulation
numberofTransmissions= zeros(1,100); % array filled with zeros with the desired length of results from simulation for each p 
calculatedResults= zeros(1,100); % array filled with zeros with the desired length of results from calculation for each p
x=0:0.01:0.99; %probability range 

    for p = 0:0.01:0.99 %test for every posssible p value
        numberofTransmissions(index)= runSingleLinkSim(K,p,N); %run simulation 
        calculatedResults(index)= K/(1-p); %calculate results for each p
        index=index+1; %increment number of Transmissions array so it can correspond with probabilty value
    end

    if Kindex>1
        figure; %create new plot everytime after 1st one
    end

semilogy(x, numberofTransmissions, 'ko', 'MarkerSize',8); %plot with log y-axis scale and linear x-axis 
hold on;
semilogy(x, calculatedResults, colorMatrix(Kindex), 'LineWidth',2); %plot with log y-axis scale and linear x-axis 

%label plot
title("Avg # of Transmissions vs. Probability of failure for k="+ Kmatrix(Kindex));
xlabel("Probability of failure");
ylabel("Average Number of Transmissions");
xlim([0 1]); %make x-axis go from 0-1

%accumulation figure
figure(6); %plot each result for the diffrent k values on figure 6
title("Average Number of Transmissions vs. Probability of failure");
xlabel("Probability of failure");
ylabel("Average Number of Transmissions");
xlim([0 1]);  %make x-axis go from 0-1
semilogy(x, numberofTransmissions, 'ko'); %plot simulation results with log y-axis scale and linear x-axis 
hold on;
semilogy(x, calculatedResults, colorMatrix(Kindex), 'LineWidth',2); %plot calculated results with log y-axis scale and linear x-axis 


end
