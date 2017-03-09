DIST=dist
BASE=flowplayer.speed-menu
GIT_DESC=${shell git describe }

min:
	@ mkdir -p $(DIST)
	@ sed -e 's/\$$GIT_DESC\$$/$(GIT_DESC)/' $(BASE).js | npm run min

dist: min
	@ sed -e 's/\$$GIT_DESC\$$/$(GIT_DESC)/' $(BASE).js > $(DIST)/$(BASE).js
	@ cp LICENSE.md $(DIST)/

clean:
	@ rm -rf $(DIST)

deps:
	@ npm install
