#!/usr/bin/env Rscript

# Settings for bookdown are in `_bookdown.yml` and settings for pandoc are in
# `chapters/01_intro.Rmd`.
bookdown::render_book("index.Rmd")

#rmarkdown::render("./index.Rmd", output_dir="./docs/", output_file="index.html")

