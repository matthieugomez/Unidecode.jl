# Unidecode.jl
This package transforms the Unicode strings created by Latex or Emoji autocompletion back to UTF-8. 

You may want to use it before saving your data to a CSV file, so that it can be read by softwares that do not handle Unicode.
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