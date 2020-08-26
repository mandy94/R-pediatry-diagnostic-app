# vrati header
colnames(reformated)
# za dati header, vrati kolonu
i = 1
reformated[c(colnames(reformated)[i])]
# za red isto, samo dodaj zarez
reformated[c(rownames(reformated)[i]),]

library(graph)
# napravi graf
gr =new("graphNEL", nodes=nodes , edgemode = "directed")

# skinemo duple
for(i in 1:17)
   gr = addEdge(colnames(reformated)[i],"Dijagnoza", gr)
gr= removeEdge("Dijagnoza", "Dijagnoza", gr)
plot(gr)

# Dobijanej bolesti na osnovu simptoma
query = FactorQuery(tree.init, vars = c("Temperatura", "Kasalj", "Dijagnoza"), mode="joint")
rez = subset(query, query$Temperatura== TRUE & query$Kasalj == TRUE)
rez[order(-rez$prob),]