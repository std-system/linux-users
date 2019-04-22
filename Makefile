install:
	ansible-galaxy install \
		-p ./roles \
		-r ./requirements.yml

build:
	$(eval branch = $(shell git branch | grep \* | cut -d ' ' -f2))
	docker build \
		--build-arg branch=$(branch) \
		--rm  \
		--tag foobar \
		.
