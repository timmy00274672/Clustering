function labels = TTSAS(X,theta1,theta2)
% TTSAS - Two Threshold Sequential Algorithmic Scheme
%   
% Inputs: 
%   X : [ number_of_samples by number_of_features ] matrix of feature vectors
%   theta1,thest2 : thresholds of dissimilarty (theta1 < theta2)
% 
% Outputs: 
%   res : the resulting point labels with values between [1, number of clusters]
% 
% Notes: 
%   For this scheme one needs to define the distance between a point x_i and a cluster C_j.
%   This implementation uses the cluster represntative is the mean and the distance between 
%   x_i and C_j is the Euclidean distance between x_i and the cluster reprentative.
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

N         = size(X,1);
nFeatures = size(X,2); 

% Initialization: 
% 
m             = 0;
is_labeled    = zeros(N,1); % the variable "clas" in the psudocode 
prev_change   = 0;
cur_change    = 0; 
exists_change = 0; 
labels        = zeros(1,N); 

while( sum(is_labeled)<N ) % there is at least one feature vector not yet classified 
  first_in_while_loop = 1; 
  
  for ii=1:N
    if( is_labeled(ii)==0 && first_in_while_loop==1 && exists_change==0 )
      first_in_while_loop = 0; 
      m              = m+1; 
      labels(ii)     = m; 
      is_labeled(ii) = 1; 
      cur_change     = cur_change + 1; 
      
    elseif( is_labeled(ii)==0 )
      [d_x_i_C_k,k] = findClosestCluster( ii, labels, X ); % find which cluster is closest to the point x_{ii} 
      
      if( d_x_i_C_k < theta1 )
	labels(ii)     = k; 
	is_labeled(ii) = 1; 
	cur_change     = cur_change + 1; 
	
      elseif( d_x_i_C_k > theta2 )
	m              = m+1; 
	labels(ii)     = m; 
	is_labeled(ii) = 1; 
	cur_change     = cur_change + 1; 
      end
      
    elseif( is_labeled(ii)==1 )
      cur_change = cur_change + 1; 
      
    else
      fprintf('should never get here\n'); 
    end %if 
    
  end %for 
  exists_change = abs( cur_change - prev_change ); 
  prev_change   = cur_change; 
  cur_change    = 0; 
  
end %while







