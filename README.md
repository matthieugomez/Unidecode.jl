[![Build status](https://github.com/matthieugomez/Unidecode.jl/workflows/CI/badge.svg)](https://github.com/matthieugomez/Unidecode.jl/actions)


# Unidecode.jl
This package convers the Unicode strings created by Latex or Emoji autocompletion back to the original UTF-8 string. 
Apply the function before writing your data in a CSV file, so that it can be read by softwares that do not handle Unicode.

## Examples
```julia
using Unidecode
unidecode("α")
#> "alpha"
unidecode("🍫")
#> ":chocolate_bar:"
```

## Installation
The package is registered in the [`General`](https://github.com/JuliaRegistries/General) registry and so can be installed at the REPL with `] add Unidecode`.