MAIN=.
#RELEASE_CSS="$(MAIN)/css/app.css"
src=$(MAIN)/dev
#RELEASE_JS="$(MAIN)/js/app.js"
#SOURCE_JS="$(MAIN)/dev/app.js"
#build:
#	cpp -P $(SOURCE_CSS) | sass --watch $(RELEASE_CSS)
#	cpp -P $(SOURCE_CSS) | uglifyjs > $(RELEASE_JS)
#
#release:
#	cpp $(MAIN) | coffee -s -p | uglifyjs > $(RELEASE_MAIN)
#
#clean:
#	rm -f $(SOURCE_CSS)
#	rm -f $(SOURCE_JS)


# Set the source directory
materialize = $(MAIN)/node_modules/materialize-css

all: app/app.css app/app.js fonts/*

app/app.css:
	sass --scss $(src)/app.scss > css/app.css

app/app.js:
	uglifyjs $(materialize)/bin/materialize.js $(src)/app.js > js/app.js

fonts/*:
	cp $(materialize)/font/roboto/* font/roboto/

clean:
	rm -f css/app.css
	rm -f js/app.js
	rm -f fonts/*
