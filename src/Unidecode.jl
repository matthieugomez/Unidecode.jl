module Unidecode
    using REPL.REPLCompletions: emoji_symbols, latex_symbols
    using Unicode: graphemes
    const emoji_dict = Dict((v => k[2:end]) for (k, v) in emoji_symbols)
    const latex_dict = Dict((v => k[2:end]) for (k, v) in latex_symbols)
    # path for characters
    decode_emoji(c::Char) = get(emoji_dict, c, c)
    decode_latex(c::Char) = get(latex_dict, c, c)
    
    # path for abstract strings
    decode_emoji(x) = string((get(emoji_dict, c, c) for c in graphemes(x))...)
    decode_latex(x) = string((get(latex_dict, c, c) for c in graphemes(x))...)
    
    unidecode(x) = decode_emoji(decode_latex(x))

    export decode_emoji, decode_latex, unidecode
end
