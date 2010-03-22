function[C]  = matrix_align_and_glue_reverse(A,B)

overlapIndex = 0;

% Drop the left side in the interval
    for i=1:length(B),
        if (A(length(A),1) < B(i,1))
           overlapIndex = i
           break;
        end
    end
    sizeA = length(A)
    sizeB = length(B)
    new_array_size = (sizeA+sizeB-overlapIndex) 
    temp_C = zeros([new_array_size 2]); % Define right length of array
    
    % Add existing elements
    temp_C = A;    
    % Add new elements
    for k = 1:(length(B)-overlapIndex),
       temp_C((length(A)+k),1) = B(overlapIndex+k,1);
       temp_C((length(A)+k),2) = B(overlapIndex+k,2);
    end
    
    C = temp_C
end