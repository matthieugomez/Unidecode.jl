module Unidecode
    using REPL
    const emoji_dict = Dict((v => k) for (k, v) in REPL.REPLCompletions.emoji_symbols)
    function decode_emoji(x)
        x ∈ keys(emoji_dict) ? emoji_dict[x][2:end] : x
    end
    const latex_dict = Dict((v => k) for (k, v) in REPL.REPLCompletions.latex_symbols)
    function decode_latex(x)
          x ∈ keys(latex_dict) ? latex_dict[x][2:end] : x
    end
    function unidecode(x)
        decode_emoji(decode_latex(x))
    end
    export unidecode, decode_emoji, decode_latex
end
