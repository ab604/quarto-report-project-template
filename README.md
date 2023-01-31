# A minimal template for creating scientific manuscript using Quarto

This repo has a template for a minimal scientific manuscript using RStudio and [Quarto](https://quarto.org/).

There may be better solutions, but this is a minimal example for creating a scientific manuscript using R and quarto and outputting a MS Word document for working with collaborators who only use MS Office. It should be simple enough to amend for `html` or `pdf` outputs.

## Inputs

-   `_quarto.yml` : the yaml file contains the configuration to be used across the quarto documents.
-   `arial_template.docx` : MS Word document defining the fonts and heading styles.
-   `plos.csl` : Citation Style Language (CSL) document for PLoS referencing style. All available styles [here](https://github.com/citation-style-language/styles).
-   `img` : folder with a picture of Bibi for use as a figure in the manuscript.
-   `index.qmd` : this contains R chunks for the quarto files that will be combined to create the final manuscript. The use of child documents I got from [Jeremy Perkels example for html reports](https://jperkel.github.io/computed_quarto_manuscript/).
-   The individual quarto files for each part of the manuscript:
    -   `title-page.qmd` : title, author information etc.
    -   `abstract.qmd` : the abstract text.
    -   `body.qmd`: the main body of the manuscript
    -   `materials-and-methods.qmd` : all the methods
    -   `references.qmd` : the manuscript references
-  `references.bib` : bibtex file of the references.
- `drafts` : folder for the rendered `.docx` output 

## Rendering

Quarto can't render to relative or absolute paths at the time of writing, plus I wanted to automatically date the output, so I created a R script that when sourced renders the document and then moves it to the `drafts` folder: `render_manuscript.R`.
