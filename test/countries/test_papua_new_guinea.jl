module TestPapuaNewGuinea

using Dates
using Holidays
using Test

include("../util.jl")

@testset "PapuaNewGuinea" begin
    calendar = Holidays.PapuaNewGuinea()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end
