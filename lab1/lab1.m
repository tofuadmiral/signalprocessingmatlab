%% Question 1
% Use matlab to plot the following discrete time signals
% our range is from -10 to 10

n = -10:10;

% 1a) x[n] = u[n] -2u[n-1] + u[n-4] 

ya = unitstep(n) - 2.*unitstep(n-1) + unitstep(n-4);
ya;

% 1b) x[n] = (n+2)u[n+2] -2u[n] -nu[n-4]
yb = (n+2).*unitstep(n+2) - 2.*unitstep(n) -n.*unitstep(n-4);
yb;

% 1c) x[n] = ?[n + 1] ? ?[n] + u[n + 1] ? u[n ? 2]
yc = dirac(n+1) - dirac(n) + unitstep(n+1) - unitstep(n-2);
yc;

% 1d) x[n] = e0.8n u[n + 1] + u[n]
yd = exp(0.8*n).*unitstep(n+1) + unitstep(n);
yd;

stem(n, ya);
%%stem(n, yc);
%stem(n, yd);
title('Ahmed Fuad Ali 400075937 & Daniel Jabbour 400095100');


%% Question 2 
% process student grade records using matlab from a CSV file
% use matrix operations rather than matlab program loops

% 2a) write a matlab that accepts a set of students as a matrix, max grade
%     vector, and vector of column indices, generate vector of avg grades, 
%     one for each, associated w the right column index

%% Question 2

marks = csvread('course_grades_2018.csv', 1, 0);

max_marks = csvread('course_grades_2018.csv', 0, 1, [0, 1, 0, 11]);

% Extracting the appropriate data from the matrix
exam_col = (6:11);
midterm_col = (5:5);
labs_col = (1:4);

% b)

% Calculating the averages for each respective mark
exam_avg = csv_get_averages(marks, max_marks, exam_col);

midterm_avg = csv_get_averages(marks, max_marks, midterm_col);

labs_avg = csv_get_averages(marks, max_marks, labs_col);

% c)

cumulitive_avg = 0.4.*(exam_avg) + 0.3.*(midterm_avg) + 0.3.*(labs_avg);

cumulitive_avg_desc = sort(transpose(cumulitive_avg), 'descend');

plot(cumulitive_avg_desc)
title('Ahmed Fuad Ali 400075937 & Daniel Jabbour 400095100');

% Question 3

image = imread('ee3tp3picture2018.png');
image_of_doubles = double(image);

% a)

[n_elements, centers] = hist(image_of_doubles(:), 20);
bar(centers, n_elements)
xlim([0 255])

% b) 

% c - v'(x,y) = a * v(x, y) + b
image_of_doubles = image_of_doubles.*9.5 - 1510;

% d)
[n_elements, centers] = hist(image_of_doubles(:), 20);
bar(centers, n_elements)
xlim([0 255])
title('Ahmed Fuad Ali 400075937 & Daniel Jabbour 400095100')

% e)
imshow(uint8(image_of_doubles));
image_to_save = uint8(image_of_doubles);
imwrite(image_to_save, 'saved_image.png');









