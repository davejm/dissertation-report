# Dissertation Report Source

This source code is used to produce David Moodie's Ungergraduate dissertation PDF ("**Diagnosing Autism using Deep Learning and Brain FMRI**").

Many tools and languages are used, including: Pandoc, Latex, Python, Lua and Markdown.

The Pandoc template is based on https://github.com/tompollard/phd_thesis_markdown and has been customised quite a bit (discounting the actual content of course).

## Installing the requirements

Linux was used to build the document, however, other operating systems could also be used.

1. Install Python. I recommend installing the Anaconda python distribution (the Python 3 version) or miniconda.

2. Install a Latex distribution. E.g. MacTeX for MacOS or texlive on linux. Note that a recent version of latex is necessary and that the texlive package available on Linux distribution repositories can be quite out of date. Therefore it is recommended to install directly from https://www.tug.org/texlive/.

3. Install Pandoc (and pandoc citeproc if not included). This can be installed through your distro repository, but again, it is often quite out of date. It is better to install using conda (`conda install -c conda-forge pandoc`) or cabal (the Haskell package manager).

4. Install pandoc-csv2table (https://github.com/baig/pandoc-csv2table) with `cabal install pandoc-csv2table`. You will also need a version of Haskell for this. You can get Haskell by using the `stack` tool or the haskell-platform package. Note that at the time of writing, the pandoc-csv2table package will not compile when using Pandoc v2 (see [this issue](https://github.com/baig/pandoc-csv2table/issues/23)). To solve this, you can temporarily install Pandoc v1, install pandoc-csv2table, which will compile against Pandoc v1, then reinstall Pandoc v2. The compiled binary will still work with Pandoc v2.

5. Install the pandoc-latex-fontsize filter with `pip install pandoc-latex-fontsize`.


## Building

The simplest way to build the output PDF is with the command `make pdf`.

Alternatively, you can watch for changes in the markdown documents and automatically build the PDF when a change is detected. To do this, you need a version of NodeJS. When you have node, run `npm install` from the project directoy to install dependencies. Then to start watching the files, run `npm run watch`.

