A = [1:5; 6:10; 11:15; 16:20];
A1 = ones(1, size(A, 1));
B1 = ones(size(A, 2), 1);
result = A1 * A * B1 ;
