rhl=replicate_hadley_logo

view_html: $(rhl).html
	    xdg-open $<

$(rhl).html: $(rhl).md
	pandoc $<  -o  $@

$(rhl).md: $(rhl).Rmd
	Rscript -e  "knitr::knit('$<','$@')"
