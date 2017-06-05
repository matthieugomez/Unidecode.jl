# Unidecode.jl
This package transforms the Unicode strings created by Latex or Emoji autocompletion back to UTF-8. 
This package is useful to save your data with a UTF-8 encoding.
```julia
using Unideecode
unidecode("α")
#> "alpha"
unidecode("🍫")
#> ":chocolate_bar:"
```