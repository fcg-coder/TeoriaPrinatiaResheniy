%Для выполнения работы необходимо решить следующие задачи:
%1. Построить нечеткие числа с гладкими функциями принадлежности, которые обеспечивает следующие возможности исследования:
    %a. Получение нечетких чисел с гладкими функциями принадлежности.
    %b. Построение нечетких чисел с гауссовыми функциями принадлежности.
    %c. Построение нечетких чисел с колокольными функциями принадлежности.
    %d. Оформление выводов о влиянии параметров на вид функций принадлежности.

%addpath('/Users/mak/Desktop/2')


% Задание значений переменных
T1 = 'ЛР1';
T2 = 'ЛР2';
T3 = 'ЛР3';

while 1
    % Вывод меню и получение выбора пользователя
    upr = menu('ТПР:', T1, T2, T3, 'ВЫХОД');
    
    switch upr
        case 1
            % Вывод значения T1
            disp(T1)
            
            % Ввод размеров и элементов матрицы
            rows = input('Введите количество строк матрицы: ');
            cols = input('Введите количество столбцов матрицы: ');
            matrix = zeros(rows, cols);
            for i = 1:rows
                for j = 1:cols
                    matrix(i, j) = input(sprintf('Введите элемент (%d, %d): ', i, j));
                end
            end
            
            % Вывод введенной матрицы
            disp('Введенная матрица:');
            disp(matrix);
            
            % Ввод размеров подматрицы
            start_row = input('Введите начальную строку подматрицы: ');
            end_row = input('Введите конечную строку подматрицы: ');
            start_col = input('Введите начальный столбец подматрицы: ');
            end_col = input('Введите конечный столбец подматрицы: ');
            
            % Проверка введенных размеров подматрицы
            if start_row < 1 || start_row > rows || end_row < 1 || end_row > rows || ...
               start_col < 1 || start_col > cols || end_col < 1 || end_col > cols || ...
               start_row > end_row || start_col > end_col
                disp('Ошибка: Недопустимые размеры подматрицы.');
            else
                % Получение подматрицы заданного вида и ее вывод
                submatrix = matrix(start_row:end_row, start_col:end_col);
                disp('Подматрица заданного вида:');
                disp(submatrix);
            end

        case 2
            % Вывод значения T2
            disp(T2)
            
            while 1 
                 x = -50:50;
                % Вывод меню ЛР2 и получение выбора пользователя
                upr1 = menu('ЛР2:', 'Ввод','Расчет','Вывод', 'Вывести все графики Гуасса', 'Вывести все графики Белла', 'Назад');
               
                switch upr1
                    case 1
                        aG = input('Введите А для Гаусса ');
                        sigmaG = input('Введите сигму А для Гаусса ');
                        aB = input('Введите А для Колокольной ');
                        sigmaB = input('Введите сигму А для Колокольной ');
                       

                    case 2

                        membersipG = gaussMF(x, aG, sigmaG);
                        membersipB = bellMF(x, aB, sigmaB);


                    case 3
                                hold on;
                                plot(x, membersipG);
                                xlabel('x');
                                ylabel('Membership');
                                hold on;
                                plot(x, membersipB);
                                xlabel('x');
                                ylabel('Membership');
        

                    case 4
                       q = [-10,0,30];
                       b = [3,4,9];
                       x = -50:50; 
                       for i = 1:3
                           for j = 1:3
                                a = q(i);
                                sigmaG = b(j);
                                membersip = gaussMF(x, a, sigmaG);
                                hold on;
                                plot(x, membersip);
                                xlabel('x');
                                ylabel('Membership');
                                title('Gaussian Functions');
                                legend('Gaussian');  
                           end
                       end








                    case 5
                        

                       Q = [-10,0,30];
                       B = [0.03,0.04,0.09];
                       x = -50:50; 
                       for i = 1:3
                           for j = 1:3
                                a = Q(i);
                                sigmaB = B(j);
                                membersip = bellMF(x, a, sigmaB);
                                hold on;
                                plot(x, membersip);
                                xlabel('x');
                                ylabel('Membership');
                                title('Bellian Functions');
                                legend('Bell');  
                           end
                       end
                    case 6
                        break
                end
            end
                
        case 3
            % Вывод значения T3
            disp(T3)
            
        case 4
            % Выход из цикла
            break
    end
    
end