module TestIsrael

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Israel" begin
    calendar = Holidays.Israel()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end
