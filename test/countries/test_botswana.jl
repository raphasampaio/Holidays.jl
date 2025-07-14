module TestBotswana

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Botswana" begin
    calendar = Holidays.Botswana()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end
