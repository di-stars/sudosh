COPYRIGHT_SOFTWARE:=Sudo Shell
COPYRIGHT_SOFTWARE_DESCRIPTION:=Sudo Shell provides a login shell that can be used to audit sessions

PATH:=$(PATH):$(GOPATH)/bin

include $(shell curl --silent -O "https://raw.githubusercontent.com/cloudposse/build-harness/master/templates/Makefile.build-harness"; echo Makefile.build-harness)
- make travis:docker-tag-and-push

setup:
	make init go:deps-build go:deps-dev go:deps go:lint 

build:
	make go:build