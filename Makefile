# oat - Build System
# Requires: esbuild

.PHONY: dist css js clean size

CSS_FILES = src/css/00-layers.css \
            src/css/01-reset.css \
            src/css/02-theme.css \
            src/css/03-base.css \
            src/css/animations.css \
            src/css/button.css \
            src/css/form.css \
            src/css/table.css \
            src/css/progress.css \
            src/css/spinner.css \
            src/css/grid.css \
            src/css/card.css \
            src/css/alert.css \
            src/css/badge.css \
            src/css/accordion.css \
            src/css/tabs.css \
            src/css/dialog.css \
            src/css/dropdown.css \
            src/css/toast.css \
            src/css/sidebar.css \
            src/css/skeleton.css \
            src/css/tooltip.css \
            src/css/utilities.css

dist: css js

css:
	@mkdir -p dist
	@cat $(CSS_FILES) > dist/oat.css
	@esbuild dist/oat.css --minify --outfile=dist/oat.min.css
	@cp dist/oat.min.css docs/static/oat.min.css
	@echo "CSS: $$(wc -c < dist/oat.min.css | tr -d ' ') bytes (minified)"

js:
	@mkdir -p dist
	@cat src/js/base.js src/js/tabs.js src/js/dropdown.js src/js/toast.js src/js/tooltip.js > dist/oat.js
	@esbuild dist/oat.js --minify --outfile=dist/oat.min.js
	@cp dist/oat.min.js docs/static/oat.min.js
	@echo "JS: $$(wc -c < dist/oat.min.js | tr -d ' ') bytes (minified)"

clean:
	@rm -rf dist
	@echo "Cleaned dist/"

size: dist
	@echo ""
	@echo "Bundle:"
	@echo "CSS (source):   $$(wc -c < dist/oat.css | tr -d ' ') bytes"
	@echo "CSS (minified): $$(wc -c < dist/oat.min.css | tr -d ' ') bytes"
	@echo "JS (source):    $$(wc -c < dist/oat.js | tr -d ' ') bytes"
	@echo "JS (minified):  $$(wc -c < dist/oat.min.js | tr -d ' ') bytes"
	@echo ""
	@echo "Gzipped:"
	@gzip -9 -c dist/oat.min.css | wc -c | xargs -I {} echo "CSS (gzipped):  {} bytes"
	@gzip -9 -c dist/oat.min.js | wc -c | xargs -I {} echo "JS (gzipped):   {} bytes"
