[![Build Status](https://travis-ci.org/matthieugomez/Unidecode.jl.svg?branch=master)](https://travis-ci.org/matthieugomez/Unidecode.jl)


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