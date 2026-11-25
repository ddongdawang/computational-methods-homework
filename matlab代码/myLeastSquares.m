function [a0, a1] = myLeastSquares(Q, y)
% myLeastSquares  用最小二乘法拟合经验公式  y = a0*Q + a1*Q^2
%
%   输入：Q  —— 自变量（温度）向量，行向量或列向量均可
%         y  —— 观测值向量，长度必须与 Q 相同
%   输出：a0, a1 —— 拟合系数，即 phi(Q) = a0*Q + a1*Q^2
%
%   原理：设 A = [Q, Q.^2]，则法方程为 (A'*A)*c = A'*y，
%         用左除 c = A\y 直接求最小二乘解（数值上比显式解法方程更稳定）。
%
%   例：Q = [1 2 3 4];  y = [0.8 1.5 1.8 2.0];
%       [a0, a1] = myLeastSquares(Q, y)   ->  a0 = 0.9497, a1 = -0.1129

Q = Q(:);  y = y(:);            % 统一为列向量，便于构造设计矩阵
if numel(Q) ~= numel(y)
    error('Q 与 y 的长度必须相同');
end

A = [Q, Q.^2];                  % 设计矩阵：第 1 列 Q，第 2 列 Q^2
c = A \ y;                      % 左除求最小二乘解（等价于解 A'*A*c = A'*y）

a0 = c(1);
a1 = c(2);
end
