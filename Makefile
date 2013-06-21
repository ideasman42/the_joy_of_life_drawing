
all:
	sphinx-build -b html . ./html
	echo "firefox ./html/readme.html"

pdf:
	sphinx-build -b latex . ./latex
	make -C ./latex

clean:
	rm -rf html

jpg:
	mogrify -background white -layers flatten -format jpg images/*.png
