module TestNorfolkIsland

using Dates
using Holidays
using Test

include("../util.jl")

@testset "NorfolkIsland" begin
    calendar = Holidays.NorfolkIsland()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end
