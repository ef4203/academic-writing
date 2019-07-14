echo \# References That I Want To Cite > books.md
cat mybooks.bib | grep -E "title|author" | tac | sed 's/  //g;s/^ //;s/={/= {/;s/^author = {/\n/;s/},$//;s/title = {/- /' >> books.md
