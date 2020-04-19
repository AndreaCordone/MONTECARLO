
function [x,neigh]= monte_carlo ( N, T, iter,x )


  
  
  for i = 1:iter 
    
  index = randi( N*N )  ;

  [dE,neigh] = energy ( x, N, index ) ;

  prob = exp(-dE / T) ; 

  if dE <=0 || rand() <= prob
    
      x(index) = -x(index) ; 
    
  end
  
%%%%%%%%%%%%% GIF GENERATOR %%%%%%%%%%%%%%%%%%
%                                            %
%        if sum(ismember([1:100:iter],i))    %
%                                            %
%             gif (x,i,T)                    %
%        end                                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%     
  
  end
  
  
end
  
%% THIS SELECT SEQUENTIALLY EACHE LATTICE SIES

% 
% 
%   for i = 1:1e5 
%    
% 
%  for j = 2:N
%      for k = 2:N
% 
%   x(j,k) = -x(j,k) ; 
%    
%   index=sub2ind([N N], i,j) ;
%   
%   [~,dE] = energy(x,N,index) ;
% 
%   prob = exp(-dE / Tc);
% 
%   if dE <=0 || rand() <= prob
%     
%        else 
%           x(j,k) = -x(j,k) ; 
%     
%        end
%   
%   if sum(ismember([1:10:1e5],i))
%    
%          imagesc ( x(2:N,2:N) )
%          pause (0.00000000001)
% 
%         end
% 
%  end
%  end
%  end

 %% THIS SELECT RANDOMLY THE NEXT LATTICE SITES
% 
% index = randi( N*N )  ;
% 
%   for i = 1:iter 
%     
%   x(index) = -x(index) ; 
% 
%   
%   [~,dE,~] = energy ( x, N, index ) ;
% 
%   
%   prob = exp(-dE / Tc) ; 
% 
%   if dE <=0 || rand() <= prob
%     
%   else 
%     x(index) = -x(index) ; 
%     
%   end
%   
%   
%   if sum(ismember([1:1000:iter],i))
%  
%      imagesc ( x )
%      colormap ( 'gray') ; 
%      pause (0.00000000001)
% 
%   end
%   
%  % questo serve per selezionare un n.n come prossimo step 
%   
%   j = randi ( 4 ) ; 
%   
%   [row,col] = ind2sub (N, index ) ; 
%   
%   col_right = mod (col,N) +1 ;
%   col_left = mod (col-2,N)+1 ;
%   row_up = mod(row-2,N) +1 ; 
%   row_down = mod (row, N ) +1 ;
% 
%   n_up = sub2ind([N N],row_up,col) ; 
%   n_down = sub2ind ([N N], row_down, col ) ; 
%   n_left = sub2ind ([N N], row,col_left) ; 
%   n_right = sub2ind ( [N N],row,col_right )  ;
%       
%   index_set = [ n_up , n_down , n_left, n_right ]; 
%   
%   % scegli a caso uno degli elementi dell' aray sopra come prossimo site
%   index = index_set ( j ) ; 
%   
% 
%   
%   end
%   

