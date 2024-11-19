function Q7_2(fun, x_range, root)
    % ערכי X וY
    x_values = linspace(x_range(1), x_range(2), 1000);
    y_values = fun(x_values);
    
    % שרטוט הפונקציה
    figure;
    plot(x_values, y_values, 'b-', 'LineWidth', 2);
    hold on;
    
    plot(root, fun(root), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r'); % שרטוט נקודת השורש
    
    % כותרות וצירים
    xlabel('x');
    ylabel('f(x)');
    title('𝑓(𝑥)=𝑥3−2𝑥2+4𝑥−8');
    legend('f(x)', 'Root');
    grid on;
end