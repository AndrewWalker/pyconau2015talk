#link:
	#-unlink $(CURDIR)/reveal.js/css/reveal.min.css
	#-unlink $(CURDIR)/reveal.js/js/reveal.min.js
	#-ln -f -s $(CURDIR)/reveal.js/css/reveal.css $(CURDIR)/reveal.js/css/reveal.min.css
	#-ln -f -s $(CURDIR)/reveal.js/js/reveal.js $(CURDIR)/reveal.js/js/reveal.min.js

build: clean
	pandoc -s -S -t revealjs slides.md -o slides.html -V revealjs-url:/reveal.js

serve:
	python -m SimpleHTTPServer 8000
