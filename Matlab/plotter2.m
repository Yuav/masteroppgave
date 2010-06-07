% Author:  Jon Skarpeteig

clear, clc,close all % clear all variables, window, and close all windows
%set( 0, 'DefaultFigurePaperType', 'A5' );
%set( 0, 'DefaultFigurePaperUnits', 'centimeters' );

fontsize = 14;
delimiter = '\t';

%%25 May 2010

%% R6 A Area 2 Clean area
R6_noise_30s = '..\Results\25may-2010\R6\Intensity_differences\Clean_area\NOISE_30s\';
R6_noise_30s = get_result_from_dir(R6_noise_30s,delimiter,1);

R6_clean_950mW = '..\Results\25may-2010\R6\Intensity_differences\Clean_area\950mW\';
R6_clean_950mW = get_result_from_dir(R6_clean_950mW,delimiter,1);
R6_clean_950mW = dark_current_noise_removal(R6_clean_950mW,R6_noise_30s);
plot_result(R6_clean_950mW,2,'ev','30s integrating time','R6 A Area 5 - 30s integration time',fontsize,'b',3);

R6_clean_400mW = '..\Results\25may-2010\R6\Intensity_differences\Clean_area\400mW\';
R6_clean_400mW = get_result_from_dir(R6_clean_400mW,delimiter,1);
R6_clean_400mW = dark_current_noise_removal(R6_clean_400mW,R6_noise_30s);
plot_result(R6_clean_400mW,2,'ev','30s integrating time','R6 A Area 5',fontsize,'g',3);

R6_clean_220mW = '..\Results\25may-2010\R6\Intensity_differences\Clean_area\220mW\';
R6_clean_220mW = get_result_from_dir(R6_clean_220mW,delimiter,1);
R6_clean_220mW = dark_current_noise_removal(R6_clean_220mW,R6_noise_30s);
plot_result(R6_clean_220mW,2,'ev','30s integrating time','R6 A Area 5',fontsize,'r',3);

%R6_clean_160mW = '..\Results\25may-2010\R6\Intensity_differences\Clean_area\160mW\';
%R6_clean_160mW = get_result_from_dir(R6_clean_160mW,delimiter,1);
%R6_clean_160mW = dark_current_noise_removal(R6_clean_160mW,R6_noise_30s);
%plot_result(R6_clean_160mW,2,'ev','30s integrating time','R6 A Area 2',fontsize,'b',9);

R6_clean_70mW = '..\Results\25may-2010\R6\Intensity_differences\Clean_area\70mW_fileNamingWrong\';
R6_clean_70mW = get_result_from_dir(R6_clean_70mW,delimiter,1);
R6_clean_70mW = dark_current_noise_removal(R6_clean_70mW,R6_noise_30s);
plot_result(R6_clean_70mW,2,'ev','30s integrating time','R6 A Area 5',fontsize,'k',3);

legend('50 mW', '21 mW', '11.5 mW', '3.7 mW');
print -depsc 'Processed_results\R6-A-Area5-intensities-clean_area-30s';


%% R6 A Area 1 Grain Boundary
R6_GB_400mW = '..\Results\25may-2010\R6\Intensity_differences\GRAIN_BOUNDARY_POS1\400mW\';
R6_GB_400mW = get_result_from_dir(R6_GB_400mW,delimiter,1);
R6_GB_400mW = dark_current_noise_removal(R6_GB_400mW,R6_noise_30s);
plot_result(R6_GB_400mW,3,'ev','30s integrating time','R6 A Area 4 - 30s integration time',fontsize,'b',7);

R6_GB_220mW = '..\Results\25may-2010\R6\Intensity_differences\GRAIN_BOUNDARY_POS1\220mW\';
R6_GB_220mW = get_result_from_dir(R6_GB_220mW,delimiter,1);
R6_GB_220mW = dark_current_noise_removal(R6_GB_220mW,R6_noise_30s);
plot_result(R6_GB_220mW,3,'ev','30s integrating time','R6 A Area 4',fontsize,'r',7);

R6_GB_180mW = '..\Results\25may-2010\R6\Intensity_differences\GRAIN_BOUNDARY_POS1\180mW\';
R6_GB_180mW = get_result_from_dir(R6_GB_180mW,delimiter,1);
R6_GB_180mW = dark_current_noise_removal(R6_GB_180mW,R6_noise_30s);
plot_result(R6_GB_180mW,3,'ev','30s integrating time','R6 A Area 4',fontsize,'k',7);

legend('21 mW', '11.5 mW','9.7 mW');
print -depsc 'Processed_results\R6-A-Area4-intensities-grain_boundary-30s';


%% ES1 C Area 1 - Clean area
ES1_noise_30s = '..\Results\25may-2010\ES1\NOISE_30s_bgNoise_first\';
ES1_noise_30s = get_result_from_dir(ES1_noise_30s,delimiter,1);

ES1_clean_220mW = '..\Results\25may-2010\ES1\Unknown_clean_area\220mWnotCorrected\';
ES1_clean_220mW = get_result_from_dir(ES1_clean_220mW,delimiter,1);
ES1_clean_220mW = dark_current_noise_removal(ES1_clean_220mW,ES1_noise_30s);
plot_result(ES1_clean_220mW,4,'ev','30s integrating time','ES1 C Area 5 - 30s integration time',fontsize,'b',3);

ES1_clean_180mW = '..\Results\25may-2010\ES1\Unknown_clean_area\180mWNotCorrected_filenamesWrong\';
ES1_clean_180mW = get_result_from_dir(ES1_clean_180mW,delimiter,1);
ES1_clean_180mW = dark_current_noise_removal(ES1_clean_180mW,ES1_noise_30s);
plot_result(ES1_clean_180mW,4,'ev','30s integrating time','ES1 C Area 5 - 30s integration time',fontsize,'g',3);

ES1_clean_80mW = '..\Results\25may-2010\ES1\Unknown_clean_area\80mWNotCorrected\';
ES1_clean_80mW = get_result_from_dir(ES1_clean_80mW,delimiter,1);
ES1_clean_80mW = dark_current_noise_removal(ES1_clean_80mW,ES1_noise_30s);
plot_result(ES1_clean_80mW,4,'ev','30s integrating time','ES1 C Area 5 - 30s integration time',fontsize,'m',3);

ES1_clean_40mW = '..\Results\25may-2010\ES1\Unknown_clean_area\40mWNotCorrected\';
ES1_clean_40mW = get_result_from_dir(ES1_clean_40mW,delimiter,1);
ES1_clean_40mW = dark_current_noise_removal(ES1_clean_40mW,ES1_noise_30s);
plot_result(ES1_clean_40mW,4,'ev','30s integrating time','ES1 C Area 5 - 30s integration time',fontsize,'c',3);

ES1_clean_20mW = '..\Results\25may-2010\ES1\Unknown_clean_area\20mW_Intensity_measured_before_the_system\';
ES1_clean_20mW = get_result_from_dir(ES1_clean_20mW,delimiter,1);
ES1_clean_20mW = dark_current_noise_removal(ES1_clean_20mW,ES1_noise_30s);
plot_result(ES1_clean_20mW,4,'ev','30s integrating time','ES1 C Area 5 - 30s integration time',fontsize,'y',3);

ES1_clean_10mW = '..\Results\25may-2010\ES1\Unknown_clean_area\10mW\';
ES1_clean_10mW = get_result_from_dir(ES1_clean_10mW,delimiter,1);
ES1_clean_10mW = dark_current_noise_removal(ES1_clean_10mW,ES1_noise_30s);
plot_result(ES1_clean_10mW,4,'ev','30s integrating time','ES1 C Area 5 - 30s integration time',fontsize,'k',3);

legend('11.5mW','9.7 mW','4.3 mW','2.15 mW','1.08 mW','0.54 mW');
print -depsc 'Processed_results\ES1-C-Area5-intensities-clean_area-30s';


%% ES1 C Area 2 - Grain Boundary
ES1_GB_noise_30s = '..\Results\25may-2010\ES1\Grain_boundary_pos2\BG_NOISE_30S\';
ES1_GB_noise_30s = get_result_from_dir(ES1_GB_noise_30s,delimiter,1);

ES1_GB_840mW = '..\Results\25may-2010\ES1\Grain_boundary_pos2\840mW\';
ES1_GB_840mW = get_result_from_dir(ES1_GB_840mW,delimiter,1);
ES1_GB_840mW = dark_current_noise_removal(ES1_GB_840mW,ES1_GB_noise_30s);
plot_result(ES1_GB_840mW,5,'ev','30s integrating time','ES1 C Area 6 - 30s integration time',fontsize,'b',3);

ES1_GB_400mW = '..\Results\25may-2010\ES1\Grain_boundary_pos2\400mW\';
ES1_GB_400mW = get_result_from_dir(ES1_GB_400mW,delimiter,1);
ES1_GB_400mW = dark_current_noise_removal(ES1_GB_400mW,ES1_GB_noise_30s);
plot_result(ES1_GB_400mW,5,'ev','30s integrating time','ES1 C Area 6 - 30s integration time',fontsize,'g',3);

ES1_GB_220mW = '..\Results\25may-2010\ES1\Grain_boundary_pos2\220mW\';
ES1_GB_220mW = get_result_from_dir(ES1_GB_220mW,delimiter,1);
ES1_GB_220mW = dark_current_noise_removal(ES1_GB_220mW,ES1_GB_noise_30s);
plot_result(ES1_GB_220mW,5,'ev','30s integrating time','ES1 C Area 6 - 30s integration time',fontsize,'c',3);

ES1_GB_180mW = '..\Results\25may-2010\ES1\Grain_boundary_pos2\180mW\';
ES1_GB_180mW = get_result_from_dir(ES1_GB_180mW,delimiter,1);
ES1_GB_180mW = dark_current_noise_removal(ES1_GB_180mW,ES1_GB_noise_30s);
plot_result(ES1_GB_180mW,5,'ev','30s integrating time','ES1 C Area 6 - 30s integration time',fontsize,'m',3);

ES1_GB_80mW = '..\Results\25may-2010\ES1\Grain_boundary_pos2\80mW\';
ES1_GB_80mW = get_result_from_dir(ES1_GB_80mW,delimiter,1);
ES1_GB_80mW = dark_current_noise_removal(ES1_GB_80mW,ES1_GB_noise_30s);
plot_result(ES1_GB_80mW,5,'ev','30s integrating time','ES1 C Area 6 - 30s integration time',fontsize,'y',3);

ES1_GB_40mW = '..\Results\25may-2010\ES1\Grain_boundary_pos2\40mW-FILENAME_WRONGiNTENSITY\';
ES1_GB_40mW = get_result_from_dir(ES1_GB_40mW,delimiter,1);
ES1_GB_40mW = dark_current_noise_removal(ES1_GB_40mW,ES1_GB_noise_30s);
plot_result(ES1_GB_40mW,5,'ev','30s integrating time','ES1 C Area 6 - 30s integration time',fontsize,'k',3);

legend('45 mW','21 mW', '11.5 mW','9.7 mW','4.3 mW','2.1 mW');
print -depsc 'Processed_results\ES1-C-Area6-intensities-grain_boundary-30s';


%% MH2 B2 Area 2 - Grain Boundary
MH2_GB_noise_30s = '..\Results\25may-2010\MH2\GRAIN_POS2\NOISE-30S\';
MH2_GB_noise_30s = get_result_from_dir(MH2_GB_noise_30s,delimiter,1);

MH2_GB_800mW = '..\Results\25may-2010\MH2\GRAIN_POS2\800mW\';
MH2_GB_800mW = get_result_from_dir(MH2_GB_800mW,delimiter,1);
MH2_GB_800mW = dark_current_noise_removal(MH2_GB_800mW,MH2_GB_noise_30s);
plot_result(MH2_GB_800mW,6,'ev','30s integrating time','MH2 B2 Area 4 - 30s integration time',fontsize,'b',3);

MH2_GB_400mW = '..\Results\25may-2010\MH2\GRAIN_POS2\400mW\';
MH2_GB_400mW = get_result_from_dir(MH2_GB_400mW,delimiter,1);
MH2_GB_400mW = dark_current_noise_removal(MH2_GB_400mW,MH2_GB_noise_30s);
plot_result(MH2_GB_400mW,6,'ev','30s integrating time','ES1 C Area 4 - 30s integration time',fontsize,'g',3);

MH2_GB_220mW = '..\Results\25may-2010\MH2\GRAIN_POS2\220mW\';
MH2_GB_220mW = get_result_from_dir(MH2_GB_220mW,delimiter,1);
MH2_GB_220mW = dark_current_noise_removal(MH2_GB_220mW,MH2_GB_noise_30s);
plot_result(MH2_GB_220mW,6,'ev','30s integrating time','ES1 C Area 4 - 30s integration time',fontsize,'c',3);

MH2_GB_180mW = '..\Results\25may-2010\MH2\GRAIN_POS2\180mW\';
MH2_GB_180mW = get_result_from_dir(MH2_GB_180mW,delimiter,1);
MH2_GB_180mW = dark_current_noise_removal(MH2_GB_180mW,MH2_GB_noise_30s);
plot_result(MH2_GB_180mW,6,'ev','30s integrating time','ES1 C Area 4 - 30s integration time',fontsize,'m',3);

MH2_GB_80mW = '..\Results\25may-2010\MH2\GRAIN_POS2\80mW\';
MH2_GB_80mW = get_result_from_dir(MH2_GB_80mW,delimiter,1);
MH2_GB_80mW = dark_current_noise_removal(MH2_GB_80mW,MH2_GB_noise_30s);
plot_result(MH2_GB_80mW,6,'ev','30s integrating time','ES1 C Area 4 - 30s integration time',fontsize,'y',3);

MH2_GB_40mW = '..\Results\25may-2010\MH2\GRAIN_POS2\40mW\';
MH2_GB_40mW = get_result_from_dir(MH2_GB_40mW,delimiter,1);
MH2_GB_40mW = dark_current_noise_removal(MH2_GB_40mW,MH2_GB_noise_30s);
plot_result(MH2_GB_40mW,6,'ev','30s integrating time','ES1 C Area 4 - 30s integration time',fontsize,'k',3);

legend('43 mW','21 mW', '11.5 mW','9.7 mW','4.3 mW','2.1 mW');
print -depsc 'Processed_results\MH2-B2-Area4-intensities-grain_boundary-30s';

%% MH2 B2 Area1 - Clean Area
MH2_clean_noise_30s = '..\Results\25may-2010\MH2\CLEAN_POS1\NOISE_30s\';
MH2_clean_noise_30s = get_result_from_dir(MH2_clean_noise_30s,delimiter,1);

MH2_clean_900mW = '..\Results\25may-2010\MH2\CLEAN_POS1\900mW_error_in_filenames\';
MH2_clean_900mW = get_result_from_dir(MH2_clean_900mW,delimiter,1);
MH2_clean_900mW = dark_current_noise_removal(MH2_clean_900mW,MH2_clean_noise_30s);
plot_result(MH2_clean_900mW,7,'ev','30s integrating time','MH2 B2 Area 5 - 30s integration time',fontsize,'b',3);

MH2_clean_400mW = '..\Results\25may-2010\MH2\CLEAN_POS1\400mW\';
MH2_clean_400mW = get_result_from_dir(MH2_clean_400mW,delimiter,1);
MH2_clean_400mW = dark_current_noise_removal(MH2_clean_400mW,MH2_clean_noise_30s);
plot_result(MH2_clean_400mW,7,'ev','30s integrating time','MH2 B2 Area 5 - 30s integration time',fontsize,'g',3);

MH2_clean_220mW = '..\Results\25may-2010\MH2\CLEAN_POS1\220mW\';
MH2_clean_220mW = get_result_from_dir(MH2_clean_220mW,delimiter,1);
MH2_clean_220mW = dark_current_noise_removal(MH2_clean_220mW,MH2_clean_noise_30s);
plot_result(MH2_clean_220mW,7,'ev','30s integrating time','MH2 B2 Area 5 - 30s integration time',fontsize,'c',3);

MH2_clean_180mW = '..\Results\25may-2010\MH2\CLEAN_POS1\180mW\';
MH2_clean_180mW = get_result_from_dir(MH2_clean_180mW,delimiter,1);
MH2_clean_180mW = dark_current_noise_removal(MH2_clean_180mW,MH2_clean_noise_30s);
plot_result(MH2_clean_180mW,7,'ev','30s integrating time','MH2 B2 Area 5 - 30s integration time',fontsize,'m',3);

MH2_clean_80mW = '..\Results\25may-2010\MH2\CLEAN_POS1\80mW\';
MH2_clean_80mW = get_result_from_dir(MH2_clean_80mW,delimiter,1);
MH2_clean_80mW = dark_current_noise_removal(MH2_clean_80mW,MH2_clean_noise_30s);
plot_result(MH2_clean_80mW,7,'ev','30s integrating time','MH2 B2 Area 5 - 30s integration time',fontsize,'y',3);

MH2_clean_40mW = '..\Results\25may-2010\MH2\CLEAN_POS1\40mW\';
MH2_clean_40mW = get_result_from_dir(MH2_clean_40mW,delimiter,1);
MH2_clean_40mW = dark_current_noise_removal(MH2_clean_40mW,MH2_clean_noise_30s);
plot_result(MH2_clean_40mW,7,'ev','30s integrating time','MH2 B2 Area 5 - 30s integration time',fontsize,'k',3);

legend('48 mW','21.5 mW','11.5 mW','9.7 mW','4.3 mW','2.1 mW');
print -depsc 'Processed_results\MH2-B2-Area5-intensities-clean_area-30s';

%% MH2 B2 Temperature plots
MH2_temp_noise_30s = '..\Results\25may-2010\MH2\CLEAN_POS1\TEMPRISING\NOISE-30s\';
MH2_temp_noise_30s = get_result_from_dir(MH2_temp_noise_30s,delimiter,1);

MH2_clean_400mW_32K = '..\Results\25may-2010\MH2\CLEAN_POS1\TEMPRISING\32K\';
MH2_clean_400mW_32K = get_result_from_dir(MH2_clean_400mW_32K,delimiter,1);
MH2_clean_400mW_32K = dark_current_noise_removal(MH2_clean_400mW_32K,MH2_temp_noise_30s);
plot_result(MH2_clean_400mW_32K,8,'ev','30s integrating time','MH2 B2 Area 5 - 30s integration time',fontsize,'b',3);

MH2_clean_400mW_44K = '..\Results\25may-2010\MH2\CLEAN_POS1\TEMPRISING\44K\';
MH2_clean_400mW_44K = get_result_from_dir(MH2_clean_400mW_44K,delimiter,1);
MH2_clean_400mW_44K = dark_current_noise_removal(MH2_clean_400mW_44K,MH2_temp_noise_30s);
plot_result(MH2_clean_400mW_44K,8,'ev','30s integrating time','MH2 B2 Area 5 - 30s integration time',fontsize,'g',3);

MH2_clean_400mW_50K = '..\Results\25may-2010\MH2\CLEAN_POS1\TEMPRISING\50K\';
MH2_clean_400mW_50K = get_result_from_dir(MH2_clean_400mW_50K,delimiter,1);
MH2_clean_400mW_50K = dark_current_noise_removal(MH2_clean_400mW_50K,MH2_temp_noise_30s);
plot_result(MH2_clean_400mW_50K,8,'ev','30s integrating time','MH2 B2 Area 5 - 30s integration time',fontsize,'c',3);

MH2_clean_400mW_60K = '..\Results\25may-2010\MH2\CLEAN_POS1\TEMPRISING\60K\';
MH2_clean_400mW_60K = get_result_from_dir(MH2_clean_400mW_60K,delimiter,1);
MH2_clean_400mW_60K = dark_current_noise_removal(MH2_clean_400mW_60K,MH2_temp_noise_30s);
plot_result(MH2_clean_400mW_60K,8,'ev','30s integrating time','MH2 B2 Area 5 - 30s integration time',fontsize,'m',3);

MH2_clean_400mW_70K = '..\Results\25may-2010\MH2\CLEAN_POS1\TEMPRISING\70K\';
MH2_clean_400mW_70K = get_result_from_dir(MH2_clean_400mW_70K,delimiter,1);
MH2_clean_400mW_70K = dark_current_noise_removal(MH2_clean_400mW_70K,MH2_temp_noise_30s);
plot_result(MH2_clean_400mW_70K,8,'ev','30s integrating time','MH2 B2 Area 5 - 30s integration time',fontsize,'k',3);


legend('32 K', '44 K', '50 K', '60 K','70 K');
print -depsc 'Processed_results\MH2-B2-Area5-tempereatures-clean_area-30s';