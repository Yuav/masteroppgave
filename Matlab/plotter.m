% Author:  Jon Skarpeteig

clear, clc,close all % clear all variables, window, and close all windows
%set( 0, 'DefaultFigurePaperType', 'A5' );
%set( 0, 'DefaultFigurePaperUnits', 'centimeters' );

fontsize = 14;
delimiter = '\t';


dirname = '..\Results\mar-18-2010-roomtemperature\ErYt\';
dirname = '..\Results\mar-18-2010-roomtemperature\Esi-q3-201\40nmoffdislocation\';
Result = get_result_from_dir(dirname,delimiter,1); % Drop right hand side when gluing results
% Result = correct_dead_pixel_problem(Result);


% Define X and Y values
Ax = Result(:,1);
Ay = Result(:,2);

% Plot
fig1 = figure(1);

axes1 = axes('Parent',fig1,'FontSize',fontsize);
box(axes1,'on');
hold(axes1,'all');
hold on;

plot(Ax,Ay);

%title('Erbium referanseprøve ved 300K, gjennom eksisterende lysbane');
legend('5s integrating time')
ylabel('Counts');
xlabel('Wavelength [nm]');

% 
% 
% f1 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-05-2009\Er-reference\300grv-5s-1000nm-300k.txt';
% f2 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-05-2009\Er-reference\300grv-5s-1140nm-300k';
% f3 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-05-2009\Er-reference\300grv-5s-1280nm-300k';
% f4 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-05-2009\Er-reference\300grv-5s-1420nm-300k';
% f5 = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-05-2009\Er-reference\300grv-5s-1560nm-300k';
% 
% % Lese filer inn til matriser
% A = dlmread(f1,delimiter);
% B = dlmread(f2,delimiter);
% C = dlmread(f3,delimiter);
% D = dlmread(f4,delimiter);
% E = dlmread(f5,delimiter);
% 
% % Sette samme offsett på alle samples
% A = matrix_align_and_glue(A,B);
% A = matrix_align_and_glue(A,C);
% A = matrix_align_and_glue(A,D);
% A = matrix_align_and_glue(A,E);
% 
% % Definere x og y
% Ax = A(:,1);
% Ay = A(:,2);
% 
% 
% 
% 
% dirlist(5).name
% 
% % Erbium reference sample at room temperature
% 
% delimiter = '\t';
% file = '..\Results\mar-18-2010-roomtemperature\ErYt\ErYtSample_800nm_pump_5s_1mW_300K_300grating_center_900nm';
% 
% 
% %filnavn = 'C:\Documents and Settings\Jon\My Documents\Prosjekt\solcelle\nov-05-2009\Er-reference\old_setup_300grv-5s-1550nm-300k';
% 
% % Read file to memory
% A = dlmread(file,delimiter);
% 
% % Read axis spesific numbers
% Ax = A(:,1);
% Ay = A(:,2);
% 
% 
% % Plot
% fig1 = figure(1);
% 
% axes1 = axes('Parent',fig1,'FontSize',fontsize);
% box(axes1,'on');
% hold(axes1,'all');
% hold on;
% 
% plot(Ax,Ay);
% 
% %title('Erbium referanseprøve ved 300K, gjennom eksisterende lysbane');
% legend('5s integrating time')
% ylabel('Counts');
% xlabel('Wavelength [nm]');