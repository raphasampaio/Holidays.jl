module TestSaintKittsAndNevis

using Dates
using Holidays
using Test

include("../util.jl")

@testset "SaintKittsAndNevis" begin
    calendar = Holidays.SaintKittsAndNevis()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end
