function[C] = dark_current_noise_removal(A,B)
% Smoothends noise, and find min value, and remove offset. 
% Negative values from noise are truncated to 0.
% A and B MUST be of equal length!
        
    if (length(A) ~= length(B)) 
        X = 'Length different from B';
        B = [];     
    end
    if (isempty(B))
        % No noise is measured, remove a static offset instead.
        C = A;
        Ay = A(:,2); % Amplitude values
        Ay = sgolayfilt(Ay,1,255); % 1st order filtering
        offset = min(Ay); % Minimum offset, from noise averaging

        for i=1:length(A),
            new_value = A(i,2)-offset;
            if (new_value < 0) 
                new_value = 0; 
            end
            C(i,2) = new_value;
        end
    else
        % B matrix is the noise measurement 
        % - filter, and remove offset
        C = A;
        By = B(:,2); % Amplitude values
        OFFSET = sgolayfilt(By,1,25); % 1st order filtering

        for i=1:length(A),
            new_y_value = (C(i,2) - OFFSET(i));
            % white noise artifacts can result in < 0 values which are
            % clearly not possible in real life
            if (new_y_value < 0) 
                new_y_value = 0; 
            end
            C(i,2) = new_y_value;
        end
    end
end