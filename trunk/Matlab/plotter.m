% Author:  Jon Skarpeteig

clear, clc,close all % clear all variables, window, and close all windows
%set( 0, 'DefaultFigurePaperType', 'A5' );
%set( 0, 'DefaultFigurePaperUnits', 'centimeters' );

fontsize = 14;
delimiter = '\t';




%% Comparison plots

% Read all data to memory
R6Noise = '..\Results\april-28-2010\R6-Q3-201-A\NOISE\';
R6Noise = get_result_from_dir(R6Noise,delimiter,1);

R6_Area1_dislocation_line = '..\Results\april-28-2010\R6-Q3-201-A\Dislocation-area1\';
R6_Area2_dislocation_dot = '..\Results\april-28-2010\R6-Q3-201-A\Area2\';
R6_Area3_clean_area = '..\Results\april-28-2010\R6-Q3-201-A\Area3_clean\';
A = dead_pixel_correction(dlmread('..\Results\april-28-2010\R6-Q3-201-A\NOISE\20s-no-signal-open-shutter-nm-1200',delimiter));
A = matrix_align_and_glue_reverse(A,dead_pixel_correction(dlmread('..\Results\april-28-2010\R6-Q3-201-A\NOISE\20s-no-signal-open-shutter-nm-1300',delimiter)));
A = matrix_align_and_glue_reverse(A,dead_pixel_correction(dlmread('..\Results\april-28-2010\R6-Q3-201-A\NOISE\20s-no-signal-open-shutter-nm-1400',delimiter)));
A = matrix_align_and_glue_reverse(A,dead_pixel_correction(dlmread('..\Results\april-28-2010\R6-Q3-201-A\NOISE\20s-no-signal-open-shutter-nm-1500',delimiter)));
A = matrix_align_and_glue_reverse(A,dead_pixel_correction(dlmread('..\Results\april-28-2010\R6-Q3-201-A\NOISE\20s-no-signal-open-shutter-nm-1600',delimiter)));
Area1_noise = A;
R6_Area1_dislocation_line = get_result_from_dir(R6_Area1_dislocation_line,delimiter,1);
R6_Area2_dislocation_dot = get_result_from_dir(R6_Area2_dislocation_dot,delimiter,1);
R6_Area3_clean_area = get_result_from_dir(R6_Area3_clean_area,delimiter,1);

ES_noise_10s = '..\Results\april-28-2010\Esi-q3-201-C\dislocationline-Area4\Noise-10s\';
ES_noise_10s = get_result_from_dir(ES_noise_10s,delimiter,1);
ES_Area1 = '..\Results\april-28-2010\Esi-q3-201-C\Good-area1\';
ES_Area1 = get_result_from_dir(ES_Area1,delimiter,1);
ES_Area2 = '..\Results\april-28-2010\Esi-q3-201-C\dislocationspotArea2\';
ES_Area2 = get_result_from_dir(ES_Area2,delimiter,1);
ES_Area3 = '..\Results\april-28-2010\Esi-q3-201-C\grain_boundary-Area3\Signal-10s\';
ES_Area3 = get_result_from_dir(ES_Area3,delimiter,1);
A = dead_pixel_correction(dlmread('..\Results\april-28-2010\Esi-q3-201-C\dislocationline-Area4\Noise-60s\ES1-A_800nm_pump_14K_60s_170mW_300grating_area4_center-nm-1200',delimiter));
A = matrix_align_and_glue_reverse(A,dead_pixel_correction(dlmread('..\Results\april-28-2010\Esi-q3-201-C\dislocationline-Area4\Noise-60s\ES1-A_800nm_pump_14K_60s_170mW_300grating_area4_center-nm-1300',delimiter)));
A = matrix_align_and_glue_reverse(A,dead_pixel_correction(dlmread('..\Results\april-28-2010\Esi-q3-201-C\dislocationline-Area4\Noise-60s\ES1-A_800nm_pump_14K_60s_170mW_300grating_area4_center-nm-1400',delimiter)));
A = matrix_align_and_glue_reverse(A,dead_pixel_correction(dlmread('..\Results\april-28-2010\Esi-q3-201-C\dislocationline-Area4\Noise-60s\ES1-A_800nm_pump_14K_60s_170mW_300grating_area4_center-nm-1500',delimiter)));
ES_Area3_noise_60s = A;
ES_Area3_60s = '..\Results\april-28-2010\Esi-q3-201-C\grain_boundary-Area3\Signal-60s\';
ES_Area3_60s = get_result_from_dir(ES_Area3_60s,delimiter,1);
ES_signal_10s = '..\Results\april-28-2010\Esi-q3-201-C\dislocationline-Area4\Signal-10s\';
ES_signal_10s = get_result_from_dir(ES_signal_10s,delimiter,1);
ES_noise_60s = '..\Results\april-28-2010\Esi-q3-201-C\dislocationline-Area4\Noise-60s\';
ES_noise_60s = get_result_from_dir(ES_noise_60s,delimiter,1);
ES_signal_60s = '..\Results\april-28-2010\Esi-q3-201-C\dislocationline-Area4\Signal-60s\';
ES_signal_60s = get_result_from_dir(ES_signal_60s,delimiter,1);

MH2_noise_20s = '..\Results\april-28-2010\MH2-Q3-210-B2\Noise-20s-during-spot3\';
MH2_noise_20s = get_result_from_dir(MH2_noise_20s,delimiter,1);
MH2_area1 = '..\Results\april-28-2010\MH2-Q3-210-B2\spot1-goodspot\';
MH2_area1 = get_result_from_dir(MH2_area1,delimiter,1);
MH2_area2 = '..\Results\april-28-2010\MH2-Q3-210-B2\spot2-dislocationline\';
MH2_area2 = get_result_from_dir(MH2_area2,delimiter,1);
MH2_area3 = '..\Results\april-28-2010\MH2-Q3-210-B2\spot3-dislocation2\Signal-20s\';
MH2_area3 = get_result_from_dir(MH2_area3,delimiter,1);
A = dead_pixel_correction(dlmread('..\Results\april-28-2010\Esi-q3-201-C\dislocationline-Area4\Noise-60s\ES1-A_800nm_pump_14K_60s_170mW_300grating_area4_center-nm-1200',delimiter));
A = matrix_align_and_glue_reverse(A,dead_pixel_correction(dlmread('..\Results\april-28-2010\Esi-q3-201-C\dislocationline-Area4\Noise-60s\ES1-A_800nm_pump_14K_60s_170mW_300grating_area4_center-nm-1300',delimiter)));
A = matrix_align_and_glue_reverse(A,dead_pixel_correction(dlmread('..\Results\april-28-2010\Esi-q3-201-C\dislocationline-Area4\Noise-60s\ES1-A_800nm_pump_14K_60s_170mW_300grating_area4_center-nm-1400',delimiter)));
A = matrix_align_and_glue_reverse(A,dead_pixel_correction(dlmread('..\Results\april-28-2010\Esi-q3-201-C\dislocationline-Area4\Noise-60s\ES1-A_800nm_pump_14K_60s_170mW_300grating_area4_center-nm-1500',delimiter)));
MH2_Area3_noise_60s = A;
MH2_area3_60s = '..\Results\april-28-2010\MH2-Q3-210-B2\spot3-dislocation2\Signal-60s\';
MH2_area3_60s = get_result_from_dir(MH2_area3_60s,delimiter,1);
MH2_area3_60s = dark_current_noise_removal(MH2_area3_60s,MH2_Area3_noise_60s);



%% Results
R6_Area1_dislocation_line = dark_current_noise_removal(R6_Area1_dislocation_line,Area1_noise);
R6_Area2_dislocation_dot = dark_current_noise_removal(R6_Area2_dislocation_dot,R6Noise);
R6_Area3_clean_area = dark_current_noise_removal(R6_Area3_clean_area,R6Noise);

ES_Area1_dislocation_free_10s = dark_current_noise_removal(ES_Area1,ES_noise_10s);
Ax = ES_Area1_dislocation_free_10s(:,1);
Ay = ES_Area1_dislocation_free_10s(:,2);
Ay = 2*Ay;
ES_Area1_dislocation_free_10s2x = [Ax,Ay];
ES_Area2_dislocation_spot_10s = dark_current_noise_removal(ES_Area2,ES_noise_10s);
Ax = ES_Area2_dislocation_spot_10s(:,1);
Ay = ES_Area2_dislocation_spot_10s(:,2);
Ay = 2*Ay;
ES_Area2_dislocation_spot_10sx2 = [Ax,Ay];
ES_Area3_grain_boundary_10s = dark_current_noise_removal(ES_Area3,ES_noise_10s);
Ax = ES_Area3_grain_boundary_10s(:,1);
Ay = ES_Area3_grain_boundary_10s(:,2);
Ay = 2*Ay;
ES_Area3_grain_boundary_10sx2 = [Ax,Ay];
ES_Area3_grain_boundary_60s = dark_current_noise_removal(ES_Area3_60s,ES_Area3_noise_60s);
ES_Area4_dislocation_line_10s = dark_current_noise_removal(ES_signal_10s,ES_noise_10s);
Ax = ES_Area4_dislocation_line_10s(:,1);
Ay = ES_Area4_dislocation_line_10s(:,2);
Ay = 2*Ay;
ES_Area4_dislocation_line_10sx2 = [Ax,Ay];
ES_dislocation_line_60s = dark_current_noise_removal(ES_signal_60s,ES_Area3_noise_60s);
Ax = ES_dislocation_line_60s(:,1);
Ay = ES_dislocation_line_60s(:,2);
Ay = Ay/3;
ES_dislocation_line_60sx0_33 = [Ax,Ay];

MH2_area1_clean_area = dark_current_noise_removal(MH2_area1,MH2_noise_20s);
MH2_area2_dislocation_line = dark_current_noise_removal(MH2_area2,MH2_noise_20s);
MH2_area3_dislocation_dot = dark_current_noise_removal(MH2_area3,MH2_noise_20s);
MH2_area3_dislocation_dot_60s = dark_current_noise_removal(MH2_area3_60s,0);



plot_result(R6_Area3_clean_area,30,'ev','20s integrating time','R6 comparison of spots',fontsize,'k',3);
plot_result(R6_Area1_dislocation_line,30,'ev','20s integrating time','Dislocation line',fontsize,'b',3);
plot_result(R6_Area2_dislocation_dot,30,'ev','20s integrating time','Dislocation line',fontsize,'r',3);
legend('Clean Area','Dislocation line','Dislocation spot');
print -depsc 'Processed_results\R6_comparisons';
axis([1.11 1.18 0 3000])
print -depsc 'Processed_results\R6_comparisons_I0';
axis([1.09 1.115 2000 20000])
print -depsc 'Processed_results\R6_comparisons_TO';
axis([0.9 1.09 0 2500])
print -depsc 'Processed_results\R6_comparisons_Darea';



plot_result(ES_Area1_dislocation_free_10s,31,'ev','20s integrating time','ES1 comparison of spots',fontsize,'k',3);
plot_result(ES_Area4_dislocation_line_10s,31,'ev','20s integrating time','Dislocation line',fontsize,'b',3);
plot_result(ES_Area2_dislocation_spot_10s,31,'ev','20s integrating time','Dislocation line',fontsize,'r',3);
plot_result(ES_Area3_grain_boundary_10s,31,'ev','20s integrating time','Dislocation line',fontsize,'g',3);
legend('Clean Area','Dislocation line','Dislocation spot','Grain boundary');
print -depsc 'Processed_results\ES1_comparisons';
axis([1.11 1.18 0 3000])
print -depsc 'Processed_results\ES1_comparisons_I0';
axis([1.081 1.105 9000 45000])
print -depsc 'Processed_results\ES1_comparisons_TO';
axis([0.9 1.09 0 4500])
print -depsc 'Processed_results\ES1_comparisons_Darea';

plot_result(MH2_area1_clean_area,32,'ev','20s integrating time','MH2 comparison of spots',fontsize,'k',3);
plot_result(MH2_area2_dislocation_line,32,'ev','20s integrating time','Dislocation line',fontsize,'b',3);
plot_result(MH2_area3_dislocation_dot,32,'ev','20s integrating time','Dislocation line',fontsize,'r',3);
legend('Clean Area','Dislocation line','Dislocation spot');
print -depsc 'Processed_results\MH2_comparisons';
axis([1.11 1.18 0 3000])
print -depsc 'Processed_results\MH2_comparisons_I0';
axis([1.085 1.12 5000 25000])
print -depsc 'Processed_results\MH2_comparisons_TO';
axis([0.9 1.09 0 4000])
print -depsc 'Processed_results\MH2_comparisons_Darea';




% Dislocation line
plot_result(R6_Area1_dislocation_line,22,'ev','20s integrating time','Dislocation line',fontsize,'k',3);
plot_result(ES_Area4_dislocation_line_10sx2,22,'ev','20s integrating time','Dislocation line',fontsize,'b',3);
plot_result(MH2_area2_dislocation_line,22,'ev','20s integrating time','Dislocation line',fontsize,'r',3);
legend('R6','ES1','MH2');
print -depsc 'Processed_results\dislocation_line-20s';
%axis([0.9 1.2 0 5000])
%print -depsc 'Processed_results\dislocation_line-20s_zoom';

% Dislocation dot
plot_result(R6_Area2_dislocation_dot,23,'ev','20s integrating time','Dislocation dot',fontsize,'k',3);
plot_result(ES_Area2_dislocation_spot_10sx2,23,'ev','20s integrating time','Dislocation dot',fontsize,'b',3);
plot_result(MH2_area3_dislocation_dot,23,'ev','20s integrating time','Dislocation dot',fontsize,'r',3);
legend('R6','ES1','MH2');
print -depsc 'Processed_results\dislocation_dot-20s';
%axis([0.9 1.2 0 5000])
%print -depsc 'Processed_results\dislocation_dot-20s_zoom';

% Clean area
plot_result(R6_Area3_clean_area,24,'ev','20s integrating time','Clean area',fontsize,'k',3);
plot_result(ES_Area1_dislocation_free_10s2x,24,'ev','20s integrating time','Clean area',fontsize,'b',3);
plot_result(MH2_area1_clean_area,24,'ev','20s integrating time','Clean area',fontsize,'r',3);
legend('R6','ES1','MH2');
print -depsc 'Processed_results\clean_area-20s';
%axis([0.9 1.2 0 6000])
%print -depsc 'Processed_results\clean_area-20s_zoom';

%% Relative line intensities


%A(1) = R6_Area1_dislocation_line;
%A(2) = R6_Area2_dislocation_dot; 
%A(3) = R6_Area3_clean_area; 
%A(4) = MH2_area1_clean_area; 
%A(5) = MH2_area2_dislocation_line;
%A(6) = MH2_area3_dislocation_dot;
%A(7) = ES_Area1_dislocation_free_10s;
%A(8) = ES_Area2_dislocation_spot_10s;
%A(9) = ES_Area4_dislocation_line_10s;

%% 1
Ay = R6_Area3_clean_area(:,2);
TO = max(Ay);

I0_index =  1124; % 1.138eV
TO_IVa_index = 1583; % 1.074eV
TO_Zone_center_index = 1879; % 1.0368eV
D4_index = 2187; % 1.0eV
TO_2_Zone_center_index = 2488; % 0.968eV
D3_index = 2818; % 0.934eV

bar_plot(6,1) = Ay(I0_index)/TO;
bar_plot(5,1) = Ay(TO_IVa_index)/TO;    
bar_plot(4,1) = Ay(TO_Zone_center_index)/TO;    
bar_plot(3,1) = Ay(D4_index)/TO;    
bar_plot(2,1) = Ay(TO_2_Zone_center_index)/TO;    
bar_plot(1,1) = Ay(D3_index)/TO;    
    
%% 2
Ay = R6_Area2_dislocation_dot(:,2);
TO = max(Ay);

I0_index =  1124; % 1.138eV
TO_IVa_index = 1583; % 1.074eV
TO_Zone_center_index = 1879; % 1.0368eV
D4_index = 2187; % 1.0eV
TO_2_Zone_center_index = 2488; % 0.968eV
D3_index = 2818; % 0.934eV

bar_plot(6,2) = Ay(I0_index)/TO;
bar_plot(5,2) = Ay(TO_IVa_index)/TO;    
bar_plot(4,2) = Ay(TO_Zone_center_index)/TO;    
bar_plot(3,2) = Ay(D4_index)/TO;    
bar_plot(2,2) = Ay(TO_2_Zone_center_index)/TO;    
bar_plot(1,2) = Ay(D3_index)/TO;    

%% 3
Ay = MH2_area1_clean_area(:,2);
TO = max(Ay);

I0_index =  410; %nm_to_ev(1.138) % shift
TO_IVa_index = 873; %nm_to_ev(1.074) %
TO_Zone_center_index = 1167; %nm_to_ev(1.0368)%
D4_index = 1479; %nm_to_ev(1.0)
TO_2_Zone_center_index = 1776; %nm_to_ev(0.968)
D3_index = 2106; %nm_to_ev(0.934) %check

bar_plot(6,3) = Ay(I0_index)/TO;
bar_plot(5,3) = Ay(TO_IVa_index)/TO;    
bar_plot(4,3) = Ay(TO_Zone_center_index)/TO;    
bar_plot(3,3) = Ay(D4_index)/TO;    
bar_plot(2,3) = Ay(TO_2_Zone_center_index)/TO;    
bar_plot(1,3) = Ay(D3_index)/TO;    

%% 4
Ay = MH2_area2_dislocation_line(:,2);
TO = max(Ay);

I0_index =  410; %nm_to_ev(1.138) % shift
TO_IVa_index = 873; %nm_to_ev(1.074) %
TO_Zone_center_index = 1167; %nm_to_ev(1.0368)%
D4_index = 1479; %nm_to_ev(1.0)
TO_2_Zone_center_index = 1776; %nm_to_ev(0.968)
D3_index = 2106; %nm_to_ev(0.934) %check

bar_plot(6,4) = Ay(I0_index)/TO;
bar_plot(5,4) = Ay(TO_IVa_index)/TO;    
bar_plot(4,4) = Ay(TO_Zone_center_index)/TO;    
bar_plot(3,4) = Ay(D4_index)/TO;    
bar_plot(2,4) = Ay(TO_2_Zone_center_index)/TO;    
bar_plot(1,4) = Ay(D3_index)/TO;  

%% 5
Ay = MH2_area3_dislocation_dot(:,2);
TO = max(Ay);

I0_index =  410; %nm_to_ev(1.138) % shift
TO_IVa_index = 873; %nm_to_ev(1.074) %
TO_Zone_center_index = 1167; %nm_to_ev(1.0368)%
D4_index = 1479; %nm_to_ev(1.0)
TO_2_Zone_center_index = 1776; %nm_to_ev(0.968)
D3_index = 2106; %nm_to_ev(0.934) %check

bar_plot(6,5) = Ay(I0_index)/TO;
bar_plot(5,5) = Ay(TO_IVa_index)/TO;    
bar_plot(4,5) = Ay(TO_Zone_center_index)/TO;    
bar_plot(3,5) = Ay(D4_index)/TO;    
bar_plot(2,5) = Ay(TO_2_Zone_center_index)/TO;    
bar_plot(1,5) = Ay(D3_index)/TO;  


%% 6
Ay = ES_Area1_dislocation_free_10s(:,2);
TO = max(Ay);

I0_index =  1124; % 1.138eV
TO_IVa_index = 1583; % 1.074eV
TO_Zone_center_index = 1879; % 1.0368eV
D4_index = 2187; % 1.0eV
TO_2_Zone_center_index = 2488; % 0.968eV
D3_index = 2818; % 0.934eV

bar_plot(6,6) = Ay(I0_index)/TO;
bar_plot(5,6) = Ay(TO_IVa_index)/TO;    
bar_plot(4,6) = Ay(TO_Zone_center_index)/TO;    
bar_plot(3,6) = Ay(D4_index)/TO;    
bar_plot(2,6) = Ay(TO_2_Zone_center_index)/TO;    
bar_plot(1,6) = Ay(D3_index)/TO; 

%% 7
Ay = ES_Area2_dislocation_spot_10s(:,2);
TO = max(Ay);

I0_index =  1124; % 1.138eV
TO_IVa_index = 1583; % 1.074eV
TO_Zone_center_index = 1879; % 1.0368eV
D4_index = 2187; % 1.0eV
TO_2_Zone_center_index = 2488; % 0.968eV
D3_index = 2818; % 0.934eV

bar_plot(6,7) = Ay(I0_index)/TO;
bar_plot(5,7) = Ay(TO_IVa_index)/TO;    
bar_plot(4,7) = Ay(TO_Zone_center_index)/TO;    
bar_plot(3,7) = Ay(D4_index)/TO;    
bar_plot(2,7) = Ay(TO_2_Zone_center_index)/TO;    
bar_plot(1,7) = Ay(D3_index)/TO; 

%% 8
Ay = ES_Area4_dislocation_line_10s(:,2);
TO = max(Ay);

I0_index =  410; nm_to_ev(1.138) % check
TO_IVa_index = 873; nm_to_ev(1.074) %
TO_Zone_center_index = 1167; nm_to_ev(1.0368)%
D4_index = 1479; nm_to_ev(1.0)
TO_2_Zone_center_index = 1776; nm_to_ev(0.968)
D3_index = 2106; nm_to_ev(0.934) %check

bar_plot(6,8) = Ay(I0_index)/TO;
bar_plot(5,8) = Ay(TO_IVa_index)/TO;    
bar_plot(4,8) = Ay(TO_Zone_center_index)/TO;    
bar_plot(3,8) = Ay(D4_index)/TO;    
bar_plot(2,8) = Ay(TO_2_Zone_center_index)/TO;    
bar_plot(1,8) = Ay(D3_index)/TO; 



x = 1:6;
%x = [0.934 0.968 1.0 1.0368 1.074 1.138]
fig = figure(25);
axes('Parent',fig,'FontSize',10);
bar(x,bar_plot);

set(gca,'XTickLabel',{'D3=0.934', 'Zone ph2=0.968', 'D4=1.0', 'Zone ph1=1.0368', 'IVa=1.074', 'I0=1.138'})

title('Relative strength to TO');
xlabel('Energy [eV]');
ylabel('Percent of TO');
legend('R6 Area2 Dislocation dot','R6 Area2 clean area','MH2 Area1 clean area','MH2 Area2 dislocation line','MH2 Area3 dislocation dot','ES1 Area1 clean area','ES1 Area2 dislocation spot','ES1 Area3 dislocation line');
axis([0 7 0 0.2]);

print -depsc 'Processed_results\TO_comparisons';

%A(2) = R6_Area2_dislocation_dot; 
%A(3) = R6_Area3_clean_area; 
%A(4) = MH2_area1_clean_area; 
%A(5) = MH2_area2_dislocation_line;
%A(6) = MH2_area3_dislocation_dot;
%A(7) = ES_Area1_dislocation_free_10s;
%A(8) = ES_Area2_dislocation_spot_10s;
%A(9) = ES_Area4_dislocation_line_10s;



%% MH2-Q3-210

% Line mapping
Mapping_noise = '..\Results\april-28-2010\MH2-Q3-210-B2\dislocationsmappingtake2with5stepsatthetime\Noise\';
Mapping_noise = get_result_from_dir(Mapping_noise,delimiter,1);


% Bars
bar_plot = zeros([10 2]);
relative_TO_BE_intensity = zeros([10 1]);
max0 = 0;
for i=1:10
    Result = get_result_from_dir(strcat('..\Results\april-28-2010\MH2-Q3-210-B2\dislocationspotmapping\Step',num2str(i),'\'),delimiter,1);
    Result = dark_current_noise_removal(Result,Mapping_noise);
    Result = dark_current_noise_removal(Result,0);
    Ay = Result(:,2); % Amplitude values
    % TO line 
    TO_intensity = max(Ay); % Array index 477
    if (TO_intensity > max0)
       max0 = TO_intensity; 
    end
    % BE line
    BE_intensity = Ay(214); % Array index 214, 1.091eV
    bar_plot(i,1) = TO_intensity;
    bar_plot(i,2) = BE_intensity*10;
    relative_TO_BE_intensity(i) = BE_intensity / TO_intensity;
end
x = 1:10;
fig = figure(19);
axes('Parent',fig,'FontSize',fontsize);
bar(x,bar_plot);
axis([0 11 0 max0*1.2]);

legend('TO line (1.128 eV)','BE line x10 (1.091 eV)');
title('MH2-Q3-210 Line mapping 1 step interval of TO-line','FontSize',fontsize);
ylabel('Counts','FontSize',fontsize);
xlabel('Position','FontSize',fontsize);
print -depsc 'Processed_results\MH2-mapping-bars-small_steps-20s';

% 5 steps interval
bar_plot = zeros([20 2]);
relative_TO_BE_intensity = zeros([20 1]);
max1 = 0;
for i=1:20
    Result = get_result_from_dir(strcat('..\Results\april-28-2010\MH2-Q3-210-B2\dislocationsmappingtake2with5stepsatthetime\Step',num2str(i),'\'),delimiter,1);
    Result = dark_current_noise_removal(Result,Mapping_noise);
    Result = dark_current_noise_removal(Result,0)
    Ay = Result(:,2); % Amplitude values
    % TO line 
    TO_intensity = max(Ay); % Array index 477
    if (TO_intensity > max1)
       max1 = TO_intensity; 
    end
    % BE line
    BE_intensity = Ay(214); % Array index 214, 1.091eV
    % D4
    D4_intensity = Ay(1265); % Array index 1265, 1.0 eV
    bar_plot(i,1) = TO_intensity;
    bar_plot(i,2) = BE_intensity*10;
    relative_TO_BE_intensity(i) = BE_intensity / TO_intensity;
end
x = 1:20;
fig = figure(20);
axes('Parent',fig,'FontSize',fontsize);
bar(x,bar_plot);
axis([0 21 0 max1*1.2])
%axes('FontSize',fontsize);
legend('TO line (1.128 eV)','BE line x10 (1.091 eV)');
title('MH2-Q3-210 Line mapping 5 step interval','FontSize',fontsize);
ylabel('Counts','FontSize',fontsize);
xlabel('Position','FontSize',fontsize);
print -depsc 'Processed_results\MH2-mapping-bars-5_small_steps-20s';

fig = figure(21);
axes('Parent',fig,'FontSize',fontsize);
bar(x,relative_TO_BE_intensity);
axis([0 21 0 max(relative_TO_BE_intensity)*1.2])
legend('TO (1.128 eV)/BE (1.091 eV)');
title('MH2-Q3-210 Line mapping 5 step interval','FontSize',fontsize);
ylabel('Counts','FontSize',fontsize);
xlabel('Position','FontSize',fontsize);
print -depsc 'Processed_results\MH2-mapping-bars-TOonBE-5_small_steps-20s';



for i=1:10
    Result = get_result_from_dir(strcat('..\Results\april-28-2010\MH2-Q3-210-B2\dislocationspotmapping\Step',num2str(i),'\'),delimiter,1);
    Result = dark_current_noise_removal(Result,Mapping_noise);
    Result = dark_current_noise_removal(Result,0);
    plot_result(Result,1,'ev','20s integrating time','MH2-Q3-210 Line mapping 1 step interval',fontsize,'b',11);
end
print -depsc 'Processed_results\MH2-mapping-small_steps-20s';

for i=1:20
    Result = get_result_from_dir(strcat('..\Results\april-28-2010\MH2-Q3-210-B2\dislocationsmappingtake2with5stepsatthetime\Step',num2str(i),'\'),delimiter,1);
    Result = dark_current_noise_removal(Result,Mapping_noise);
    Result = dark_current_noise_removal(Result,0);
    plot_result(Result,42,'ev','20s integrating time','MH2-Q3-210 Line mapping 5 step interval',fontsize,'b',11);
end
print -depsc 'Processed_results\MH2-mapping-5_small_steps-20s';


% Low temperature
MH2_noise_20s = '..\Results\april-28-2010\MH2-Q3-210-B2\Noise-20s-during-spot3\';
MH2_noise_20s = get_result_from_dir(MH2_noise_20s,delimiter,1);

% Area 1
MH2_area1 = '..\Results\april-28-2010\MH2-Q3-210-B2\spot1-goodspot\';
MH2_area1 = get_result_from_dir(MH2_area1,delimiter,1);
MH2_area1 = dark_current_noise_removal(MH2_area1,MH2_noise_20s);
plot_result(MH2_area1,2,'ev','20s integrating time','MH2-Q3-210 B2 Area 1',fontsize,'b',0);
print -depsc 'Processed_results\MH2-Area1-dislocation_free-20s';
% Area 2
MH2_area2 = '..\Results\april-28-2010\MH2-Q3-210-B2\spot2-dislocationline\';
MH2_area2 = get_result_from_dir(MH2_area2,delimiter,1);
MH2_area2 = dark_current_noise_removal(MH2_area2,MH2_noise_20s);
plot_result(MH2_area2,3,'ev','20s integrating time','MH2-Q3-210 B2 Area 2',fontsize,'b',0);
print -depsc 'Processed_results\MH2-Area2-dislocation_line-20s';
% Area 3
MH2_area3 = '..\Results\april-28-2010\MH2-Q3-210-B2\spot3-dislocation2\Signal-20s\';
MH2_area3 = get_result_from_dir(MH2_area3,delimiter,1);
MH2_area3 = dark_current_noise_removal(MH2_area3,MH2_noise_20s);
plot_result(MH2_area3,4,'ev','20s integrating time','MH2-Q3-210 B2 Area 3',fontsize,'k',0);
print -depsc 'Processed_results\MH2-Area3-dislocation_dot-20s';

A = dead_pixel_correction(dlmread('..\Results\april-28-2010\Esi-q3-201-C\dislocationline-Area4\Noise-60s\ES1-A_800nm_pump_14K_60s_170mW_300grating_area4_center-nm-1200',delimiter));
A = matrix_align_and_glue_reverse(A,dead_pixel_correction(dlmread('..\Results\april-28-2010\Esi-q3-201-C\dislocationline-Area4\Noise-60s\ES1-A_800nm_pump_14K_60s_170mW_300grating_area4_center-nm-1300',delimiter)));
A = matrix_align_and_glue_reverse(A,dead_pixel_correction(dlmread('..\Results\april-28-2010\Esi-q3-201-C\dislocationline-Area4\Noise-60s\ES1-A_800nm_pump_14K_60s_170mW_300grating_area4_center-nm-1400',delimiter)));
A = matrix_align_and_glue_reverse(A,dead_pixel_correction(dlmread('..\Results\april-28-2010\Esi-q3-201-C\dislocationline-Area4\Noise-60s\ES1-A_800nm_pump_14K_60s_170mW_300grating_area4_center-nm-1500',delimiter)));
Area3_noise_60s = A;

MH2_area3_60s = '..\Results\april-28-2010\MH2-Q3-210-B2\spot3-dislocation2\Signal-60s\';
MH2_area3_60s = get_result_from_dir(MH2_area3_60s,delimiter,1);
MH2_area3_60s = dark_current_noise_removal(MH2_area3_60s,Area3_noise_60s);
MH2_area3_60s = dark_current_noise_removal(MH2_area3_60s,0);
plot_result(MH2_area3_60s,4,'ev','60s integrating time','MH2-Q3-210 B2 Area 3',fontsize,'b',0);
legend('20s integrating time','60s integrating time');
print -depsc 'Processed_results\MH2-Area3-dislocation_dot-60s';


% Room temperature
MH2_room_gd = '..\Results\mar-18-2010-roomtemperature\MH2-Q3-210-D\OK-40nmuselessdislocationspot\';
MH2_room_gd = get_result_from_dir(MH2_room_gd,delimiter,1);
MH2_room_gd = dark_current_noise_removal(MH2_room_gd,0);
plot_result(MH2_room_gd,5,'ev','10s integrating time','MH2-Q3-210 D Room temperature',fontsize,'k',11);

MH2_room_bad = '..\Results\mar-18-2010-roomtemperature\MH2-Q3-210-D\OK-40nmuselessdislocationfreespot\';
MH2_room_bad = get_result_from_dir(MH2_room_bad,delimiter,1);
MH2_room_bad = dark_current_noise_removal(MH2_room_bad,0);
plot_result(MH2_room_bad,5,'ev','10s integrating time','MH2-Q3-210 D Room temperature',fontsize,'b',11);
print -depsc 'Processed_results\MH2-room_temperature';

% At 70K
MH2_70K_bad = '..\Results\april-28-2010\MH2-Q3-210-B2\70K\dislocation\';
MH2_70K_bad = get_result_from_dir(MH2_70K_bad,delimiter,1);
MH2_70K_bad = dark_current_noise_removal(MH2_70K_bad,0);
plot_result(MH2_70K_bad,6,'ev','20s integrating time','MH2-Q3-210 B2 70K',fontsize,'k',5);

MH2_70K_gd = '..\Results\april-28-2010\MH2-Q3-210-B2\70K\cleanarea\';
MH2_70K_gd = get_result_from_dir(MH2_70K_gd,delimiter,1);
MH2_70K_gd = dark_current_noise_removal(MH2_70K_gd,0);
plot_result(MH2_70K_gd,6,'ev','20s integrating time','MH2-Q3-210 B2 70K',fontsize,'b',5);
print -depsc 'Processed_results\MH2-70K';




%% ES1-Q3-201 C

% Room temperature
ES_room_gd = '..\Results\mar-18-2010-roomtemperature\Esi-q3-201-A\40nmoffdislocationFREE\';
ES_room_gd = get_result_from_dir(ES_room_gd,delimiter,1);
ES_room_gd = dark_current_noise_removal(ES_room_gd,0);
plot_result(ES_room_gd,7,'ev','10s integrating time','ES1-Q3-201 A Room temperature',fontsize,'k',0);

ES_room_bad = '..\Results\mar-18-2010-roomtemperature\Esi-q3-201-A\40nmoffdislocation\';
ES_room_bad = get_result_from_dir(ES_room_bad,delimiter,1);
ES_room_bad = dark_current_noise_removal(ES_room_bad,0);
plot_result(ES_room_bad,7,'ev','10s integrating time','ES1-Q3-201 A Dislocation free area',fontsize,'b',0);
print -depsc 'Processed_results\ES1-room_temperature';

% Low temperature
ES_noise_10s = '..\Results\april-28-2010\Esi-q3-201-C\dislocationline-Area4\Noise-10s\';
ES_noise_10s = get_result_from_dir(ES_noise_10s,delimiter,1);

% Area 1
ES_Area1 = '..\Results\april-28-2010\Esi-q3-201-C\Good-area1\';
ES_Area1 = get_result_from_dir(ES_Area1,delimiter,1);
ES_Area1 = dark_current_noise_removal(ES_Area1,ES_noise_10s);
plot_result(ES_Area1,8,'ev','10s integrating time','ES1-Q3-201 C Area 1',fontsize,'b',0);
print -depsc 'Processed_results\ES1-Area1_dislocation_free-10s';

% Area 2
ES_Area2 = '..\Results\april-28-2010\Esi-q3-201-C\dislocationspotArea2\';
ES_Area2 = get_result_from_dir(ES_Area2,delimiter,1);
ES_Area2 = dark_current_noise_removal(ES_Area2,ES_noise_10s);
plot_result(ES_Area2,9,'ev','10s integrating time','ES1-Q3-201 C Area 2',fontsize,'b',0);
print -depsc 'Processed_results\ES1-Area2_dislocation_spot-10s';

% Area 3
ES_Area3 = '..\Results\april-28-2010\Esi-q3-201-C\grain_boundary-Area3\Signal-10s\';
ES_Area3 = get_result_from_dir(ES_Area3,delimiter,1);
ES_Area3 = dark_current_noise_removal(ES_Area3,ES_noise_10s);
plot_result(ES_Area3,10,'ev','10s integrating time','ES1-Q3-201 C Area 3',fontsize,'k',0);
print -depsc 'Processed_results\ES1-Area3_grain_boundary-10s';

A = dead_pixel_correction(dlmread('..\Results\april-28-2010\Esi-q3-201-C\dislocationline-Area4\Noise-60s\ES1-A_800nm_pump_14K_60s_170mW_300grating_area4_center-nm-1200',delimiter));
A = matrix_align_and_glue_reverse(A,dead_pixel_correction(dlmread('..\Results\april-28-2010\Esi-q3-201-C\dislocationline-Area4\Noise-60s\ES1-A_800nm_pump_14K_60s_170mW_300grating_area4_center-nm-1300',delimiter)));
A = matrix_align_and_glue_reverse(A,dead_pixel_correction(dlmread('..\Results\april-28-2010\Esi-q3-201-C\dislocationline-Area4\Noise-60s\ES1-A_800nm_pump_14K_60s_170mW_300grating_area4_center-nm-1400',delimiter)));
A = matrix_align_and_glue_reverse(A,dead_pixel_correction(dlmread('..\Results\april-28-2010\Esi-q3-201-C\dislocationline-Area4\Noise-60s\ES1-A_800nm_pump_14K_60s_170mW_300grating_area4_center-nm-1500',delimiter)));
Area3_noise_60s = A;
ES_Area3 = '..\Results\april-28-2010\Esi-q3-201-C\grain_boundary-Area3\Signal-60s\';
ES_Area3 = get_result_from_dir(ES_Area3,delimiter,1);
ES_Area3 = dark_current_noise_removal(ES_Area3,Area3_noise_60s);
plot_result(ES_Area3,10,'ev','10s integrating time','ES1-Q3-201 C Area 3',fontsize,'b',0);
legend('10s integrating time','60s integrating time');
print -depsc 'Processed_results\ES1-Area3_grain_boundary_60s';

% Area 4
ES_signal_10s = '..\Results\april-28-2010\Esi-q3-201-C\dislocationline-Area4\Signal-10s\';
ES_signal_10s = get_result_from_dir(ES_signal_10s,delimiter,1);
ES_10s = dark_current_noise_removal(ES_signal_10s,ES_noise_10s);
plot_result(ES_10s,11,'ev','10s integrating time','ES1-Q3-201 C Area 4',fontsize,'k',0);
print -depsc 'Processed_results\ES1-Area4_dislocation_line-10s';

ES_noise_60s = '..\Results\april-28-2010\Esi-q3-201-C\dislocationline-Area4\Noise-60s\';
ES_noise_60s = get_result_from_dir(ES_noise_60s,delimiter,1);
ES_signal_60s = '..\Results\april-28-2010\Esi-q3-201-C\dislocationline-Area4\Signal-60s\';
ES_signal_60s = get_result_from_dir(ES_signal_60s,delimiter,1);
ES_60s = dark_current_noise_removal(ES_signal_60s,ES_noise_60s);
plot_result(ES_60s,11,'ev','60s integrating time','ES1-Q3-201 C Area 4',fontsize,'b',0);
legend('10s integrating time','60s integrating time');
print -depsc 'Processed_results\ES1-Area4_dislocation_line-60s';




%% R6-Q3-210 A

% Low temperature

Noise = '..\Results\april-28-2010\R6-Q3-201-A\NOISE\';
Noise = get_result_from_dir(Noise,delimiter,1);
Area1_dislocation_line = '..\Results\april-28-2010\R6-Q3-201-A\Dislocation-area1\';
Area2_dislocation_dot = '..\Results\april-28-2010\R6-Q3-201-A\Area2\';
Area3_clean_area = '..\Results\april-28-2010\R6-Q3-201-A\Area3_clean\';

Area1 = get_result_from_dir(Area1_dislocation_line,delimiter,1);

A = dead_pixel_correction(dlmread('..\Results\april-28-2010\R6-Q3-201-A\NOISE\20s-no-signal-open-shutter-nm-1200',delimiter));
A = matrix_align_and_glue_reverse(A,dead_pixel_correction(dlmread('..\Results\april-28-2010\R6-Q3-201-A\NOISE\20s-no-signal-open-shutter-nm-1300',delimiter)));
A = matrix_align_and_glue_reverse(A,dead_pixel_correction(dlmread('..\Results\april-28-2010\R6-Q3-201-A\NOISE\20s-no-signal-open-shutter-nm-1400',delimiter)));
A = matrix_align_and_glue_reverse(A,dead_pixel_correction(dlmread('..\Results\april-28-2010\R6-Q3-201-A\NOISE\20s-no-signal-open-shutter-nm-1500',delimiter)));
A = matrix_align_and_glue_reverse(A,dead_pixel_correction(dlmread('..\Results\april-28-2010\R6-Q3-201-A\NOISE\20s-no-signal-open-shutter-nm-1600',delimiter)));
Area1_noise = A;

Area1 = dark_current_noise_removal(Area1,Area1_noise);
plot_result(Area1,12,'ev','20s integrating time','R6-Q3-210 A Area 1',fontsize,'b',0);
print -depsc 'Processed_results\R6-Area1_dislocation_line-20s';

Area2 = get_result_from_dir(Area2_dislocation_dot,delimiter,1);
Area2 = dark_current_noise_removal(Area2,Noise);
plot_result(Area2,13,'ev','20s integrating time','R6-Q3-210 A Area 2',fontsize,'b',0);
print -depsc 'Processed_results\R6-Area2_dislocation_dot-20s';

Area3 = get_result_from_dir(Area3_clean_area,delimiter,1);
Area3 = dark_current_noise_removal(Area3,Noise);
plot_result(Area3,14,'ev','20s integrating time','R6-Q3-210 A Area 3',fontsize,'b',0);
print -depsc 'Processed_results\R6-Area3_clean_area-20s';



%% Dark current removal plots

% Dark current with shutter closed
Result_dark_noise = dlmread('..\Results\april-28-2010\Noise\20s-shutter-closed-300grating-75degrees\20s-center-wavelength-1100nm',delimiter);
Result_dark_noise = dead_pixel_correction(Result_dark_noise);
plot_result(Result_dark_noise,15,'nm','20s integrating time','Dark current removal plots',fontsize,'b',0);

% Background noise
Result_bg_noise = dlmread('..\Results\april-28-2010\Noise\20s-background-noise\20s-BG-noise-grating-300-entrance0-05mm-1100nm',delimiter);
Result_bg_noise = dead_pixel_correction(Result_bg_noise);
plot_result(Result_bg_noise,15,'nm','x','x',fontsize,'r',0);

% Offset estimation
A = Result_dark_noise;
Ay = A(:,2); % Amplitude values
Ay = sgolayfilt(Ay,1,25); % 1st order filtering
C = [A(:,1),Ay];
plot_result(C,15,'nm','x','x',fontsize,'c',0);

print -depsc 'Processed_results\Dark_current_and_background_noise-20s';

% Dark current noise removal
Result = dark_current_noise_removal(Result_bg_noise,Result_dark_noise);
plot_result(Result,16,'nm','20s integration time','Dark current offset removed',fontsize,'b',0);
plot_result(Result,16,'nm','20s integration time','Dark current offset removed',fontsize,'c',15);

print -depsc 'Processed_results\Dark_current_removed-20s';



%% Dead pixel proof plots

% Dead pixels clearly visible
Result_dark_40s = dlmread('..\Results\april-28-2010\Noise\40s-shutter-closed-300grating-75degrees\40s-center-wavelength-1600nm',delimiter);
plot_result(Result_dark_40s,17,'nm','40s integrating time','Dark current',fontsize,'b',0);
% Write to .eps for use in latex
print -depsc 'Processed_results\Dark_current-40s';

% Dead pixels corrected
Result_dark_40s = dead_pixel_correction(Result_dark_40s);
plot_result(Result_dark_40s,17,'nm','40s integrating time','Dark current',fontsize,'r',0);
print -depsc 'Processed_results\Dark_current-40s_corrected';


% Dead pixels less clearly visible
Result_dark_10s = dlmread('..\Results\april-28-2010\Noise\10s-shutter-closed-300grating-75degrees\10s-center-wavelength-1600nm',delimiter);
plot_result(Result_dark_10s,18,'nm','10s integrating time','Dark current',fontsize,'b',0);
print -depsc 'Processed_results\Dark_current-10s';

% Dead pixels corrected
Result_dark_10s = dead_pixel_correction(Result_dark_10s);
plot_result(Result_dark_10s,18,'nm','10s integrating time','Dark current',fontsize,'r',0);
print -depsc 'Processed_results\Dark_current-10s_corrected';
%}

