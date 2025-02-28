rng('shuffle') %shuffle the random number generator
monte_carlo_runs=1000; %set the number of monte carlo iterations

%use different number for standard deviation so that I am not just
%giving the answers away! :-)
vs=100; %you should use 100 V, as given in the lab assignment!
meanR_demo=470e3; %you should use what you get above!
stdR_demo=(20e3)/3; %you should use the standard deviation you get above!

r1min=meanR_demo-3*stdR_demo;
r1max=meanR_demo+3*stdR_demo;
r2min=meanR_demo-3*stdR_demo;
r2max=meanR_demo+3*stdR_demo;

% see the following in help rand; this is used below in the for loop:
% r = a + (b-a).*rand(100,1); <-- a is the minimum value, b is the max

Req=zeros(1,monte_carlo_runs); %pre-allocate memory needed to store vout

for k=1:monte_carlo_runs
    r1=r1min+(r1max-r1min)*rand(1); %using uniform distribution, not normal, which is randn
    r2=r2min+(r2max-r2min)*rand(1); %using uniform distribution, not normal, which is randn
    Req(1,k)=r1+r2;
end

format shortEng

ReqMin=min(Req);
ReqMax=max(Req);
disp('Req,min from monte carlo run is:')
disp(ReqMin)
disp('Req,max from monte carlo run is:')
disp(ReqMax)

format short %note that format shorteng was set up at the top of this script