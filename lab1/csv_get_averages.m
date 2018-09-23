function y = csv_get_averages(m, max, columnindexes)
if (nargin ~= 3)
    disp('the function requires 3 arguments')
    return
end 

% want to take each element and divide by max score 
% so each element in the row should be inverted and then 
% you can multiply the two vectors so you get a percentage in each one, but
% bc matrix multiplication the inner number of elemnts must be matched, 
% transpose the grade matrix, so then you have total weights and divide
% by the length of the column indexes to get the grades
invertmax = 1./max(columnindexes);
transposem = transpose(m(:,columnindexes));
totalmark = invertmax*transposem;
percentages = totalmark./length(columnindexes);

y = percentages;




    
