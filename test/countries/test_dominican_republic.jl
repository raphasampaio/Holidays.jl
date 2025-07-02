module TestDominicanRepublic

using Dates
using Holidays
using Test

include("../util.jl")

@testset "DominicanRepublic" begin
    calendar = Holidays.DominicanRepublic()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end
