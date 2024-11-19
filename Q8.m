function Q8()
    
    tspan = [0 6]; % זמן בטווח 0 עד 6 שעות
    C0 = 1; % ריכוז התחלתי mg/L
    k = log(2) / 3; % קבוע הפירוק של התרופה (לפי זמן מחצית חיים של 3 שעות)
    
    [t, C] = ode45(@(t, C) -k * C, tspan, C0); % פתרון המשוואה הדיפרנציאלית
    
    % שרטוט גרף ריכוז התרופה לאורך זמן
    figure;
    plot(t, C, 'b-', 'LineWidth', 2);
    hold on;
    
    % סימון נקודות ספציפיות על הגרף
    C3 = C(find(t >= 3, 1)); % ריכוז התרופה אחרי 3 שעות
    C6 = C(find(t >= 6, 1)); % ריכוז התרופה אחרי 6 שעות
    plot(0, C0, 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r'); % ריכוז התחלתי
    plot(3, C3, 'go', 'MarkerSize', 10, 'MarkerFaceColor', 'g'); % ריכוז אחרי 3 שעות
    plot(6, C6, 'mo', 'MarkerSize', 10, 'MarkerFaceColor', 'm'); % ריכוז אחרי 6 שעות
    
    % כותרות וצירים
    xlabel('זמן (שעות)');
    ylabel('ריכוז C(t) (mg/L)');
    title('ריכוז התרופה בדם לאורך זמן');
    legend('C(t)', 'C(0)', 'C(3)', 'C(6)');
    grid on;
    
    % הצגת הערכים על הגרף
    text(0, C0, sprintf('%.2f', C0), 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
    text(3, C3, sprintf('%.2f', C3), 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
    text(6, C6, sprintf('%.2f', C6), 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right');
end