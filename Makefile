
cv: index.html no/index.html

index.html: Readme.md
	markdown $< | cat layout/head.html - layout/tail.html > $@

no/index.html: no/Readme.md
	markdown $< | cat layout/head.html - layout/tail.html > $@

clean:
	rm -f index.html no/index.html


.PHONY: cv clean

