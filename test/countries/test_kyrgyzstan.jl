module TestKyrgyzstan

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Kyrgyzstan" begin
    calendar = Holidays.Kyrgyzstan()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end
