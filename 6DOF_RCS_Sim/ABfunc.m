function [A,B] = ABfunc(a,e,I,omega,Omega)
A = [a.*(cos(Omega).*cos(omega) - sin(Omega).*cos(I).*sin(omega));...
     a.*(sin(Omega).*cos(omega) + cos(Omega).*cos(I).*sin(omega));...
     a.*sin(I).*sin(omega)];
 
 B = [-a.*sqrt(1-e.^2).*(cos(Omega).*sin(omega) + ...
                sin(Omega).*cos(I).*cos(omega));...
      a.*sqrt(1-e.^2).*(-sin(Omega).*sin(omega) + ...
                cos(Omega).*cos(I).*cos(omega));...
      a.*sqrt(1-e.^2).*sin(I).*cos(omega)];
end