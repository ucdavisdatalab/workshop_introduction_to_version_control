# Workshop: Introduction to Version Control
## UC Davis DataLab, Winter 2021

## Common links:

* Workshop reader: https://ucdavisdatalab.github.io/workshop_introduction_to_version_control/
* Workshop event page: https://datalab.ucdavis.edu/eventscalendar/introduction-to-version-control-with-git-2/

## Protocols:

The course reader is a live webpage, hosted through GitHub, where you can enter curriculum content and 
post it to a public-facing site for learners. Supplementary examples for other readings are also 
appropriate, but please refrain from using it as a space to host slides.

To make alterations to the reader:

1. Clone this repo.
2. Edit one of the existing chapter `.Rmd` files or create a new one. The
   chapter files are at the top level of the repository. They follow the naming
   scheme `##_topic-of-chapter.Rmd` (an exception to this naming scheme is
   `index.Rmd`, which contains the reader's index page). You should enter your
   text, links, and any supporting media directly into the file.
3. Run the script `gen_html.R` to regenerate the HTML files in the `docs/`
   directory. You can do this in the shell with `./gen_html.R` or in R with
   `source("gen_html.R")`.
4. Once you have made your changes, commit and push both the files you edited
   and the `docs/` directory. The live web page will update accordingly.

Follow the established style and formatting conventions in chapter files,
including those for linking to media on the `ds.lib` server. On the `ds.lib`
server, the course media directory is in the public-facing portion of the
DataLab website (`ds.lib.ucdavis.edu`). Outbound URLs that point to course
media should be given their own, sequentially numbered variable (`url1`,
`url2`, ..., `url26`, etc.) in the file `_common.R` and should then be called
from that variable in the body text of the chapter files.

Summary of important files:

* `docs` -- output HTML files
* `img` -- image files used in chapters
* `_bookdown.yml` -- bookdown settings (mostly where files are)
* `_common.R` -- R code to run at beginning of R session for each chapter
* `gen_html.R` -- R script to generate the HTML files
* `index.Rmd` -- index page
* `_output.yml` -- bookdown settings (mostly formatting)