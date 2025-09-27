PREFIX ?= /usr/local

install:
	@# create destination directory and copy the whole drop-in template
	install -d ${PREFIX}/libexec/um-htpc
	cp -av usr/. ${PREFIX}/.
