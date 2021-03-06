%**************************************************************************
% Compute U from W
% -------------------------------------------------------------------------
%  Input:  w =    primitive variables (rho,     u,     v,     p)
% Output:  u = conservative variables (rho, rho*u, rho*v, rho*E)
% -------------------------------------------------------------------------
%**************************************************************************
function u = w2u(w,gamma)

% Compute conservative variables
u(1,1) = w(1);
u(2,1) = w(1)*w(2);
u(3,1) = w(1)*w(3);
u(4,1) = w(4)/(gamma-1)+0.5*w(1)*(w(2)*w(2)+w(3)*w(3));

end