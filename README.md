Clustering
==========
Here is the dataset:

![dataset](https://raw.githubusercontent.com/timmy00274672/Clustering/master/img/dataset.jpg)

1. 	Write a program to implement the **k-means** clustering for **three** clusters with initial centers located at 
	* [0,0,0]' [1,1,1]' [-1,0,2]'
	* [-0.1,0,0.1]' [0,-0.1,0.1]' [-0.1,-0.1,0.1]'
	
	Compare the results and explain any difference, including the number of iterations for convergence. 
2. 	Write a program to cluster the data set into three clusters using the **fuzzy k-means** clustering methods with *randomly* initialized representatives.

3. 
	To cluster the data set by using **Modified Basic Sequential Algorithm** scheme with unknown cluster number.

4. 
	According to your results obtained in the previous three methods, give some comments.

## Result and Discussion

### Dataset
Just load the `Sample.mat`. Each row is a data.(20*3)

### Question1
Just run the `Demo1.m` script. And get the result like:

```
  iter	 phase	     num	         sum
     1	     1	      20	      112.12
     2	     1	       1	      104.56
     3	     1	       2	       99.07
     4	     2	       0	       99.07
Best total sum of distances = 99.07
The first one gets mean(silh) = 0.4639

  iter	 phase	     num	         sum
     1	     1	      20	       161.7
     2	     1	      10	      114.66
     3	     1	       2	      107.01
     4	     1	       1	      102.28
     5	     2	       0	      102.28
Best total sum of distances = 102.28
The second one gets mean(silh) = 0.4257
```

Note : 

- Above, I use `L1 metric DMs` (`cityblock`).
- We can observe that different inital means result different result and convergence.
- I use `L2` metric DMs` (`sqEuclidean`), and get the result below. And find that two inital conditions
	get the same result.

```
  iter	 phase	     num	         sum
     1	     1	      20	     347.345
     2	     2	       0	     310.864
Best total sum of distances = 310.864
The first one gets mean(silh) = 0.4639

  iter	 phase	     num	         sum
     1	     1	      20	      409.85
     2	     2	       1	     369.467
     3	     2	       0	     310.864
Best total sum of distances = 310.864
The second one gets mean(silh) = 0.4639
```

## Reference

- [How do I perform k-Means clustering?](http://www.matlab-cookbook.com/recipes/0100_Statistics/150_kmeans_clustering.html)
- [k-Means Clustering](http://www.mathworks.com/help/stats/k-means-clustering-12.html)