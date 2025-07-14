module TestMauritania

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Mauritania" begin
    calendar = Holidays.Mauritania()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end
