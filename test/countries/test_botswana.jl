module TestBotswana

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Botswana" begin
    calendar = Holidays.Botswana()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end
