module TestChinese

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Chinese Calendar" begin
    # Test Chinese New Year dates
    @test Holidays.Chinese.is_chinese_new_year(Date(2024, 2, 10)) == true
    @test Holidays.Chinese.is_chinese_new_year(Date(2025, 1, 29)) == true
    @test Holidays.Chinese.is_chinese_new_year(Date(2026, 2, 17)) == true
    @test Holidays.Chinese.is_chinese_new_year(Date(2024, 1, 1)) == false
    
    # Test Mid-Autumn Festival dates
    @test Holidays.Chinese.is_mid_autumn_festival(Date(2024, 9, 17)) == true
    @test Holidays.Chinese.is_mid_autumn_festival(Date(2025, 10, 6)) == true
    @test Holidays.Chinese.is_mid_autumn_festival(Date(2024, 12, 25)) == false
    
    # Test Dragon Boat Festival dates
    @test Holidays.Chinese.is_dragon_boat_festival(Date(2024, 6, 10)) == true
    @test Holidays.Chinese.is_dragon_boat_festival(Date(2025, 5, 31)) == true
    @test Holidays.Chinese.is_dragon_boat_festival(Date(2024, 7, 4)) == false
    
    # Test Qingming Festival dates
    @test Holidays.Chinese.is_qingming_festival(Date(2024, 4, 4)) == true
    @test Holidays.Chinese.is_qingming_festival(Date(2025, 4, 4)) == true
    @test Holidays.Chinese.is_qingming_festival(Date(2024, 5, 1)) == false
    
    # Test Lantern Festival dates (15 days after Chinese New Year)
    @test Holidays.Chinese.is_lantern_festival(Date(2024, 2, 24)) == true # 2024-02-10 + 14 days
    @test Holidays.Chinese.is_lantern_festival(Date(2025, 2, 12)) == true # 2025-01-29 + 14 days
    @test Holidays.Chinese.is_lantern_festival(Date(2024, 3, 1)) == false
    
    # Test fallback dates for years not in dictionary
    @test Holidays.Chinese.is_chinese_new_year(Date(2040, 2, 10)) == true  # Fallback
    @test Holidays.Chinese.is_mid_autumn_festival(Date(2040, 9, 17)) == true  # Fallback
end

end
