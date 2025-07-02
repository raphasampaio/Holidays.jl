module TestEquatorialGuinea

using Dates
using Holidays
using Test

include("../util.jl")

@testset "EquatorialGuinea" begin
    calendar = Holidays.EquatorialGuinea()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end
