module TestMauritius

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Mauritius" begin
    calendar = Holidays.Mauritius()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end
