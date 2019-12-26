PANDOC_CMD=pandoc --pdf-engine=xelatex -V lang=ru-RU -V 'mainfont=Noto Serif'

spec.pdf: spec.md
	#pandoc $< -t beamer -o $@
	pandoc $< --pdf-engine=xelatex -t beamer -V 'mainfont=Noto Serif' -o $@
%.pdf: %.md
	$(PANDOC_CMD) $< -o $@
