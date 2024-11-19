function Q2()
    theta0 = pi/4; % תנאי התחלה
    omega0 = 0; % תנאי התחלה
    
    tspan = [0 10]; % זמן סימולציה
    
    [t, y] = ode45(@(t, y) pendulumODE(t, y), tspan, [theta0; omega0]); % פתרון המשוואה הדיפרנציאלית
    
    create_animation(t, y(:, 1)); % יצירת האנימציה
end

function dydt = pendulumODE(~, y)
    g = 9.8; % תאוצת הכובד
    L = 1; % אורך המטוטלת
    
    dydt = [y(2); -g/L * sin(y(1))];
end

function create_animation(t, theta)
    L = 1; % אורך המטוטלת
    
    figure;
    for k = 1:length(t)
        clf;
        hold on;
        x = L * sin(theta(k));
        y = -L * cos(theta(k));
        
        % ציור המטוטלת
        plot([0, x], [0, y], 'b', 'LineWidth', 2);
        plot(x, y, 'bo', 'MarkerFaceColor', 'r');
        
        axis equal;
        axis([-1.5 1.5 -1.5 0.5]); % ערכי מיקום האופקי במטרים
        set(gca, 'YTick', -1:0.2:1); % ערכי מיקום האנכי במטרים
        grid on;
        
        % עידכון הכותרת עם הזמן
        title(sprintf('תנועת המטוטלת'));
        xlabel('מיקום אופקי (מטרים)');
        ylabel('מיקום אנכי (מטרים)');
        drawnow;
    end
end
