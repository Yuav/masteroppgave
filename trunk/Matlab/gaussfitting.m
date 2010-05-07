clear, clc,close all % clear all variables, window, and close all windows
fontsize = 14;
delimiter = '\t';

% Analysis
MH2_noise_20s = '..\Results\april-28-2010\MH2-Q3-210-B2\Noise-20s-during-spot3\';
MH2_noise_20s = get_result_from_dir(MH2_noise_20s,delimiter,1);

% Area 1
MH2_area1 = '..\Results\april-28-2010\MH2-Q3-210-B2\spot1-goodspot\';
MH2_area1 = get_result_from_dir(MH2_area1,delimiter,1);
MH2_area1 = dark_current_noise_removal(MH2_area1,MH2_noise_20s);
%MH2_area1 = nm_to_ev(MH2_area1);

%plot_result(MH2_area1,2,'ev','20s integrating time','MH2-Q3-210 B2 Area 1',fontsize,'b',0);

x = MH2_area1(:,1);
%x = nm_to_ev(x);
y = MH2_area1(:,2);



%Plot actual data before filtering
figure(2);
hold on;
plot (nm_to_ev(x),y,'y');

%load D:\Skole\Prosjekt_H09\PL\13-10-09\glued_spectra\sf090604.txt;
%A=sf090604;
%x = A(:,1);
%y = A(:,2);



%lambdalow = 0.92;
%lambdahigh = 0.97;

%check out the original curve, and make a guess on position, width and
%intensity
%param0 = [518 38 570 546 25 900 592 32 1280 658 54 880 749 38 260];% 900 250 280];

       

topp0 = [1192   29  1600]; % TO + G fonon replika
topp1 = [1221.5 10  500]; % TO + G + IV
topp2 = [1240   10  1825]; %D4
topp5 = [1260 15 1400]; % Ukjent
topp3 = [1278   15  1500]; %TO + 2G fonon replika
topp4 = [1305   15  958]; %D3
 
% Guess what peaks/curves are present in the resultset, expect nm arg
    %pos  width intensity
t1 = [nm_to_ev(0.934)   9  2000]; %D3
t2 = [nm_to_ev(0.968)   9  2000]; %TO + 2 phonon
t3 = [nm_to_ev(1.0)   9  2000]; %D4
t4 = [nm_to_ev(1.0315)   9  2000]; %TO + 1 zone center phonon
t5 = [nm_to_ev(1.074)   9  5000]; %TO + 1 intervalley phonon
t6 = [nm_to_ev(1.092)   5  5000]; %BE
t7 = [nm_to_ev(1.097)   9  20000]; %TO


param0 = [t1 t2 t3 t4 t5 t6 t7];
indexlow = find(x > nm_to_ev(1.2),1,'first'); % 1.2 eV at the lowest index (due to results in nm, not eV)
indexhigh = find(x > nm_to_ev(0.79),1,'first'); % 0.79 eV at highest index (due to nm_to_ev)


%param0 = [topp0 topp1 topp2 topp3 topp4];
%lambdalow = 1100;
%lambdahigh = 1344.6;
%indexlow = find(x > lambdalow,1,'first')
%indexhigh = find(x > lambdahigh,1,'first')





lambda = x(indexlow:indexhigh);
intensity = y(indexlow:indexhigh);

%lambda = x;
%intensity = y;

%sgolay filtering
intensity = sgolayfilt(intensity,1,19);


[calcInt,g1,g2,g3,g4,g5,g6,g7] = Gn(param0,lambda);
%[calcInt,g1,g2,g3] = Gn(param0,lambda);

figure1 = figure(1);
clf;

lambda2 = lambda;
lambda = nm_to_ev(lambda);

plot(lambda,intensity,'r');
hold on;
plot(lambda,calcInt,'k');
plot(lambda,g1,'--r','Color','b');
plot(lambda,g2,'--r','Color','b');
plot(lambda,g3,'--r','Color','b');
plot(lambda,g4,'--r','Color','b');
plot(lambda,g5,'--r','Color','b');
plot(lambda,g6,'--r','Color','b');
plot(lambda,g7,'--r','Color','b');
xlabel({'Wavelength [nm]'},'FontWeight','bold','FontSize',18,'FontName','Calibri');
ylabel({'Intensity'},'FontWeight','bold','FontSize',18,'FontName','Calibri');
title({'sf090604 visible spectrum Gaussian fit'},'FontWeight','bold','FontSize',24,'FontName','Calibri');








%% Computer fit
lambda = lambda2;

param = lsqcurvefit(@Gn, param0, lambda, intensity);

[calcInt,g1,g2,g3,g4,g5,g6] = Gn(param,lambda);

figure(2);
%lambda = nm_to_ev(lambda);
%plot(lambda,intensity,'r');
hold on;
plot(lambda,calcInt,'k');
plot(lambda,g1,'--r','Color','b');
plot(lambda,g2,'--r','Color','b');
plot(lambda,g3,'--r','Color','b');
plot(lambda,g4,'--r','Color','b');
plot(lambda,g5,'--r','Color','b');
plot(lambda,g6,'--r','Color','b');
%xlabel({'Wavelength [nm]'},'FontWeight','bold','FontSize',18,'FontName','Calibri');
%ylabel({'Intensity'},'FontWeight','bold','FontSize',18,'FontName','Calibri');
%title({'sf090604 visible spectrum Gaussian fit'},'FontWeight','bold','FontSize',24,'FontName','Calibri');


% Skrive til fil for bruk i latex
%print -depsc 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\Latex_filer\bilder\Posisjoner_gauss'

