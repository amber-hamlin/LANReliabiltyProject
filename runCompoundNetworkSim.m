%% Function  runCompoundNetworkSim()
% Parameters
%  K - the number of packets in the application message
%  p - the probability of failure 
%  N - the number of simulations to run
%
% Returns: the average numeric result across the total simulations

function result =  runCompoundNetworkSim(K,p,N)

    simResults = ones(1,N); % a place to store the result of each simulation
    
    for i=1:N
        txAttemptCount = 0; % transmission count
        pktSuccessCount = 0; % number of packets that have made it across
    
        while pktSuccessCount < K
            
            r = rand; % generate random number to determine if packet is successful on 1st link (r > p)
            r2= rand; % generate random number to determine if packet is successful on 2st link (r2 > p)
            r3=rand;
            txAttemptCount = txAttemptCount + 1; % count 1st attempt
        
            % while packet transmissions is not successful ( (r < p && r2 < p) ||  r3 < p)
            while (r < p && r2 < p) ||  r3 < p
                r = rand; % transmit again, generate new success check value r, r2, and r3
                r2= rand;
                r3=rand;
                txAttemptCount = txAttemptCount + 1; % count additional attempt
            end
        
            pktSuccessCount = pktSuccessCount + 1; % increase success count after success ((r > p || r2 >p )&& r3 > p)
        end
    
        simResults(i) = txAttemptCount; % record total number of attempted transmissions before entire application message (K successful packets) transmitted
    end

    result = mean(simResults);
end