# DDC

Data Density based Clustering

Hyde, R.; Angelov, P., "Data density based clustering," Computational Intelligence (UKCI), 2014 14th UK Workshop on , vol., no., pp.1,7, 8-10 Sept. 2014

doi: 10.1109/UKCI.2014.6930157

Downloadable from: http://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=6930157&isnumber=6930143

Files:

DDC_ver01_1.m - DDC function
DDC_Test - basic wrapper to run the test the DDC algorithm on 2D data and plot the results.
distinguishable_colors.m - function to create multiple colours in an easily distinguishable order. This is not my work and is downloadable from Matlab's file exchange. For details see the file headers.

gaussian5000.csv - data file containg 5 random clusters of gaussian distributed data of 5000+ samples for cluster. This is the type of data distributions best suited to DDC.

DS2.csv - standard test dataset of arbitrarily shaped data groups. Although DDC will created correct, pure clusters this data shows the limitations of DDC in working with non-standard data distrbutions. (To work with this type of data, see DDCAS, Data Density based Clustering for Arbitrary Shapes.)
