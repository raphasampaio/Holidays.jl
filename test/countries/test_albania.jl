module TestAlbania

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Albania" begin
    calendar = Holidays.Albania()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end
