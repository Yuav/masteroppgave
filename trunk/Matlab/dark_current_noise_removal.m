function[C] = dark_current_noise_removal(A)
% Smoothends noise, and find min value, and remove offset. Negative values
% from noise are truncated to 0.

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
end