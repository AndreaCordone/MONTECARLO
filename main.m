clear all 
clc 

% Numero di iterazioni e dimensione del sistema 
N = 12 ;
iter = 10*N ; 


% Vettore delle temperature
Tc = 2/log(1+sqrt(2)) ;  % Temperatura di curie
T_span = [ 0 : Tc/2 : 5*Tc ] ; 


% Initialize the energy and magnetization vector
E = zeros (size(T_span,2),1) ;
M = zeros (size(T_span,2),1)  ; 


% Configurazione iniziale 
init = rand ( N ) - 0.5 ; 
init = sign ( init ) ;
 
% Incresing index 
i = 1 ; 

% Compute monte carlo for different temperature

   for T = drange(T_span)  

    

   [x,neigh] = monte_carlo(N,T,iter,init) ; 
  
   E(i)= -0.5 * sum ( x.*neigh, 'all' ); 
   M(i) = sum ( x, 'all' ) / N ;
   i = i +1 ;
    
   end




%% Plot results 

close all 

% Handle to the figure E vs T/Tc
E_plot = figure('Name','2D Ising Model') 

plot(T_span/Tc,E) 

E_plot.CurrentAxes.YLabel.String = 'E'
E_plot.CurrentAxes.XLabel.String = 'T/Tc' ; 
E_plot.CurrentAxes.Title.String = 'Energy'
E_plot.CurrentAxes.XGrid = 'on'
E_plot.CurrentAxes.YGrid = 'on'

M_plot = figure('Name','2D Ising Model') 

plot( T_span/Tc, M ) 





