library(UserNetR)
library(ggnetwork)

ggnetplot <- function(Net = Bali)
{
  Net <- ggnetwork(Net, layout = "kamadakawai")
  ggplot(Net, aes(x, y, xend = xend, yend = yend)) +
    geom_edges(col = "tomato") +
    geom_nodes(aes(colour = vertex.names),size=2)+
    geom_nodetext_repel(aes(label = vertex.names), col = "black", size = 3) +
    theme_blank()
}
ggnetplot(Bali)
