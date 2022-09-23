all: clean run

clean: .PHONY
	rm -rf _site/

run: .PHONY
	bundle exec jekyll serve --watch --incremental

.PHONY:
