module TestBarbados

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Barbados" begin
    calendar = Holidays.Barbados()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end
