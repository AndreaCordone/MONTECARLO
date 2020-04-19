
function [dE,neigh] = energy ( x, N, index ) 
 
  J = 1 ; 
  mu = 1 ; 
  h = 0; 
% This is the sum of the neighbours of each lattice sites

neigh = circshift ( x, [0 1] ) + circshift ( x, [0 -1] )+circshift ( x, [1 0] ) + circshift ( x, [-1 0] )  ; 
 

 dE = 2*J*x(index)* neigh(index) + 2*h*(x(index)) ; 
 
 


end
