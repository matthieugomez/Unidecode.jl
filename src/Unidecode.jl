module Unidecode
    using REPL, Unicode
    const emoji_dict = Dict((v => k) for (k, v) in REPL.REPLCompletions.emoji_symbols)
    function decode_emoji(x)
        out = ""
        for char in graphemes(x)
            out = out * (char ∈ keys(emoji_dict) ? emoji_dict[char][2:end] : char)
        end
        return out
    end
    const latex_dict = Dict((v => k) for (k, v) in REPL.REPLCompletions.latex_symbols)
    function decode_latex(x)
        out = ""
        for char in graphemes(x)
            out = out * (char ∈ keys(latex_dict) ? latex_dict[char][2:end] : char)
        end
        return out
    end
    function unidecode(x)
        decode_emoji(decode_latex(x))
    end
    export unidecode, decode_emoji, decode_latex
end
