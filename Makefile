all:
	version=$(version) eval "echo \"$$(<Dockerfile)\"" 2> /dev/null | docker build -t docteurklein/firefox:$(version) -

