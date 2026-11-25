% test_leastSquares  测试 myLeastSquares（计算方法 作业 02 第 5 题数据）
clc; clear;
Q = [1 2 3 4];
y = [0.8 1.5 1.8 2.0];

[a0, a1] = myLeastSquares(Q, y)

phi = a0*Q + a1*Q.^2;            % 拟合值
res = y - phi;                   % 残差
fprintf('平方误差和 = %.6f\n', sum(res.^2));
