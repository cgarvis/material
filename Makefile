SASSC = sass

# Build stylesheets
STYLESRC = styles/material.scss
STYLEOUT = dist/material.css

$STYLEOUT:
	-mkdir -p dist

.PHONY: styles
styles:
	$(SASSC) $(STYLESRC) $(STYLEOUT)

.PHONY: watch
watch:
	$(SASSC) --watch $(STYLESRC):$(STYLEOUT)

.PHONY: clean
clean:
	-rm -rf dist

.PHONY: all
all: styles
