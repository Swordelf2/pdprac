PANDOC_CMD=pandoc --pdf-engine=xelatex -V lang=ru-RU -V 'mainfont=Noto Serif'

%.pdf: %.md
	$(PANDOC_CMD) $< -o $@
