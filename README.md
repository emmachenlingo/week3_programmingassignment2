# week3_programmingassignment2 introduction

This function aims to cache potentially time-consuming computations.
For example, taking the inverse of a numeric vector is time-costly. It may take too long to 
compute the inverse of a matrix, especially if it has to be computed repeatedly (e.g. in a loop). If the contents of a matrix are not 
changing, it may make sense to cache the value of the mean so that when we need it again, it can be looked up in the cache rather than 
recomputed. This function takes advantage of the scoping rules of the R language and how they can be manipulated to preserve state inside 
of an R object.
