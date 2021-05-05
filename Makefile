
launch_debug:
	bundle exec jekyll serve -H 0.0.0.0 -P 5000

build:
	bundle exec jekyll build

publish: build
	rm -rf ../mruths.github.io/*
	cp -r _site/* ../mruths.github.io
	cd ../mruths.github.io; git add -A; git commit -a -m "Updated website"; git push
