# abstract type Country end
# abstract type Brazil <: Country end
# abstract type BrazilRioDeJaneiro <: Brazil end
# abstract type BrazilSaoPaulo <: Brazil end

# function is_holiday(::Type{Brazil})
#     @show "Checking holiday in Brazil..."
#     return false
# end

# function is_holiday(::Type{BrazilRioDeJaneiro})
#     if is_holiday(Brazil)
#         return true
#     end
#     @show "Checking holiday in Rio de Janeiro..."
#     return false
# end



# @show Brazil

using Holidays

using Dates
using Test

function test_all()
    @show is_holiday(Regions.Brazil, Date(2024, 01, 20))
    @show is_holiday(Regions.BrazilRioDeJaneiro, Date(2024, 01, 20))
    @show is_holiday(Regions.BrazilRioDeJaneiroRioDeJaneiro, Date(2024, 01, 20))

    return nothing
end

test_all()