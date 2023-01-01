RESUME=node_modules/resume-cli/index.js
RESUME_OUT=docs/index.html
RESUME_THEME=slick

default: build

build:
	$(RESUME) export $(RESUME_OUT) -t $(RESUME_THEME)
	sed -i 's|http://bootswatch.com/lumen/bootstrap.min.css|https://bootswatch.com/3/lumen/bootstrap.min.css|' $(RESUME_OUT)
	sed -i 's|http://fonts.googleapis.com/css|https://fonts.googleapis.com/css|' $(RESUME_OUT)
	patch $(RESUME_OUT) social.patch
	sed -i 's|__break__|</p><p class="lead">|g' $(RESUME_OUT)
