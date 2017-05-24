RESUME=node_modules/resume-cli/index.js
RESUME_OUT=docs/index.html
RESUME_THEME=slick

default: build

build:
	$(RESUME) export $(RESUME_OUT) -t $(RESUME_THEME)
