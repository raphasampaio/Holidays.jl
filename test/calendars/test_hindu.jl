module TestHindu

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Hindu Calendar" begin
    # Test Diwali dates
    @test Holidays.Hindu.is_diwali(Date(2024, 11, 1)) == true
    @test Holidays.Hindu.is_diwali(Date(2025, 10, 20)) == true
    @test Holidays.Hindu.is_diwali(Date(2026, 11, 8)) == true
    @test Holidays.Hindu.is_diwali(Date(2024, 12, 25)) == false

    # Test Holi dates
    @test Holidays.Hindu.is_holi(Date(2024, 3, 25)) == true
    @test Holidays.Hindu.is_holi(Date(2025, 3, 14)) == true
    @test Holidays.Hindu.is_holi(Date(2026, 3, 3)) == true
    @test Holidays.Hindu.is_holi(Date(2024, 7, 4)) == false

    # Test Dussehra dates
    @test Holidays.Hindu.is_dussehra(Date(2024, 10, 12)) == true
    @test Holidays.Hindu.is_dussehra(Date(2025, 10, 2)) == true
    @test Holidays.Hindu.is_dussehra(Date(2026, 10, 20)) == true
    @test Holidays.Hindu.is_dussehra(Date(2024, 1, 1)) == false

    # Test Janmashtami dates
    @test Holidays.Hindu.is_janmashtami(Date(2024, 8, 26)) == true
    @test Holidays.Hindu.is_janmashtami(Date(2025, 8, 16)) == true
    @test Holidays.Hindu.is_janmashtami(Date(2026, 9, 4)) == true
    @test Holidays.Hindu.is_janmashtami(Date(2024, 12, 25)) == false

    # Test Ram Navami dates
    @test Holidays.Hindu.is_ram_navami(Date(2024, 4, 17)) == true
    @test Holidays.Hindu.is_ram_navami(Date(2025, 4, 6)) == true
    @test Holidays.Hindu.is_ram_navami(Date(2026, 3, 27)) == true
    @test Holidays.Hindu.is_ram_navami(Date(2024, 7, 4)) == false

    # Test Maha Shivratri (simplified approximation)
    @test Holidays.Hindu.is_maha_shivratri(Date(2024, 2, 21)) == true
    @test Holidays.Hindu.is_maha_shivratri(Date(2025, 2, 20)) == true
    @test Holidays.Hindu.is_maha_shivratri(Date(2026, 2, 22)) == true
    @test Holidays.Hindu.is_maha_shivratri(Date(2024, 7, 4)) == false

    # Test Ganesh Chaturthi (simplified approximation)
    @test Holidays.Hindu.is_ganesh_chaturthi(Date(2024, 8, 25)) == true
    @test Holidays.Hindu.is_ganesh_chaturthi(Date(2024, 9, 5)) == true
    @test Holidays.Hindu.is_ganesh_chaturthi(Date(2024, 12, 25)) == false

    # Test Karva Chauth (simplified approximation)
    @test Holidays.Hindu.is_karva_chauth(Date(2024, 10, 30)) == true
    @test Holidays.Hindu.is_karva_chauth(Date(2024, 11, 5)) == true
    @test Holidays.Hindu.is_karva_chauth(Date(2024, 7, 4)) == false

    # Test fallback dates for years not in dictionary
    @test Holidays.Hindu.is_diwali(Date(2040, 11, 4)) == true  # Fallback
    @test Holidays.Hindu.is_holi(Date(2040, 3, 17)) == true  # Fallback
end

end
