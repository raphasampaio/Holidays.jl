module TestLibya

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Libya" begin
    calendar = Holidays.Libya()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end
