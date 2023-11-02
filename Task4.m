%% LAN Reliability Project  
% Amber Hamlin
%
% Network Engineering: Task 4

markerColorMatrix=["bo","go","co","mo","ro"]; % matrix to switch colors for different values of k 
Kmatrix=[1 5 15 50 100]; % number of packets
N=1000; % number of simulations to run

for Kindex=1:5 %go through each k value in K matrix
K= Kmatrix(Kindex); %k is set to the k index value
index=1; %used to index into array to build result of transmission simulation
numberofTransmissions= zeros(1,100); % array filled with zeros with the desired length of results from simulation for each p

x=0:0.01:0.99; %probability range 
    for p = 0:0.01:0.99
        numberofTransmissions(index)= runCompoundNetworkSim(K,p,N); % run simulation 
        index=index+1; %increment number of Transmissions array so it can correpsond with probabilty value
    end

    if Kindex>1
        figure; %create new plot after 1st one
    end

semilogy(x, numberofTransmissions, markerColorMatrix(Kindex)); %plot with log y-axis scale and linear x-axis 
hold on;

%label plot
title("Avg # of Transmissions vs. Probability of failure for k="+ Kmatrix(Kindex));
xlabel("Probability of failure");
ylabel("Average Number of Transmissions");
xlim([0 1]); %set x-axis limits

%accumulation figure
figure(6); %plot each result for the different k values on figure 6
semilogy(x, numberofTransmissions, markerColorMatrix(Kindex)); %plot with log y-axis scale and linear x-axis 
hold on; 
title("Average Number of Transmissions vs. Probability of failure");
xlabel("Probability of failure");
ylabel("Average Number of Transmissions");
xlim([0 1]);

end
