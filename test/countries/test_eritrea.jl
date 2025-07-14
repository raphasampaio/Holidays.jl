module TestEritrea

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Eritrea" begin
    calendar = Holidays.Eritrea()

    holidays = Date[]

    test_holidays(calendar, holidays)

    return nothing
end

end
