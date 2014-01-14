
PROF = dev,srcmap
# PROF = dev,test,srcmap
# PROF = prod,test
# PROF = prod

CLJSBUILD = client

all: autocompile

run: openbrowser autocompile

openbrowser:
	(sleep 1 && open todomvc.html) &

autocompile:
	lein with-profile $(PROF) cljsbuild auto $(CLJSBUILD)

clean:
	lein -o clean
