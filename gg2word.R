# display a ggplot in a word document quickly 

gg2word <- function( plot, directory_name) {
  
  dims<- c(10, 4)
  dims[1]
  
  plot_name <- deparse(substitute(plot))
  
  ggsave(
    paste0(as.character(directory_name),"/",as.character(plot_name),".png"),
    suppressWarnings(plot + theme(plot.background = element_rect(fill = "white", color = "black", linewidth = 0.5))),
    width = dims[1],
    height = dims[2],
    dpi = 1000
  )
  
  #Include the plot in the Quarto document
  knitr::include_graphics(paste0(as.character(directory_name),"/",as.character(plot_name),".png"))
  
  
}
