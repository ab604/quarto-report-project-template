# Render quarto 
library(quarto)
library(here)
# Compile and render the manuscript with today's date using Pathmeswaran's fix.
quarto_render(here("index.qmd"),
              output_file = here("drafts",
                                 paste0("manuscript-draft-", Sys.Date(), ".docx")))
