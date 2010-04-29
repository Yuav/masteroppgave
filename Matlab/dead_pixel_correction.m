function [C] = dead_pixel_correction(A)
% Copy neighbour value on defect pixels in InGaAs camera. 
    C = A;
    C(401,2) = A(400,2); % Defective (slightly to low)
    C(723,2) = A(722,2); % Defective (slightly to high)
    C(933,2) = A(932,2); % This pixel is dead (too high values)
    C(873,2) = A(872,2); % This pixel is dead (too low values)        
end