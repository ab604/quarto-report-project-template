# Render quarto 
library(quarto)
library(here)
# Quarto can't do relative paths in Windows yet.
# Compile and render the manuscript with today's date
quarto_render(here("index.qmd"), 
              output_file = paste0("manuscript-draft-",
                                        Sys.Date(),".docx"))
