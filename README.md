# Unidecode.jl
This package transforms the Unicode strings created by Latex or Emoji autocompletion back to UTF-8. 
It is useful to ensure that your saved data has a UTF-8 encoding.
```julia
using Unidecode
unidecode("α")
#> "alpha"
unidecode("🍫")
#> ":chocolate_bar:"
```

## Install

```julia
Pkg.clone("https://github.com/matthieugomez/Unidecode.jl")
```