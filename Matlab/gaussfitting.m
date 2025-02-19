clear, clc,close all % clear all variables, window, and close all windows
fontsize = 14;
delimiter = '\t';


%% MH2 line map 20 points

Mapping_noise = '..\Results\april-28-2010\MH2-Q3-210-B2\dislocationsmappingtake2with5stepsatthetime\Noise\';
Mapping_noise = get_result_from_dir(Mapping_noise,delimiter,1);


% Guess what peaks/curves are present in the resultset, expect nm arg
                %position_nm  width intensity
    I0      = [nm_to_ev(1.1545)	9	2000]; %I_0
    BE2     = [nm_to_ev(1.147)	9	1000]; %BE P
    I_TA    = [nm_to_ev(1.1365)	9	1000]; %I_TA
    TO      = [nm_to_ev(1.097)	9	20000]; %TO
    
    pos10 = nm_to_ev(1.097);
    
    Result = get_result_from_dir('..\Results\april-28-2010\MH2-Q3-210-B2\dislocationsmappingtake2with5stepsatthetime\Step1\',delimiter,1);
    Result = dark_current_noise_removal(Result,Mapping_noise);
    Result = dark_current_noise_removal(Result,0);
    
       
    
    % Define X and Y values
    Ax = nm_to_ev(Result(:,1));
    Ay = Result(:,2);
    
    figure(1);
    plot(Ax,Ay)
    hold on
    
    xaxis = Ax(127:693);
    
    E = xaxis;
    Ek = 1.095; % Curve start
    k = 8.617343* 10^-5; % eV
     T = 80;

    C = 26*2*10^4;
    
    TO = [];
    for i=1:length(xaxis),
        E=xaxis(i);
        x = (E-Ek);
        a = x.^(1/2);
        b = x./(k*T);
        TO(i) = C*a * exp(-b);
    end
    plot(xaxis,TO,'r');
    
    
       T = 12;

    C = 65*2*10^4;
    
    TO = [];
    for i=1:length(xaxis),
        E=xaxis(i);
        x = (E-Ek);
        a = x.^(1/2);
        b = x./(k*T);
        TO(i) = C*a * exp(-b);
    end
    plot(xaxis,TO,'k');
    title('MH2 pumped with 128 mW');
    legend('12 K Signal','80 K fitting','12 K fitting');
    
    print -depsc 'Processed_results\MH2_Temperature_fitting';
    
    %{
    
    % Define interval to gaussfit
    
    xaxis = Ax(140:419);
    
    E = xaxis;
    E_0 = 1.1;
    k = 1.38*10^-(23);
    T = 12;
    
    TO = [];
    for i=1:(419-139),
    
        
    end
    
    length(xaxis)
    length(TO)
    
    plot(xaxis,TO);
    
    D4      = [nm_to_ev(1.0)	9	2000]; %D4
    D4_broad = [nm_to_ev(0.95)	50	2000]; %D3+D4 broad background emission
    D3      = [nm_to_ev(0.934)	9	2000]; %D3
    BE1     = [nm_to_ev(1.092)	5	10000]; %BE B
    TO_IV   = [nm_to_ev(1.074)	5	5000]; %TO + IV
    TO_0    = [nm_to_ev(1.0315)	5	2000]; %TO + Zone Center Phonon
    

1.147
peak_guesses = [I0 I_TA TO D4 D4_broad D3 BE1 TO_IV TO_0];
interval = [nm_to_ev(1.16) nm_to_ev(0.951)]; % From -> TO in wavelength (nm)

for i=1:1
    Result = get_result_from_dir(strcat('..\Results\april-28-2010\MH2-Q3-210-B2\dislocationsmappingtake2with5stepsatthetime\Step',num2str(i),'\'),delimiter,1);
    Result = dark_current_noise_removal(Result,Mapping_noise);
    Result = dark_current_noise_removal(Result,0);
    plot_result(Result,2,'ev','20s integrating time','MH2-Q3-210 Line mapping 5 step interval',fontsize,'g',0);
    plot_gaussfitting(Result,peak_guesses,interval,2,'ev','20s integrating time','MH2-Q3-210 Line mapping 5 step interval',fontsize,'b',0);
end









% Analysis
MH2_noise_20s = '..\Results\april-28-2010\MH2-Q3-210-B2\Noise-20s-during-spot3\';
MH2_noise_20s = get_result_from_dir(MH2_noise_20s,delimiter,1);

% Area 1
MH2_area1 = '..\Results\april-28-2010\MH2-Q3-210-B2\spot1-goodspot\';
MH2_area1 = get_result_from_dir(MH2_area1,delimiter,1);
MH2_area1 = dark_current_noise_removal(MH2_area1,MH2_noise_20s);
%MH2_area1 = nm_to_ev(MH2_area1);

%plot_result(MH2_area1,2,'ev','20s integrating time','MH2-Q3-210 B2 Area 1',fontsize,'b',0);

 
% Guess what peaks/curves are present in the resultset, expect nm arg
    %position_nm  width intensity
t8 = [nm_to_ev(0.934)   19  1000]; %D3
t7 = [nm_to_ev(0.968)   19  1000]; %TO + 2 phonon
t6 = [nm_to_ev(1.0)   19  1000]; %D4
t5 = [nm_to_ev(1.0315)   15  2000]; %TO + 1 zone center phonon
t4 = [nm_to_ev(1.074)   9  3000]; %TO + 1 intervalley phonon
t3 = [nm_to_ev(1.092)   5  1000]; %BE B
t2 = [nm_to_ev(1.097)   9  20000]; %TO
t1 = [nm_to_ev(1.10)   5  1000]; %BE P
t0 = [nm_to_ev(1.1045)   7  800]; %I0
peak_guesses = [t0 t1 t2 t3 t4 t5 t6 t7 t8];
interval = [nm_to_ev(1.2) nm_to_ev(0.79)]; % From -> TO in wavelength (nm)

plot_result(MH2_area1,1,'ev','20s integration time','MH2-Q3-210 B2 Area 1',fontsize,'y',0)
plot_gaussfitting(MH2_area1,peak_guesses,interval,1,'ev','20s integration time','Gaussfitting MH2',fontsize,'b',0)
%}