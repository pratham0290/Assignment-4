#Q2.c
ggnetplot <- function(Net = Bali)
{
  Net <- ggnetwork(Net, layout = "kamadakawai")
  ggplot(Net, aes(x, y, xend = xend, yend = yend)) +
    geom_edges(col = "red") +
    geom_nodes(aes(colour = role),size=2)+
    geom_nodetext_repel(aes(label =paste(role)), col = "black", size = 3)+
    guides(fill = "Role")
}
ggnetplot(Bali)
