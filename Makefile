clean:
	rm -fv ./output/*
build-pdf:
	pandoc index.md \
		--pdf-engine=xelatex \
		-V colorlinks=true \
		-V linkcolor=blue  \
		-o ./output/peter_fisher_cv.pdf

build-docx:
	pandoc index.md \
		-o ./output/peter_fisher_cv.docx

build-txt:
	pandoc index.md \
		-o ./output/peter_fisher_cv.txt

build-html:
	pandoc index.md \
		-o ./output/peter_fisher_cv.html

build: clean build-pdf build-docx build-txt build-html
