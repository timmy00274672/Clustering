% 
% Written by:
% -- 
% John L. Weatherwax                2007-07-01
% 
% email: wax@alum.mit.edu
% 
% Please send comments and especially bug reports to the
% above email address.
% 
%-----

addpath('../../Martinez/EDA/Problems/Chapter1/'); 

X = [ 1, 1 ; 
      1, 2 ; 
      2, 2 ; 
      2, 3 ; 
      3, 3 ; 
      3, 4 ; 
      4, 4 ; 
      4, 5 ; 
      5, 5 ; 
      5, 6 ; 
      -4, 5 ; 
      -3, 5 ; 
      -4, 4 ; 
      -3, 4 ];

% Part (a):
% 
labels = BSAS( X, sqrt(2), 10 ); 

% plot these points and their labels 
plot_labeled( X(:,1), X(:,2), labels );
if( 1 ) saveas( gcf, '../../WriteUp/Graphics/Chapter12/prob_3_BSAS_pt_a', 'eps' ); end

labels = MBSAS( X, sqrt(2), 10 ); 

% plot these points and their labels 
plot_labeled( X(:,1), X(:,2), labels );
if( 1 ) saveas( gcf, '../../WriteUp/Graphics/Chapter12/prob_3_MBSAS_pt_a', 'eps' ); end


% Part (b) change the order of the points: 
% 
inds = [ 1, 10, 2 3 4 11 12 5 6 7 13 8 14 9 ];

labels = BSAS( X(inds,:), sqrt(2), 10 ); 

% plot these points and their labels 
plot_labeled( X(inds,1), X(inds,2), labels );
if( 1 ) saveas( gcf, '../../WriteUp/Graphics/Chapter12/prob_3_BSAS_pt_b', 'eps' ); end

labels = MBSAS( X(inds,:), sqrt(2), 10 ); 

% plot these points and their labels 
plot_labeled( X(inds,1), X(inds,2), labels );
if( 1 ) saveas( gcf, '../../WriteUp/Graphics/Chapter12/prob_3_MBSAS_pt_b', 'eps' ); end



% Part (c) change the order of the points again: 
% 
inds = [ 1, 10, 5, 2, 3, 11, 12, 4, 6, 7, 13, 14, 8, 9 ];

labels = BSAS( X(inds,:), sqrt(2), 10 ); 

% plot these points and their labels 
plot_labeled( X(inds,1), X(inds,2), labels );
if( 1 ) saveas( gcf, '../../WriteUp/Graphics/Chapter12/prob_3_BSAS_pt_c', 'eps' ); end


labels = MBSAS( X(inds,:), sqrt(2), 10 ); 

% plot these points and their labels 
plot_labeled( X(inds,1), X(inds,2), labels );
if( 1 ) saveas( gcf, '../../WriteUp/Graphics/Chapter12/prob_3_MBSAS_pt_c', 'eps' ); end


