function    gif(x, i,T)
  
% figure properties
   
    imagesc(x) ;
    map = [ 0 0 0 ; 1 1 1]; 
    colormap(map) ;
    axis tight manual ; 
  
    

% capture frames

     frame = getframe ; 
     im = frame2im(frame) ; 
     [imind,cm] = rgb2ind(im,256) ; 
     
% write to gif file

filename = sprintf ( [pwd '/results/T=%f'],T) ;  

     if     i == 1 
         
         imwrite(imind,cm,filename,'gif','DelayTime',0.02); 
     
     else
         imwrite(imind,cm,filename,'gif','WriteMode','append','DelayTime',0.02);
         
     end
     
end
