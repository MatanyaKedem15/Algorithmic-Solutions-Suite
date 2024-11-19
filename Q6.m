function Q6(students, grades)
    
    student_averages = mean(grades, 2); % חישוב ממוצע הציונים של כל תלמיד
   
    course_average = mean(student_averages);  % חישוב ממוצע הציונים הכולל של הקורס
    
    % מציאת שמות התלמידים שהממוצע שלהם נמוך מממוצע הקורס
    below_average_students = students(student_averages < course_average);
    
    % חישוב אחוז התלמידים שקיבלו ציון מעל ממוצע הקורס
    above_average_percentage = sum(student_averages > course_average) / length(students) * 100;
    
    % הצגת התוצאות
    fprintf('ממוצע הקורס הוא: %.4f\n', course_average);
    fprintf('התלמידים שהממוצע שלהם נמוך מממוצע הקורס הם:\n');
    for i = 1:length(below_average_students)
        fprintf('%s\n', below_average_students{i});
    end
    fprintf('אחוז התלמידים שקיבלו ציון מעל ממוצע הקורס הוא: %.2f%%\n', above_average_percentage);
end