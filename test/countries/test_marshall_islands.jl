module TestMarshallIslands

using Dates
using Holidays
using Test

include("../util.jl")

@testset "MarshallIslands" begin
    calendar = Holidays.MarshallIslands()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end
