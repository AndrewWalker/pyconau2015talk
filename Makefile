run:
	-rm -rf reveal.js/images
	cp -r images reveal.js/images
	cp index.html reveal.js
	cd reveal.js && grunt serve

init:
	cd reveal.js && npm install
