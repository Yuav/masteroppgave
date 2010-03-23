function [C] = dead_pixel_correction(A)
% Copy neighbour value on defect pixels in InGaAs camera. 
    C = A;
    C(933,2) = A(932,2); % This pixel is dead (show too high values)
    C(873,2) = A(872,2); % This pixel is dead (show too low values)        
end