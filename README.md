# Paper Tools for LaTeX

This is a collection of tools for writing papers, etc. using LaTeX. It is principally geared toward submissions to ApJ and friends. The includes a large bibTex database that can be continually updated and expanded, `masterDB.bib`.

## Using BibTeX database and bibtool

Generally, it's expected that the `masterDB.bib` will be used in conjunction with the very handy [bibtool](https://www.ctan.org/tex-archive/biblio/bibtex/utils/bibtool/?lang=en). Bibtool can be installed easily on Macs using [Homebrew](https://brew.sh). Once you have bibtool installed somewhere in your path, you need to set the environment variable `PTOOLSDIR` so that it points at this repo so that the `masterDB.bib` can be found. With bash, you can set this as follows:

```sh
export PTOOLSDIR=/path/to/paperTools
```

After that's all set, you can build a custom bib file for your current document using the included Makefile by executing `make bib`. This will use bibtool to read your aux file and then extract the needed references from `masterDB.bib` into a `ms.bib` in the document directory.

The `masterDB.bib` file is managed with [bibdesk](http://bibdesk.sourceforge.net) and specifies the reference key format as `firstauthor:year`, i.e., `couch:2015`. Duplicate keys are appended by letters, i.e., `couch:2015a` would be the _second_ paper in 2015 with a first author last name of Couch. Don't mess this up.
