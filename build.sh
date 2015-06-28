#!/bin/bash
ln -f -s reveal.js/css/reveal.css reveal.js/css/reveal.min.css
ln -f -s reveal.js/js/reveal.js reveal.js/js/reveal.min.js
pandoc -s -S -t revealjs slides.md -o slides.html -V revealjs-url:reveal.js
