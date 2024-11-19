function Q3()
    data = readmatrix('data.csv'); % טעינת נתונים
  
    % הנתונים מתוך הקובץ
    time = data(:, 1);
    temperature = data(:, 2);
    
    % יצירת גרף של הטמפרטורה כפונקציה של הזמן
    figure;
    plot(time, temperature, '-o');
    xlabel('זמן (שניות)');
    ylabel('טמפרטורה (צלזיוס)');
    title('טמפרטורה vs זמן');
    grid on;
    
    % מציאת הזמן שבו הטמפרטורה מרבית
    [max_temp, max_index] = max(temperature);
    max_time = time(max_index);
    
    % הצגת התוצאות
    fprintf('הטמפרטורה המרבית היא %.2f מעלות צלזיוס בזמן %.2f שניות.\n', max_temp, max_time);
    
end