function [L, U] = myDoolittle(A)
% myDoolittle  用 Doolittle 法实现矩阵 A 的 LU 分解
%   输入：A —— n×n 可逆矩阵
%   输出：L —— 单位下三角矩阵（对角元全为 1）
%         U —— 上三角矩阵
%   满足：A = L*U
n = size(A, 1);
L = eye(n);     % 单位下三角矩阵
U = zeros(n);   % 上三角矩阵

for k = 1:n
    % (1) 先求 U 的第 k 行
    for j = k:n
        U(k, j) = A(k, j) - L(k, 1:k-1) * U(1:k-1, j);
    end
    % (2) 再求 L 的第 k 列
    for i = k+1:n
        L(i, k) = (A(i, k) - L(i, 1:k-1) * U(1:k-1, k)) / U(k, k);
    end
end
end

