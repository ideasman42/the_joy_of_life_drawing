
all:
	sphinx-build -b html . ./html
	echo "firefox ./html/readme.html"

pdf:
	sphinx-build -b latex . ./laytex
	make -C ./laytex

clean:
	rm -rf html
