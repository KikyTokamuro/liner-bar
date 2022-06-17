MINIFYCSS=uglifycss
MINIFYJS=uglifyjs
SRCDIR=./src
DISTDIR=./dist

dist:
	[ -d $(DISTDIR) ] || mkdir $(DISTDIR)	
	$(MINIFYJS) -c -o $(DISTDIR)/liner-bar.min.js  $(SRCDIR)/liner-bar.js
	$(MINIFYCSS) --output $(DISTDIR)/liner-bar.min.css $(SRCDIR)/liner-bar.css

clean:
	rm -f $(DISTDIR)/*.min.*
