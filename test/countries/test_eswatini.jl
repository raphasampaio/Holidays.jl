module TestEswatini

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Eswatini" begin
    calendar = Holidays.Eswatini()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end
