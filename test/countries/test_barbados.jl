module TestBarbados

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Barbados" begin
    calendar = Holidays.Barbados()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end
