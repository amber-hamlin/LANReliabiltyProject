%% LAN Reliability Project  
% Amber Hamlin
%
% Network Engineering: Task 5

markerColorMatrix=["bo","go","ro"];  % matrix to switch colors for different values of k 
Kmatrix=[1 5 10]; % number of packets
N=1000; % number of simulations to run


%Figure 1
for Kindex=1:length(Kmatrix) %go through each k value in K matrix
K= Kmatrix(Kindex); %k is set to the k index value
index=1; %used to index into array to build result of transmission simulation
numberofTransmissions= zeros(1,100); % array filled with zeros with the desired length of results from simulation for each p

%set probability of failure values
p1= 0.10;
p2= 0.60;
x=0:0.01:0.99; % variable probability range 
    for p3 = 0:0.01:0.99
        numberofTransmissions(index)= runCustomCompoundNetworkSim(K,p1,p2,p3,N); % run simulation 
        index=index+1; %increment number of Transmissions array so it can correspond with probabilty value
    end

semilogy(x, numberofTransmissions, markerColorMatrix(Kindex)); %plot with log y-axis scale and linear x-axis 
hold on;
%label plot
title("Average Number of Transmissions vs. Probability of failure");
xlabel("Probability of failure");
ylabel("Average Number of Transmissions");

%set y and x axis limits to be consistent on each figure
xlim([0 1]);
ylim([0 10^3]);
end

%Figure 2
for Kindex=1:length(Kmatrix) %go through each k value in K matrix
K= Kmatrix(Kindex); %k is set to the k index value
index=1; %used to index into array to build result of transmission simulation
numberofTransmissions= zeros(1,100);% array filled with zeros with the desired length of results from simulation for each p
%set probability of failure values
p1= 0.60;
p2= 0.10;
x=0:0.01:0.99; % variable probability range 
    for p3 = 0:0.01:0.99
        numberofTransmissions(index)= runCustomCompoundNetworkSim(K,p1,p2,p3,N); % run simulation 
        index=index+1; %increment number of Transmissions array so it can correpsond with probabilty value
    end

figure(2);
semilogy(x, numberofTransmissions, markerColorMatrix(Kindex)); %plot with log y-axis scale and linear x-axis 
hold on;
%label plot
title("Average Number of Transmissions vs. Probability of failure");
xlabel("Probability of failure");
ylabel("Average Number of Transmissions");
%set y and x axis limits to be consistent on each figure
xlim([0 1]);
ylim([0 10^3]);
end

%Figure 3
for Kindex=1:length(Kmatrix) %go through each k value in K matrix
K= Kmatrix(Kindex); %k is set to the k index value
index=1; %used to index into array to build result of transmission simulation
numberofTransmissions= zeros(1,100); % array filled with zeros with the desired length of results from simulation for each p
%set probability of failure values
p1= 0.10;
p3= 0.60;
x=0:0.01:0.99; % variable probability range 
    for p2 = 0:0.01:0.99
        numberofTransmissions(index)= runCustomCompoundNetworkSim(K,p1,p2,p3,N); % run simulation 
        index=index+1; %increment number of Transmissions array so it can correpsond with probabilty value
    end

figure(3);
semilogy(x, numberofTransmissions, markerColorMatrix(Kindex)); %plot with log y-axis scale and linear x-axis 
hold on;
%label plot
title("Average Number of Transmissions vs. Probability of failure");
xlabel("Probability of failure");
ylabel("Average Number of Transmissions");
%set y and x axis limits to be consistent on each figure
xlim([0 1]);
ylim([0 10^3]);
end

%Figure 4
for Kindex=1:length(Kmatrix) %go through each k value in K matrix
K= Kmatrix(Kindex); %k is set to the k index value
index=1; %used to index into array to build result of transmission simulation
numberofTransmissions= zeros(1,100); % array filled with zeros with the desired length of results from simulation for each p
%set probability of failure values
p1= 0.60;
p3= 0.10;
x=0:0.01:0.99; % variable probability range 
    for p2 = 0:0.01:0.99
        numberofTransmissions(index)= runCustomCompoundNetworkSim(K,p1,p2,p3,N); % run simulation 
        index=index+1; %increment number of Transmissions array so it can correpsond with probabilty value
    end

figure(4);
semilogy(x, numberofTransmissions, markerColorMatrix(Kindex)); %plot with log y-axis scale and linear x-axis 
hold on;
%label plot
title("Average Number of Transmissions vs. Probability of failure");
xlabel("Probability of failure");
ylabel("Average Number of Transmissions");
%set y and x axis limits to be consistent on each figure
xlim([0 1]);
ylim([0 10^3]);
end

%Figure 5
for Kindex=1:length(Kmatrix) %go through each k value in K matrix
K= Kmatrix(Kindex); %k is set to the k index value
index=1; %used to index into array to build result of transmission simulation
numberofTransmissions= zeros(1,100); % array filled with zeros with the desired length of results from simulation for each p
%set probability of failure values
p2= 0.10;
p3= 0.60;
x=0:0.01:0.99; % variable probability range 
    for p1 = 0:0.01:0.99
        numberofTransmissions(index)= runCustomCompoundNetworkSim(K,p1,p2,p3,N); % run simulation 
        index=index+1; %increment number of Transmissions array so it can correpsond with probabilty value
    end

figure(5);
semilogy(x, numberofTransmissions, markerColorMatrix(Kindex)); %plot with log y-axis scale and linear x-axis 
hold on;
%label plot
title("Average Number of Transmissions vs. Probability of failure");
xlabel("Probability of failure");
ylabel("Average Number of Transmissions");
%set y and x axis limits to be consistent on each figure
xlim([0 1]);
ylim([0 10^3]);
end

%Figure 6
for Kindex=1:length(Kmatrix) %go through each k value in K matrix
K= Kmatrix(Kindex); %k is set to the k index value
index=1; %used to index into array to build result of transmission simulation
numberofTransmissions= zeros(1,100); % array filled with zeros with the desired length of results from simulation for each p
%set probability of failure values
p2= 0.60;
p3= 0.10;
x=0:0.01:0.99; % variable probability range 
    for p1 = 0:0.01:0.99
        numberofTransmissions(index)= runCustomCompoundNetworkSim(K,p1,p2,p3,N); % run simulation 
        index=index+1; %increment number of Transmissions array so it can correpsond with probabilty value
    end

figure(6);
semilogy(x, numberofTransmissions, markerColorMatrix(Kindex)); %plot with log y-axis scale and linear x-axis 
hold on;
%label plot
title("Average Number of Transmissions vs. Probability of failure");
xlabel("Probability of failure");
ylabel("Average Number of Transmissions");
%set y and x axis limits to be consistent on each figure
xlim([0 1]);
ylim([0 10^3]);
end