clc;
clear;
close all;
%Data = xlsread('Data.xls');
Data =[1	97	43.5	34.8	9	1	9.5
1	97	43.5	34.8	9	1.3	11
1	97	43.5	34.8	9	1.7	12.5
1	97	43.5	34.8	9	2	14
1	97	43.5	34.8	9	2.4	14.8
1	97	43.6	34.9	9	2.75	15.16
1	97	43.7	34.10	9	3	15.6
1	97	43.8	34.8	9	3.3	16.2
1	97	43.5	34.8	9	3.7	16.9
1	97	43.5	34.8	9	4	17.5
1	97	43.5	34.8	9	4.4	18.6
1	97	43.5	34.8	9	4.8	19.2
1	97	43.5	34.8	9	5	19.5
1	97	43.5	34.8	9	5.3	20.7
1	97	43.5	34.8	9	5.7	21.2
1	97	43.5	34.8	9	6	21.8
1	97	43.5	34.8	9	6.5	21.2
1	97	43.5	34.8	9	6.8	22.0
1	97	43.5	34.8	9	7	22.5
1	97	43.5	34.8	9	7.5	22.95
1	97	43.5	34.8	9	8	23.1
1	97	43.5	34.8	9	8.5	23.32
1	97	43.5	34.8	9	9	23.5
1	97	43.5	34.8	9	9.5	23.7
1	97	43.5	34.8	9	10	23.9
1	97	43.5	34.8	9	10.5	24.24
1	97	43.5	34.8	9	11	24.4
1	97	43.5	34.8	9	11.5	24.55
1	97	43.5	34.8	9	12	24.6
1	97	43.5	34.8	9	12.5	24.675
1	97	43.5	34.8	9	13	24.7
1	97	43.5	34.8	9	13.5	24.82
1	97	43.5	34.8	9	14	24.84
1	97	43.5	34.8	9	15	24.9
1	97	43.5	34.8	9	16	25
1	97	43.5	34.8	9	17	25
1	97	43.5	34.8	9	18	25
1	95	45.5	34.4	8.5	0.2	1
1	95	45.5	34.4	8.5	0.5	2
1	95	45.5	34.4	8.5	.7	3.5
2	95	45.5	34.4	8.5	1	5
2	95	45.5	34.4	8.5	1.3	7.5
2	95	45.5	34.4	8.5	1.7	8
2	95	45.5	34.4	8.5	2	9.5
2	95	45.5	34.4	8.5	2.3	10.6
2	95	45.5	34.4	8.5	2.7	11.3
2	95	45.5	34.4	8.5	3	11.5
2	95	45.5	34.4	8.5	3.25	13.8
2	95	45.5	34.4	8.5	3.65	14.9
2	95	45.5	34.4	8.5	3.85	15.8
2	95	45.5	34.4	8.5	4	16.5
2	95	45.5	34.4	8.5	4.35	17.1
2	95	45.5	34.4	8.5	4.73	17.5
2	95	45.5	34.4	8.5	5	17.8
2	95	45.5	34.4	8.5	5.34	18.4
2	95	45.5	34.4	8.5	5.73	18.9
2	95	45.5	34.4	8.5	6	19.2
2	95	45.5	34.4	8.5	6.4	20.8
2	95	45.5	34.4	8.5	6.75	21.3
2	95	45.5	34.4	8.5	7	21.8
2	95	45.5	34.4	8.5	7.38	22.6
2	95	45.5	34.4	8.5	7.8	23.32
2	95	45.5	34.4	8.5	8	23.6
2	95	45.5	34.4	8.5	8.3	24.8
2	95	45.5	34.4	8.5	8.8	25.7
2	95	45.5	34.4	8.5	9	26.1
2	95	45.5	34.4	8.5	9.5	27.6
2	95	45.5	34.4	8.5	10	28.1
2	95	45.5	34.4	8.5	10.5	28.5
2	95	45.5	34.4	8.5	11	28.8
2	95	45.5	34.4	8.5	11.5 29.4
2	95	45.5	34.4	8.5	12	29.7
2	95	45.5	34.4	8.5	13	30.2
2	95	45.5	34.4	8.5	14	30.55
2	95	45.5	34.4	8.5	15	30.9
2	95	45.5	34.4	8.5	16	31.25
2	95	45.5	34.4	8.5	17	31.37
2	95	45.5	34.4	8.5	17.6	31.5
2	95	45.5	34.4	8.5	18	31.5
2	95	45.5	34.4	8.5	20	31.7
2	95	45.5	34.4	8.5	21	31.9
2	95	45.5	34.4	8.5	22	31.94
2	95	45.5	34.4	8.5	23	31.98
2	95	45.5	34.4	8.5	24	32
2	95	45.5	34.4	8.5	27	32
3	94	46	34.4	8.5	0.2	5.8
3	94	46	34.4	8.5	0.5	8.9
3	94	46	34.4	8.5	.7	11
3	94	46	34.4	8.5	1	12
3	94	46	34.4	8.5	1.3	15
3	94	46	34.4	8.5	1.7	16
3	94	46	34.4	8.5	2	18
3	94	46	34.4	8.5	2.35	18.4
3	94	46	34.4	8.5	2.8	18.83
3	94	46	34.4	8.5	3	19
3	94	46	34.4	8.5	3.3	19.35
3	94	46	34.4	8.5	3.7	19.75
3	94	46	34.4	8.5	4	20
3	94	46	34.4	8.5	5	21.5
3	94	46	34.4	8.5	5.2	22.4
3	94	46	34.4	8.5	5.7	23.7
3	94	46	34.4	8.5	6	24.5
3	94	46	34.4	8.5	6.3	25.9
3	94	46	34.4	8.5	6.7	26.7
3	94	46	34.4	8.5	7	27.5
3	94	46	34.4	8.5	7.5	28
3	94	46	34.4	8.5	8	30
3	94	46	34.4	8.5	8.5	30.8
3	94	46	34.4	8.5	9	31.5
3	94	46	34.4	8.5	9.4	32.6
3	94	46	34.4	8.5	9.8	33.2
3	94	46	34.4	8.5	10	33.7
3	94	46	34.4	8.5	11	35.5
3	94	46	34.4	8.5	12	36
3	94	46	34.4	8.5	13	36.5
3	94	46	34.4	8.5	14	36.7
3	94	46	34.4	8.5	15	36.9
3	94	46	34.4	8.5	16	37.2
3	94	46	34.4	8.5	17	37.4
3	94	46	34.4	8.5	18	37.6
3	94	46	34.4	8.5	19	37.8
3	94	46	34.4	8.5	20	37.9
3	94	46	34.4	8.5	21	38
3	94	46	34.4	8.5	22	38
3	94	46	34.4	8.5	23	38
4	95	45	32	10	0.2	2
4	95	45	32	10	0.5	3
4	95	45	32	10	0.7	3.9
4	95	45	32	10	1	4.5
4	95	45	32	10	1.3	5.2
4	95	45	32	10	1.7	6.7
4	95	45	32	10	1.9	7.4
4	95	45	32	10	2.1	7.9
4	95	45	32	10	2.3	8.5
4	95	45	32	10	2.6	9.1
4	95	45	32	10	2.9	9.6
4	95	45	32	10	3.3	10
4	95	45	32	10	3.6	10.4
4	95	45	32	10	4	10.76
4	95	45	32	10	4.3	11
4	95	45	32	10	5.3	11.9
4	95	45	32	10	6.3	13.1
4	95	45	32	10	7.3	14
4	95	45	32	10	8.3	14.5
4	95	45	32	10	9.3	14.6
4	95	45	32	10	10	14.635
4	95	45	32	10	10.3	14.65
4	95	45	32	10	10.55	14.67
4	95	45	32	10	10.8	14.686
4	95	45	32	10	11.3	14.7
4	95	45	32	10	11.65	14.7
4	95	45	32	10	11.9	14.7
4	95	45	32	10	12.3	14.75
4	95	45	32	10	12.6	14.77
4	95	45	32	10	12.9	14.785
4	95	45	32	10	13.3	14.8
4	95	45	32	10	13.8	14.85
4	95	45	32	10	14	14.87
4	95	45	32	10	14.3	14.87
4	95	45	32	10	14.7	14.89
4	95	45	32	10	15	14.9
4	95	45	32	10	15.5	15
4	95	45	32	10	16	15
5	96	49	23.36	28.2	0.2	3
5	96	49	23.36	28.2	0.5	5.3
5	96	49	23.36	28.2	.7	7.5
5	96	49	23.36	28.2	1	9.2
5	96	49	23.36	28.2	1.3	11.2
5	96	49	23.36	28.2	1.7	12.8
5	96	49	23.36	28.2	2	14.1
5	96	49	23.36	28.2	2.4	14.8
5	96	49	23.36	28.2	3	15.4
5	96	49	23.36	28.2	3.4	16.15
5	96	49	23.36	28.2	4	16.6
5	96	49	23.36	28.2	4.6	17.2
5	96	49	23.36	28.2	5	17.5
5	96	49	23.36	28.2	5.5	18.4
5	96	49	23.36	28.2	6	18.9
5	96	49	23.36	28.2	6.5	19.7
5	96	49	23.36	28.2	7	20.2
5	96	49	23.36	28.2	7.5	21.3
5	96	49	23.36	28.2	8	21.9
5	96	49	23.36	28.2	8.5	22.24
5	96	49	23.36	28.2	9	22.6
5	96	49	23.36	28.2	10	23.5
5	96	49	23.36	28.2	12	24.4
5	96	49	23.36	28.2	13	25.2
5	96	49	23.36	28.2	14	25.9
5	96	49	23.36	28.2	15	26.6
5	96	49	23.36	28.2	16	26.9
5	96	49	23.36	28.2	17.6	27.2
5	96	49	23.36	28.2	18	27.9
5	96	49	23.36	28.2	19	28.3
5	96	49	23.36	28.2	20	28.5
5	96	49	23.36	28.2	21	29.2
5	96	49	23.36	28.2	22	29.6
5	96	49	23.36	28.2	23	31
5	96	49	23.36	28.2	24	32.7
5	96	49	23.36	28.2	25	33.5
5	96	49	23.36	28.2	25.8	34.67
5	96	49	23.36	28.2	26.9	35.45
5	96	49	23.36	28.2	27.8	36.8
5	96	49	23.36	28.2	29	37.7
5	96	49	23.36	28.2	30	38.6
5	96	49	23.36	28.2	31	39.4
5	96	49	23.36	28.2	32	39.6
5	96	49	23.36	28.2	33	40.1
5	96	49	23.36	28.2	34	40.3
5	96	49	23.36	28.2	34.8	40.5
5	96	49	23.36	28.2	35.3	40.6
5	96	49	23.36	28.2	36.3	40.6];
X = Data(:,1:end-1);
Y = Data(:,end);

% DataNum = size(X,1);
% InputNum = 6;
% OutputNum = size(Y,2);


inputs = X';
targets = Y';

nData=110;

Perm=randperm(nData);

pTrainData=0.8;
nTrainData=round(pTrainData*nData);
trainInd=Perm(1:nTrainData);
Perm(1:nTrainData)=[];
trainInputs = inputs(:,trainInd);
trainTargets = targets(:,trainInd);

pTestData=1-pTrainData;
nTestData=nData-nTrainData;
testInd=Perm;
testInputs = inputs(:,testInd);
testTargets = targets(:,testInd);
% testInputs=testInputs';
% testTargets=testTargets';
% trainInputs=trainInputs';
% trainTargets=trainTargets';
% Create and Train RBF Network
Goal=0;
Spread=1.5;
MaxNeuron=18;
DisplayAt=1;
net = newrb(trainInputs,trainTargets,Goal,Spread,MaxNeuron,DisplayAt);

%% Test the Network
outputs = net(inputs);
errors = gsubtract(targets,outputs);
performance = perform(net,targets,outputs);

%% Recalculate Training, Validation and Test Performance
trainOutputs = outputs(:,trainInd);
trainErrors = trainTargets-trainOutputs;
trainPerformance = perform(net,trainTargets,trainOutputs);

testOutputs = outputs(:,testInd);
testError = testTargets-testOutputs;
testPerformance = perform(net,testTargets,testOutputs);
 
% figure(1)
% plot(trainTargets,'or');
% hold on
% plot(trainOutputs,'sb');
% hold off
% 
% figure(2)
% plot(testTargets,'-or');
% hold on
% plot(testOutputs,'-sb');
% hold off
% 
% figure(3)
% plot(targets,'or');
% hold on
% plot(outputs,'sb');
% hold off
% % 
figure(4)
plot(trainTargets(1,:),trainOutputs(1,:),'ro');
    hold on;
    xmin=min(min(trainTargets(1,:)),min(trainOutputs(1,:)));
    xmax=max(max(trainTargets(1,:)),max(trainOutputs(1,:)));
    plot([xmin xmax],[xmin xmax],'b','LineWidth',2);
     R=corr(trainTargets(1,:)',trainOutputs(1,:)');
    title(['R = ' num2str(R)]);
hold on
plot(testTargets(1,:),testOutputs(1,:),'sg');
    hold on;
     xmin=min(min(testTargets(1,:)),min(testOutputs(1,:)));
     xmax=max(max(testTargets(1,:)),max(testOutputs(1,:)));
    % plot([xmin xmax],[xmin xmax],'b','LineWidth',2);
   R1=corr(testTargets(1,:)',testOutputs(1,:)');
    title(['R1 = ' num2str(R)]);
    hold off
% hold off
% % figure(5)
% % t = -1:.1:1;
% % plot(t,t,'b','linewidth',2)
% % hold on
% % plot(testTargets,testOutputs,'ok')
% % % R=corr(testTargets,testOutputs)
% % %  title(['R = ' num2str(R)])
% % hold off
 figure(3)
 plot(targets,'og');
hold on
plot(outputs,'sb');
hold off
%  
% PlotResults(targets,outputs,'All Data');
% PlotResults(trainTargets,trainOutputs,'Train Data');
% PlotResults(testTargets,testOutputs,'Test Data');

%View the Network
% % view(net);
