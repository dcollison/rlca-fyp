%%
global epsilon
global Q
epsilon = 0.5;
tStart = datetime('now');
nRuns = 7*20;
diff = zeros(1,nRuns);
% h = waitbar(0,['Run 0 of ' num2str(nRuns)]);
nScenarios = 7;
Scenarios = generatescenarios(nScenarios);
guiOn = 1;
for i = 1:nRuns
    
    iScenario = mod(i-1,nScenarios) + 1;
    Scenario = Scenarios{iScenario};
    fprintf(['Epsilon: ' num2str(epsilon) ', Run: ' num2str(i) ' of ' num2str(nRuns) ', Scenario: ' num2str(iScenario) ', Result: '])
    clear Environment
%     str = ['Run ' num2str(i)];
%     waitbar(i/nRuns,h,str)
    prevQ = Q;
    RlcaSetup(Scenario,guiOn);
    if iScenario == nScenarios
        epsilon = round(0.5*0.997^i,5);
    end
    
    diff(i) = mean(Q(~isnan(Q)) - prevQ(~isnan(prevQ)));
    
end
tEnd = datetime('now');
tElapsed = duration(tEnd-tStart);
tRun = tElapsed/nRuns;
disp(tElapsed)
disp(tRun)
plot(1:nRuns,diff)
grid on
xlabel('iRun');
ylabel('Mean Q Change');
visualiseq;