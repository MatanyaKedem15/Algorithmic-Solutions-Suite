function [x, is_invertible] = Q1(A, b)
    det_A = det(A); % חישוב דטרמיננטה
    
    if det_A == 0 % בדיקת הפיכות
        x = [];
        is_invertible = false;
        return;
    end

    % חישוב המטריצה ההופכית ופתרון המשוואה
    A_inv = inv(A);
    disp('המטריצה ההופכית היא:');
    disp(A_inv);
    x = A_inv * b;
    is_invertible = true;
end
