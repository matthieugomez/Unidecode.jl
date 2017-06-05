module LatexDecode
const emoji_symbols_reverse = Dict((v=>k) for (k, v) in emoji_symbols)
const latex_symbols_reverse = Dict((v=>k) for (k, v) in latex_symbols)
function unidecode(x::String)
    if x ∈ emoji_symbols_reverse
        emoji_symbols_reverse[x]
    elseif x ∈ latex_symbols_reverse
        latex_symbols_reverse[x]
    else
        x
    end
end