function Q4()
    tspan = [0 10]; % זמן סימולציה
   
    y0 = 0.5; % תנאי התחלה
    
    [t, y_num] = ode45(@(t, y) dydt(t, y), tspan, y0);  % פתרון נומרי באמצעות ode45
    
    y_analytic = 1 ./ (1 + (1/0.5 - 1) * exp(-t));  % פתרון אנליטי
    
    % שרטוט הגרפים
    figure;
    plot(t, y_num, 'b-', 'DisplayName', 'פתרון נומרי');
    hold on;
    plot(t, y_analytic, 'r--', 'DisplayName', 'פתרון אנליטי');
    xlabel('זמן (t)');
    ylabel('פתרון (y)');
    title('dydt = y * (y - 1)');
    legend;
    grid on;
    
    error = abs(y_num - y_analytic); % חישוב השגיאה
    
    % שרטוט של גרף השגיאה
    figure;
    plot(t, error, 'k-', 'DisplayName', 'שגיאה');
    xlabel(' זמן (t)');
    ylabel('שגיאה (y)');
    title('שגיאה בין הפתרון האנליטי לנומרי');
    legend;
    grid on;
end

% פונקציה שמגדירה את המשוואה הדיפרנציאלית
function dydt = dydt(~, y)
    dydt = y * (y - 1);
end