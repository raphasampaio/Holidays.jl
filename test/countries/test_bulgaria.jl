module TestBulgaria

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Bulgaria" begin
    calendar = Holidays.Bulgaria()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end
