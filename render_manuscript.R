# Render quarto 
library(quarto)
library(here)
# Quarto can't do relative paths in Windows yet.
# Compile and render the manuscript with today's date
quarto_render(here("index.qmd"), 
              output_file = paste0("manuscript-draft-",
                                        Sys.Date(),".docx"))

# Move it to the drafts folder
fs::file_move(paste0("manuscript-draft-",
                     Sys.Date(),".docx"),paste0("drafts/manuscript-draft-",
                                                Sys.Date(),".docx"))