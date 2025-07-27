module TestTokelau

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Tokelau" begin
    calendar = Holidays.Tokelau()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end
