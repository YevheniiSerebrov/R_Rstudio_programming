####### assess ####################
# k-means
assess = read.table ( "assess.dat", header = T)
wss = (nrow (assess[, 3: 12]) - 1) * sum (apply (assess [, 3: 12], 2, var))
for (i in 2:15) wss [i] = kmeans (assess [, 3: 12],
                                  centers = i) $ tot.withinss
plot(1:15, wss, type = "b", xlab = "Number of Clusters",
     ylab = "Within groups sum of squares")

plot(1:17, clust.assess$height)

# hierarchical
d = dist (assess) # 
d1=na.omit (d)
d1

clust.assess = hclust (d1, "ward.D")
plot(clust.assess)
rect.hclust (clust.assess, k = 4, border = "red")
rect.hclust (clust.assess, k = 5, border = "red")
plot(1:17, clust.assess$height) 
###### prtein ######

protein = read.csv2 ( "Protein Consumption in Europe.csv", header = T, sep = ";")
protein
#standartization isn`t needed, because datas are estimated in the same scales`
d = dist (protein)
d2=na.omit(d)
clust.protein = hclust (d2, "ward.D")
plot(clust.protein)
rect.hclust (clust.protein, k = 4, border = "red")
