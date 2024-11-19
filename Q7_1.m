function [root, iterations] = Q7_1(fun, x_range, tol)
    a = x_range(1);
    b = x_range(2);
    iterations = 0;
    
    while (b - a) / 2 > tol
        iterations = iterations + 1;
        c = (a + b) / 2;
        if fun(c) == 0
            break;
        elseif fun(a) * fun(c) < 0
            b = c;
        else
            a = c;
        end
    end
    
    root = (a + b) / 2;
    fprintf('השורש של הפונקציה נמצא בנקודה x = %.4f לאחר %d חזרות.\n', root, iterations);
end
