module TestEquatorialGuinea

using Dates
using Holidays
using Test

include("../util.jl")

@testset "EquatorialGuinea" begin
    calendar = Holidays.EquatorialGuinea()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end
