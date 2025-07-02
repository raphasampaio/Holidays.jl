module TestGregorian

using Dates
using Holidays
using Test

@testset "Gregorian" begin
    @test Holidays.Gregorian.is_new_years_day(Date(2024, 1, 1)) == true
    @test Holidays.Gregorian.is_new_years_day(Date(2024, 1, 2)) == false
    @test Holidays.Gregorian.is_new_years_day(Date(2025, 1, 1)) == true
    @test Holidays.Gregorian.is_new_years_day(Date(2025, 1, 2)) == false
end

end
