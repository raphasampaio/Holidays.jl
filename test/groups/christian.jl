function test_easter_sunday()
    @test Holidays.Christian.is_easter(Date(2019, 4, 21)) == true
    @test Holidays.Christian.is_easter(Date(2020, 4, 12)) == true
    @test Holidays.Christian.is_easter(Date(2021, 4, 4)) == true
    @test Holidays.Christian.is_easter(Date(2022, 4, 17)) == true
    @test Holidays.Christian.is_easter(Date(2023, 4, 9)) == true
    @test Holidays.Christian.is_easter(Date(2024, 3, 31)) == true
    @test Holidays.Christian.is_easter(Date(2025, 4, 20)) == true
    @test Holidays.Christian.is_easter(Date(2026, 4, 5)) == true
    @test Holidays.Christian.is_easter(Date(2027, 3, 28)) == true
    @test Holidays.Christian.is_easter(Date(2028, 4, 16)) == true
    @test Holidays.Christian.is_easter(Date(2029, 4, 1)) == true
    @test Holidays.Christian.is_easter(Date(2030, 4, 21)) == true

    return nothing
end

function test_good_friday()
    @test Holidays.Christian.is_good_friday(Date(2019, 4, 19)) == true
    @test Holidays.Christian.is_good_friday(Date(2020, 4, 10)) == true
    @test Holidays.Christian.is_good_friday(Date(2021, 4, 2)) == true
    @test Holidays.Christian.is_good_friday(Date(2022, 4, 15)) == true
    @test Holidays.Christian.is_good_friday(Date(2023, 4, 7)) == true
    @test Holidays.Christian.is_good_friday(Date(2024, 3, 29)) == true
    @test Holidays.Christian.is_good_friday(Date(2025, 4, 18)) == true
    @test Holidays.Christian.is_good_friday(Date(2026, 4, 3)) == true
    @test Holidays.Christian.is_good_friday(Date(2027, 3, 26)) == true
    @test Holidays.Christian.is_good_friday(Date(2028, 4, 14)) == true
    @test Holidays.Christian.is_good_friday(Date(2029, 3, 30)) == true
    @test Holidays.Christian.is_good_friday(Date(2030, 4, 19)) == true

    return nothing
end

function test_christian()
    @testset "Good Friday" begin
        test_good_friday()
    end

    @testset "Easter Sunday" begin
        test_easter_sunday()
    end

    return nothing
end
