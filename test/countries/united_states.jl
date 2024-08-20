function test_united_states()
    country = Holidays.UnitedStates()

    @testset "New Year's Day" begin
        @test is_holiday(country, Date(2019, 12, 31)) == false
        @test is_holiday(country, Date(2020, 1, 1)) == true
        @test is_holiday(country, Date(2020, 1, 2)) == false
    end

    @testset "Independence Day" begin
        @test is_holiday(country, Date(2020, 7, 3)) == false
        @test is_holiday(country, Date(2020, 7, 4)) == true
        @test is_holiday(country, Date(2020, 7, 5)) == false
    end

    @testset "Labor Day" begin
        Holidays.is_labor_day(country, Date(2023, 9, 4)) == true
        Holidays.is_labor_day(country, Date(2024, 9, 2)) == true
        Holidays.is_labor_day(country, Date(2025, 9, 1)) == true
        Holidays.is_labor_day(country, Date(2026, 9, 7)) == true
    end

    @testset "Thanksgiving" begin
        @test is_holiday(country, Date(2023, 11, 22)) == false
        @test is_holiday(country, Date(2023, 11, 23)) == true
        @test is_holiday(country, Date(2023, 11, 24)) == false

        @test is_holiday(country, Date(2024, 11, 27)) == false
        @test is_holiday(country, Date(2024, 11, 28)) == true
        @test is_holiday(country, Date(2024, 11, 29)) == false

        @test is_holiday(country, Date(2025, 11, 26)) == false
        @test is_holiday(country, Date(2025, 11, 27)) == true
        @test is_holiday(country, Date(2025, 11, 28)) == false

        @test is_holiday(country, Date(2026, 11, 25)) == false
        @test is_holiday(country, Date(2026, 11, 26)) == true
        @test is_holiday(country, Date(2026, 11, 27)) == false
    end

    return nothing
end
