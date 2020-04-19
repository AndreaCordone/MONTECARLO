%% THIS code create an image 
% image generation 
% x is the matrix to be displayed 


  im = imagesc(system) ; 
  map = [ 0 0 0 ; 1 1 1];  % this is a colormap with only white and gray
  colormap(map) ;
  gca.Box = 'on' ; 
  gca.XTick = []; 
  gca.YTick = [];

  name = sprintf ( [pwd '/results/T=%f'],T);
  print (  name, '-dpng') ; 
 