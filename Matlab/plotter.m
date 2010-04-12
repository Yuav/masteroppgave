% Author:  Jon Skarpeteig

clear, clc,close all % clear all variables, window, and close all windows
%set( 0, 'DefaultFigurePaperType', 'A5' );
%set( 0, 'DefaultFigurePaperUnits', 'centimeters' );

fontsize = 14;
delimiter = '\t';


dirname = '..\Results\mar-18-2010-roomtemperature\ErYt\';

% Esi-q3-201 A
dirname = '..\Results\mar-18-2010-roomtemperature\Esi-q3-201\40nmoffdislocation\';
Result = get_result_from_dir(dirname,delimiter,1); % Drop right hand side when gluing results
Result = dark_current_noise_removal(Result);
plot_result(Result,1,'nm','10s integrating time','Esi-q3-201 A',fontsize);

dirname = '..\Results\mar-18-2010-roomtemperature\Esi-q3-201\40nmoffdislocationFREE\';
Result = get_result_from_dir(dirname,delimiter,1); % Drop right hand side when gluing results
Result = dark_current_noise_removal(Result);
%plot_result(Result,1,'ev','10s integrating time','Esi-q3-201',fontsize);

Ax = Result(:,1);
Ay = Result(:,2);
plot(Ax,Ay,'r');

% MH2-Q3-210 D
dirname = '..\Results\mar-18-2010-roomtemperature\MH2-Q3-210\OK-40nmuselessdislocationfreespot\';
Result = get_result_from_dir(dirname,delimiter,1); % Drop right hand side when gluing results
Result = dark_current_noise_removal(Result);
plot_result(Result,2,'ev','10s integrating time','MH2-Q3-210 D',fontsize);

dirname = '..\Results\mar-18-2010-roomtemperature\MH2-Q3-210\OK-40nmuselessdislocationspot\';
Result = get_result_from_dir(dirname,delimiter,1); % Drop right hand side when gluing results
Result = dark_current_noise_removal(Result);
%plot_result(Result,1,'ev','10s integrating time','Esi-q3-201',fontsize);

Ax = Result(:,1);
Ay = Result(:,2);
plot(nm_to_ev(Ax),Ay,'r');

%% R6-Q3-201 C 300K
dirname = '..\Results\mar-18-2010-roomtemperature\R6-Q3-201\';
Result = get_result_from_dir(dirname,delimiter,1); % Drop right hand side when gluing results
Result = dark_current_noise_removal(Result);
plot_result(Result,3,'ev','10s integrating time','R6-Q3-201 C',fontsize);
