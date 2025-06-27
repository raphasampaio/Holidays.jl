module TestBuddhist

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Buddhist Calendar" begin
    # Test Buddhist Era year conversion
    @test Holidays.Buddhist.gregorian_to_buddhist_year(2024) == 2567
    @test Holidays.Buddhist.buddhist_to_gregorian_year(2567) == 2024
    @test Holidays.Buddhist.get_buddhist_year(Date(2024, 5, 22)) == 2567

    # Test Vesak Day dates
    @test Holidays.Buddhist.is_vesak_day(Date(2024, 5, 22)) == true
    @test Holidays.Buddhist.is_vesak_day(Date(2025, 5, 12)) == true
    @test Holidays.Buddhist.is_vesak_day(Date(2026, 5, 31)) == true
    @test Holidays.Buddhist.is_vesak_day(Date(2024, 12, 25)) == false

    # Test Magha Puja dates
    @test Holidays.Buddhist.is_magha_puja(Date(2024, 2, 24)) == true
    @test Holidays.Buddhist.is_magha_puja(Date(2025, 2, 12)) == true
    @test Holidays.Buddhist.is_magha_puja(Date(2024, 7, 4)) == false

    # Test Asalha Puja dates
    @test Holidays.Buddhist.is_asalha_puja(Date(2024, 7, 21)) == true
    @test Holidays.Buddhist.is_asalha_puja(Date(2025, 7, 11)) == true
    @test Holidays.Buddhist.is_asalha_puja(Date(2024, 12, 25)) == false

    # Test Khao Phansa (day after Asalha Puja)
    @test Holidays.Buddhist.is_khao_phansa(Date(2024, 7, 22)) == true # 2024-07-21 + 1 day
    @test Holidays.Buddhist.is_khao_phansa(Date(2025, 7, 12)) == true # 2025-07-11 + 1 day
    @test Holidays.Buddhist.is_khao_phansa(Date(2024, 1, 1)) == false

    # Test Ok Phansa (approximately 3 months after Asalha Puja)
    @test Holidays.Buddhist.is_ok_phansa(Date(2024, 10, 20)) == true # ~3 months after 2024-07-21
    @test Holidays.Buddhist.is_ok_phansa(Date(2025, 10, 10)) == true # ~3 months after 2025-07-11
    @test Holidays.Buddhist.is_ok_phansa(Date(2024, 1, 1)) == false

    # Test fallback dates for years not in dictionary
    @test Holidays.Buddhist.is_vesak_day(Date(2040, 5, 15)) == true  # Fallback
    @test Holidays.Buddhist.is_magha_puja(Date(2040, 2, 22)) == true  # Fallback
end

end
