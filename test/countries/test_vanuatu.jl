module TestVanuatu

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Vanuatu" begin
    calendar = Holidays.Vanuatu()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end
