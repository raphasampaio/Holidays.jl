module TestMali

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Mali" begin
    calendar = Holidays.Mali()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end
