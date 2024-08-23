function test_christian()
    @test Holidays.Christian.is_advent_sunday(Date(2023, 12, 3)) == true
    @test Holidays.Christian.is_advent_sunday(Date(2024, 12, 1)) == true
    @test Holidays.Christian.is_advent_sunday(Date(2025, 11, 30)) == true
    @test Holidays.Christian.is_advent_sunday(Date(2026, 11, 29)) == true

    return nothing
end
