module TestMyanmar

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Myanmar" begin
    calendar = Holidays.Myanmar()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end
