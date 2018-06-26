#!/bin/zsh
except=(source/*title_page.md source/*statement.md source/*acknowledgements.md source/*table_of_contents.md source/*list_of_*.md source/*abbreviations.md source/*appendix*.md source/*references.md)
all=(source/*.md)
only=(${all:|except})

pandoc --lua-filter wordcount.lua $only
