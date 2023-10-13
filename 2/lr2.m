%��� ���������� ������ ���������� ������ ��������� ������:
%1. ��������� �������� ����� � �������� ��������� ��������������, ������� ������������ ��������� ����������� ������������:
    %a. ��������� �������� ����� � �������� ��������� ��������������.
    %b. ���������� �������� ����� � ���������� ��������� ��������������.
    %c. ���������� �������� ����� � ������������ ��������� ��������������.
    %d. ���������� ������� � ������� ���������� �� ��� ������� ��������������.

%addpath('/Users/mak/Desktop/2')


% ������� �������� ����������
T1 = '��1';
T2 = '��2';
T3 = '��3';

while 1
    % ����� ���� � ��������� ������ ������������
    upr = menu('���:', T1, T2, T3, '�����');
    
    switch upr
        case 1
            % ����� �������� T1
            disp(T1)
            
            % ���� �������� � ��������� �������
            rows = input('������� ���������� ����� �������: ');
            cols = input('������� ���������� �������� �������: ');
            matrix = zeros(rows, cols);
            for i = 1:rows
                for j = 1:cols
                    matrix(i, j) = input(sprintf('������� ������� (%d, %d): ', i, j));
                end
            end
            
            % ����� ��������� �������
            disp('��������� �������:');
            disp(matrix);
            
            % ���� �������� ����������
            start_row = input('������� ��������� ������ ����������: ');
            end_row = input('������� �������� ������ ����������: ');
            start_col = input('������� ��������� ������� ����������: ');
            end_col = input('������� �������� ������� ����������: ');
            
            % �������� ��������� �������� ����������
            if start_row < 1 || start_row > rows || end_row < 1 || end_row > rows || ...
               start_col < 1 || start_col > cols || end_col < 1 || end_col > cols || ...
               start_row > end_row || start_col > end_col
                disp('������: ������������ ������� ����������.');
            else
                % ��������� ���������� ��������� ���� � �� �����
                submatrix = matrix(start_row:end_row, start_col:end_col);
                disp('���������� ��������� ����:');
                disp(submatrix);
            end

        case 2
            % ����� �������� T2
            disp(T2)
            
            while 1 
                 x = -50:50;
                % ����� ���� ��2 � ��������� ������ ������������
                upr1 = menu('��2:', '����','������','�����', '������� ��� ������� ������', '������� ��� ������� �����', '�����');
               
                switch upr1
                    case 1
                        aG = input('������� � ��� ������ ');
                        sigmaG = input('������� ����� � ��� ������ ');
                        aB = input('������� � ��� ����������� ');
                        sigmaB = input('������� ����� � ��� ����������� ');
                       

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
            % ����� �������� T3
            disp(T3)
            
        case 4
            % ����� �� �����
            break
    end
    
end