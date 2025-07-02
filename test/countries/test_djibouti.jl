module TestDjibouti

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Djibouti" begin
    calendar = Holidays.Djibouti()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end
