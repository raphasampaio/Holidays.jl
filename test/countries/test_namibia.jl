module TestNamibia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Namibia" begin
    calendar = Holidays.Namibia()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end
