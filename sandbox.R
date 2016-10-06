library(dplyr)
library(stringdist)

lstString <- c("adesso","provo","qualche","stringa","e","vediamo","che","succede")
dst <- stringdistmatrix(lstString,lstString,method="jw")
rownames(dst) <- lstString
colnames(dst) <- lstString
lst_hc <- hclust(as.dist(dst))

lstString2 <- c("semaforo","semaforo rosso","passato al semaforo",
              "telefonino","usava il telefono","cellulare",
              "velocità eccessiva","velocità","eccesso di velocità")
dst2 <- stringdistmatrix(lstString2,lstString2,method="jw")
rownames(dst2) <- lstString2
colnames(dst2) <- lstString2
lst_hc2 <- hclust(as.dist(dst2))

dst3 <- stringdistmatrix(lstString2,lstString2,method="cosine")
rownames(dst3) <- lstString2
colnames(dst3) <- lstString2
lst_hc3 <- hclust(as.dist(dst3))

ds <- cutree(lst_hc3,h=0.4)
