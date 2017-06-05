module Unidecode
    include(joinpath(JULIA_HOME, "..", "share", "julia", "base", "emoji_symbols.jl"))
    const emoji_symbols_reverse = Dict((v => k) for (k, v) in emoji_symbols)
    include(joinpath(JULIA_HOME, "..", "share", "julia", "base", "latex_symbols.jl"))
    const latex_symbols_reverse = Dict((v => k) for (k, v) in latex_symbols)
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