module TestChinese

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Chinese" begin
    @test Holidays.Chinese.is_chinese_new_year(Date(2024, 2, 10)) == true
    @test Holidays.Chinese.is_chinese_new_year(Date(2025, 1, 29)) == true
    @test Holidays.Chinese.is_chinese_new_year(Date(2026, 2, 17)) == true
    @test Holidays.Chinese.is_chinese_new_year(Date(2024, 1, 1)) == false

    @test Holidays.Chinese.is_mid_autumn_festival(Date(2024, 9, 17)) == true
    @test Holidays.Chinese.is_mid_autumn_festival(Date(2025, 10, 6)) == true
    @test Holidays.Chinese.is_mid_autumn_festival(Date(2024, 12, 25)) == false

    @test Holidays.Chinese.is_dragon_boat_festival(Date(2024, 6, 10)) == true
    @test Holidays.Chinese.is_dragon_boat_festival(Date(2025, 5, 31)) == true
    @test Holidays.Chinese.is_dragon_boat_festival(Date(2024, 7, 4)) == false

    @test Holidays.Chinese.is_qingming_festival(Date(2024, 4, 4)) == true
    @test Holidays.Chinese.is_qingming_festival(Date(2025, 4, 4)) == true
    @test Holidays.Chinese.is_qingming_festival(Date(2024, 5, 1)) == false

    @test Holidays.Chinese.is_lantern_festival(Date(2024, 2, 24)) == true
    @test Holidays.Chinese.is_lantern_festival(Date(2025, 2, 12)) == true
    @test Holidays.Chinese.is_lantern_festival(Date(2024, 3, 1)) == false
end

end
