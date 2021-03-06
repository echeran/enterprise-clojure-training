#!/bin/sh
set -e
FLAGS=--destination-dir=site

asciidoctor ${FLAGS} docs/index.adoc docs/manual.adoc
asciidoctor-pdf ${FLAGS} docs/manual.adoc
asciidoctor-revealjs ${FLAGS} docs/slides.adoc docs/advanced-topics.adoc docs/advanced-topics.adoc
