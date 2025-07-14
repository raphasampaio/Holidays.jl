module TestEswatini

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Eswatini" begin
    calendar = Holidays.Eswatini()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end
