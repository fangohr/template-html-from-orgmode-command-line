slides.html: notes.org org-files-to-html.el
	emacs notes.org --script ./org-files-to-html.el

test:
	py.test -v test.py
