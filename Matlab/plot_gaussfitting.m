function plot_gaussfitting(Result,peak_guesses,interval,fig_number,type,legend1,title1,fontsize,plot_type,plot_guessed_gausscurves)

    % Define X and Y values
    Ax = Result(:,1);
    Ay = Result(:,2);

    % Define interval to gaussfit
    indexlow = find(Ax > interval(1),1,'first');
    indexhigh = find(Ax > interval(2),1,'first');
    xaxis = Ax(indexlow:indexhigh);
    intensity = Ay(indexlow:indexhigh);

    % Sgolay filtering before curvefitting
    intensity = sgolayfilt(intensity,1,13);

    % Create gaussian curves
    [calcInt,g1,g2,g3,g4,g5,g6,g7,g8,g9,g10] = Gn(peak_guesses,xaxis);
    
    %% Computer fit
    if (plot_guessed_gausscurves)
    else
    param = lsqcurvefit(@Gn, peak_guesses, xaxis, intensity);
    [calcInt,g1,g2,g3,g4,g5,g6,g7,g8,g9,g10] = Gn(param,xaxis);
    end
    
    %% Plotting
    lp = length(peak_guesses)/3+2; % 3 dimentions, 2 plots addition
    for i=1:lp,

        % Override X and Y values for subplots
        Ax = xaxis;
        plot_type = '--r';
        switch i
            case 1
                Ay = g1;
            case 2
                Ay = g2;
            case 3
                Ay = g3;
            case 4
                Ay = g4;
            case 5
                Ay = g5;
            case 6
                Ay = g6;
            case 7
                Ay = g7;
            case 8
                Ay = g8;
            case 9
                Ay = g9;
            case 10
                Ay = g10;
            otherwise
        end
        if (i == (lp-1))
            Ay = intensity;
            plot_type = 'b'; % Filteret results
        elseif (i == (lp))
            Ay = calcInt;
            plot_type = 'k'; % Fitted gaussian
        end


        % Calculate eV values if needed
        if (strcmp(type,'ev'))
            Ax = nm_to_ev(Ax);
            xlabel1 = 'Energy [eV]';
        else
            xlabel1 = 'Wavelength [nm]';
        end

        % Detect same figure plot
        cf = get(0,'CurrentFigure');
        fill_info = 0;
        if (isempty(cf))
            fill_info = 1;
        end
        if (cf ~= fig_number)
           fill_info = 1; 
        end

        % Plot
        fig = figure(fig_number);

        if (fill_info)
            axes1 = axes('Parent',fig,'FontSize',fontsize);
            box(axes1,'on');

            hold(axes1,'all');
            hold on;
        end

        plot(Ax,Ay,plot_type);

        % If no figure exists, input info
        if (fill_info) % Don't add info twice
            legend(legend1);
            title(title1);
            ylabel('Counts');
            xlabel(xlabel1);
        end
    end
end