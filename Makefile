
cv: index.html


index.html: Readme.md
	markdown $< | cat layout/head.html - layout/tail.html > $@

clean:
	rm -f *.html


.PHONY: cv clean

