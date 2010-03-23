function plot_result(Result,fig_number,type,legend1,title1,fontsize)

    % Define X and Y values
    Ax = Result(:,1);
    Ay = Result(:,2);

    % Plot
    fig = figure(fig_number);

    axes1 = axes('Parent',fig,'FontSize',fontsize);
    box(axes1,'on');
    hold(axes1,'all');
    hold on;

    if (strcmp(type,'ev'))
        Ax = nm_to_ev(Ax);
        xlabel1 = 'Energy [eV]';
    else
       xlabel1 = 'Wavelength [nm]';
    end
       
    
    plot(Ax,Ay);

    legend(legend1);
    title(title1);
    ylabel('Counts');
    xlabel(xlabel1);
end