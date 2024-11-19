
function Q5_2(fun, x_range, root)

    % ערכי X וY
    x_values = linspace(x_range(1), x_range(2), 1000);
    y_values = fun(x_values);
    
    % שרטוט הפונקציה
    figure;
    plot(x_values, y_values, 'b-', 'LineWidth', 2);
    hold on;
    
    % שרטוט נקודת המינימום
    plot(root, fun(root), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
    
    % כותרות וצירים
    xlabel('x');
    ylabel('f(x)');
    title('𝑓(𝑥)=𝑥2+4sin (𝑥)');
    legend('f(x)', 'Minimum');
    grid on;
end