module Unidecode
    using REPL
    
    const emoji_symbols_reverse = Dict((v => k) for (k, v) in REPL.REPLCompletions.emoji_symbols)
    const latex_symbols_reverse = Dict((v => k) for (k, v) in REPL.REPLCompletions.latex_symbols)
    function unidecode(x::String)
        if x ∈ keys(emoji_symbols_reverse)
            emoji_symbols_reverse[x][2:end]
        elseif x ∈ keys(latex_symbols_reverse)
            latex_symbols_reverse[x][2:end]
        else
            x
        end
    end
    export unidecode
end