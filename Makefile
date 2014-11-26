SASSC = sass

# Build stylesheets
STYLESRC = styles/material.scss
STYLEOUT = css/material.css

$STYLEOUT:
	-mkdir -p css

.PHONY: styles
styles:
	$(SASSC) $(STYLESRC) $(STYLEOUT)

.PHONY: watch
watch:
	$(SASSC) --watch $(STYLESRC):$(STYLEOUT)

.PHONY: clean
clean:
	-rm -rf css

.PHONY: all
all: styles
