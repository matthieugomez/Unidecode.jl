# Unidecode.jl
This package transforms the Unicode strings created by Latex or Emoji autocompletion back to UTF-8. 

Use it before saving your data to a CSV file.
```julia
using Unidecode
unidecode("α")
#> "alpha"
unidecode("🍫")
#> ":chocolate_bar:"
```

## Install

```julia
using Pkg
Pkg.add("https://github.com/matthieugomez/Unidecode.jl")
```