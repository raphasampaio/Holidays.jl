module TestAfghanistan

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Afghanistan" begin
    calendar = Holidays.Afghanistan()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end
