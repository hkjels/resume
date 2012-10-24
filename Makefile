
cv: index.html


index.html: Readme.html
	cat layout/head.html $^ layout/tail.html > $@

Readme.html: Readme.md
	markdown $^ > $@

clean: Readme.html index.html
	rm -f $^


.PHONY: cv clean

