module TestCoteDIvoire

using Dates
using Holidays
using Test

include("../util.jl")

@testset "CoteDIvoire" begin
    calendar = Holidays.CoteDIvoire()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end
