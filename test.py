import os


def test_me():
    os.system("rm -f slides.html")
    command = "emacs notes.org --script ./org-files-to-html.el"
    os.system(command)
    assert os.path.exists("notes.html")


