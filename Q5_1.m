function [x_min, f_min] = Q5_1(fun, x_range, tol)
    a = x_range(1);
    b = x_range(2);
    while (b - a) / 2 > tol
        x1 = a + (b - a) / 4;
        x2 = b - (b - a) / 4;
        if fun(x1) < fun(x2)
            b = x2;
        else
            a = x1;
        end
    end
    x_min = (a + b) / 2;
    f_min = fun(x_min);
    fprintf(' המינימום של הפונקציה נמצא בנקודה (x = %.4f, f(x) = %.4f.\n ', x_min, f_min);
    end