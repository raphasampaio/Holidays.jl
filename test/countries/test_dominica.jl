module TestDominica

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Dominica" begin
    calendar = Holidays.Dominica()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end
