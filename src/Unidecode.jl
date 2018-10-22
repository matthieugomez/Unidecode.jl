module Unidecode
    emoji_file = joinpath(JULIA_BINDIR, "..", "share", "julia", "base", "repl", "emoji_symbols.jl")
    latex_file = joinpath(JULIA_BINDIR, "..", "share", "julia", "base", "repl", "latex_symbols.jl")
    if !isfile(emoji_file)
        emoji_file = joinpath(JULIA_BINDIR, "..", "share", "julia", "base", "emoji_symbols.jl")
        latex_file = joinpath(JULIA_BINDIR, "..", "share", "julia", "base", "latex_symbols.jl")
    end
    include(emoji_file)
    include(latex_file)
    const emoji_symbols_reverse = Dict((v => k) for (k, v) in emoji_symbols)
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