module TestKyrgyzstan

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Kyrgyzstan" begin
    calendar = Holidays.Kyrgyzstan()

    holidays = Date[]

    test_holidays(calendar, 2024, holidays)

    return nothing
end

end
