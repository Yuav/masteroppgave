function[C] = bar_plot_values(A)
    Ay = A(:,2);
    TO = max(Ay);

    I0_index =  1124; % 1.138eV
    TO_IVa_index = 1583; % 1.074eV
    TO_Zone_center_index = 1879; % 1.0368eV
    D4_index = 2187; % 1.0eV
    TO_2_Zone_center_index = 2488; % 0.968eV
    D3_index = 2818; % 0.934eV

    bar_plot = [6 1];
    bar_plot(6,1) = Ay(I0_index)/TO;
    bar_plot(5,1) = Ay(TO_IVa_index)/TO;    
    bar_plot(4,1) = Ay(TO_Zone_center_index)/TO;    
    bar_plot(3,1) = Ay(D4_index)/TO;    
    bar_plot(2,1) = Ay(TO_2_Zone_center_index)/TO;    
    bar_plot(1,1) = Ay(D3_index)/TO;    

    C = bar_plot;
end