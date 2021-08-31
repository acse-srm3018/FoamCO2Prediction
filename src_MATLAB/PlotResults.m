function PlotResults(t,y,name)
figure;
    
    t and y
    subplot(2,2,1);
    plot(y(1,:),'k');
    hold on;
    plot(t(1,:),'r:');
    legend('Outputs','Targets');
    title(name);
    
    Correlation Plot
    subplot(2,2,2);
    plot(t(1,:),y(1,:),'ko');
    hold on;
    xmin=min(min(t(1,:)),min(y(1,:)));
    xmax=max(max(t(1,:)),max(y(1,:)));
    plot([xmin xmax],[xmin xmax],'b','LineWidth',2);
    R=corr(t(1,:)',y(1,:)');
    title(['R = ' num2str(R)]);
    
    e
    subplot(2,2,3);
 e=t(1,:)-y(1,:);
    plot(e(1,:),'b');
    legend('Error');
  MSE=mean(e(1,:).^2);
    RMSE=sqrt(MSE);
   title(['MSE = ' num2str(MSE) ', RMSE = ' num2str(RMSE)]);
    
    subplot(2,2,4);
    histfit(e(1,:),70);
    eMean=mean(e(1,:));
    eStd=std(e(1,:));
    title(['\mu = ' num2str(eMean) ', \sigma = ' num2str(eStd)]);
    
end