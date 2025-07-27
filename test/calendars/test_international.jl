module TestInternational

using Dates
using Holidays
using Test

@testset "International" begin
    @test Holidays.International.is_new_years_day(Date(2024, 1, 1)) == true
    @test Holidays.International.is_new_years_day(Date(2024, 1, 2)) == false
    @test Holidays.International.is_new_years_day(Date(2025, 1, 1)) == true
    @test Holidays.International.is_new_years_day(Date(2025, 1, 2)) == false

    @test Holidays.International.is_womens_day(Date(2024, 3, 7)) == false
    @test Holidays.International.is_womens_day(Date(2024, 3, 8)) == true
    @test Holidays.International.is_womens_day(Date(2024, 3, 9)) == false

    @test Holidays.International.is_workers_day(Date(2024, 5, 1)) == true
    @test Holidays.International.is_workers_day(Date(2024, 5, 2)) == false
end

end
