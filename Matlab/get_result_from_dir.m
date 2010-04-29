function [C] = get_result_from_dir(dname,delimiter,drop_rightside)
% Reads all files in a directory, and return matrix elements 
% separated by delimiter from file contents

    C = 0;

    % Read directory
    files = dir(dname);

    % Sort filenames in dir
    filenames = {files.name};
    
    % Sort numbers in string logically
    [dummy, index] = sort_nat(filenames); 
    
    % re-index the files array:
    files = files(index);

    % Combine files to one large array
    for i=1:length(files),
       if (files(i).name == '.') % Do nothing
       elseif (strcmp(files(i).name,'..')) % Do nothing
           elseif (strcmp(files(i).name,'.svn')) % Do nothing
       else
           % Read file contents into memory
           A = dlmread([dname,files(i).name],delimiter);
           
           % Filter out dead pixels in the InGaAs camera
           A = dead_pixel_correction(A); 
           if (0 == C)
               C=A;
           else
               if (drop_rightside == 0)
                   C = matrix_align_and_glue(C,A);
               else
                   C = matrix_align_and_glue_reverse(C,A);
               end
           end
       end
    end
end