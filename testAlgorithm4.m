function [label, Fro_norm] = testAlgorithm4(J, M, U_k, C)
% Testing process for T-SVD Method
% Input:
%   J   - l*n matrix
%   M   - l*1*n tensor
%   A   - l*N*n tensor
%   U_k - l*k*n 'econ' form
%   C   - k*N*n tensor
% Output:
%   label    - return the label of closest image
%   Fro_norm - return the frobenius norm of closest image

T(:,1,:) = twist(J) - M;
B = tprod(tran(U_k),T); % k*1*n tensor

Fro_norm = +Inf;
label = 0;
for j = 1:N
    tmp_norm = norm(B - C(:,j,:), 'fro');
    if tmp_norm < Fro_norm
        Fro_norm = tmp_norm;
        label = j;
    end
end
end