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
- I use `L2 metric DMs` (`sqEuclidean`), and get the result below. And find that two inital conditions
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

### Question2
Just run the `test_fuzme.m` script. And get the result:

```
U =

    0.4003    0.3285    0.2712
    0.0112    0.0123    0.9765
    0.8585    0.0930    0.0485
    0.7347    0.1287    0.1365
    0.0391    0.0421    0.9188
    0.0583    0.8783    0.0634
    0.7563    0.1254    0.1183
    0.8848    0.0648    0.0504
    0.1292    0.6724    0.1984
    0.0776    0.8584    0.0640
    0.4196    0.1621    0.4183
    0.2592    0.6526    0.0883
    0.4363    0.3705    0.1933
    0.3105    0.4065    0.2830
    0.7897    0.1179    0.0925
    0.3680    0.4890    0.1430
    0.0580    0.0536    0.8884
    0.3533    0.3896    0.2571
    0.5675    0.1258    0.3067
    0.3979    0.4426    0.1595


centroid =

    4.4722   -0.8540    2.8365
   -3.5404   -0.0346   -3.7680
   -5.4094    2.7908    3.1994


dist =

    2.7700    3.0577    3.3650
    2.3872    2.2746    0.2557
    0.6257    1.9006    2.6328
    0.8884    2.1222    2.0609
    2.6215    2.5254    0.5408
    2.4730    0.6370    2.3711
    1.0826    2.6583    2.7372
    0.6465    2.3890    2.7085
    2.9272    1.2831    2.3620
    2.4782    0.7454    2.7299
    1.8190    2.9267    1.8219
    1.6972    1.0695    2.9078
    1.0047    1.0902    1.5093
    1.8028    1.5757    1.8884
    0.8223    2.1283    2.4027
    1.9522    1.6934    3.1320
    2.6693    2.7761    0.6821
    1.7778    1.6930    2.0840
    1.1517    2.4461    1.5667
    1.7251    1.6356    2.7251


W =

    0.0256    0.0075   -0.0093
    0.0075    0.1993   -0.0004
   -0.0093   -0.0004    0.0638


obj =

   16.5037
```

Note:

- output:
	- U           = membership matrix
	- centroid    = centroid              centroid(nclass, ndim)
	- dist        = distance matrix       dist(ndata,nclass)
	- W           = distance norm matrix
	- obj         = objective function
- Check the answer by `sum(U,2)` and get the result:
	```
	ans =

	    1.0000
	    1.0000
	    1.0000
	    1.0000
	    1.0000
	    1.0000
	    1.0000
	    1.0000
	    1.0000
	    1.0000
	    1.0000
	    1.0000
	    1.0000
	    1.0000
	    1.0000
	    1.0000
	    1.0000
	    1.0000
	    1.0000
	    1.0000
	```

## Reference

- [How do I perform k-Means clustering?](http://www.matlab-cookbook.com/recipes/0100_Statistics/150_kmeans_clustering.html)
- [k-Means Clustering](http://www.mathworks.com/help/stats/k-means-clustering-12.html)
