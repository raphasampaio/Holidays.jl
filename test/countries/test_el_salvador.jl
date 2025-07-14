module TestElSalvador

using Dates
using Holidays
using Test

include("../util.jl")

@testset "ElSalvador" begin
    calendar = Holidays.ElSalvador()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end
