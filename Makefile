all:
	version=$(version) eval "echo \"$$(<Dockerfile)\"" 2> /dev/null | docker build -t docteurklein/firefox:$(version) -

push: all
	git checkout -b $(version)
	version=$(version) eval "echo \"$$(<Dockerfile)\"" 2> /dev/null > Dockerfile
	git commit -am"auto-build $(version)"
	git tag -f $(version) `git rev-parse HEAD`
	git checkout -
	git branch -D $(version)
	git push origin $(version)
