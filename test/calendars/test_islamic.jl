module TestIslamic

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Islamic Calendar" begin
    # 1445 AH
    @test Holidays.Islamic.is_eid_al_fitr_day_one(Date(2024, 4, 10)) == true
    @test Holidays.Islamic.is_eid_al_fitr_day_two(Date(2024, 4, 11)) == true
    @test Holidays.Islamic.is_eid_al_fitr_day_three(Date(2024, 4, 12)) == true
    # @test Holidays.Islamic.is_sham_el_nessim(Date(2024, )) == true
    @test Holidays.Islamic.is_eid_al_adha_day_one(Date(2024, 6, 16)) == true
    @test Holidays.Islamic.is_eid_al_adha_day_two(Date(2024, 6, 17)) == true
    @test Holidays.Islamic.is_eid_al_adha_day_three(Date(2024, 6, 18)) == true
    @test Holidays.Islamic.is_hijri_new_year(Date(2024, 7, 7)) == true
    @test Holidays.Islamic.is_mawlid_day(Date(2024, 9, 15)) == true

    # 1446 AH
    @test Holidays.Islamic.is_eid_al_fitr_day_one(Date(2025, 3, 30)) == true
    @test Holidays.Islamic.is_eid_al_fitr_day_two(Date(2025, 3, 31)) == true
    @test Holidays.Islamic.is_eid_al_fitr_day_three(Date(2025, 4, 1)) == true
    @test Holidays.Islamic.is_sham_el_nessim(Date(2025, 4, 21)) == true
    @test Holidays.Islamic.is_eid_al_adha_day_one(Date(2025, 6, 6)) == true
    @test Holidays.Islamic.is_eid_al_adha_day_two(Date(2025, 6, 7)) == true
    @test Holidays.Islamic.is_eid_al_adha_day_three(Date(2025, 6, 8)) == true
    @test Holidays.Islamic.is_hijri_new_year(Date(2025, 6, 26)) == true

    # 1447 AH
    @test Holidays.Islamic.is_eid_al_fitr_day_one(Date(2026, 3, 20)) == true
    @test Holidays.Islamic.is_eid_al_fitr_day_two(Date(2026, 3, 21)) == true
    @test Holidays.Islamic.is_eid_al_fitr_day_three(Date(2026, 3, 22)) == true
    # @test Holidays.Islamic.is_sham_el_nessim(Date(2026, )) == true
    @test Holidays.Islamic.is_eid_al_adha_day_one(Date(2026, 5, 27)) == true
    @test Holidays.Islamic.is_eid_al_adha_day_two(Date(2026, 5, 28)) == true
    @test Holidays.Islamic.is_eid_al_adha_day_three(Date(2026, 5, 29)) == true
    @test Holidays.Islamic.is_hijri_new_year(Date(2026, 6, 16)) == true

    # 1448 AH
    @test Holidays.Islamic.is_eid_al_fitr_day_one(Date(2027, 3, 9)) == true
    @test Holidays.Islamic.is_eid_al_fitr_day_two(Date(2027, 3, 10)) == true
    @test Holidays.Islamic.is_eid_al_fitr_day_three(Date(2027, 3, 11)) == true
    # @test Holidays.Islamic.is_sham_el_nessim(Date(2027, )) == true
    @test Holidays.Islamic.is_eid_al_adha_day_one(Date(2027, 5, 16)) == true
    @test Holidays.Islamic.is_eid_al_adha_day_two(Date(2027, 5, 17)) == true
    @test Holidays.Islamic.is_eid_al_adha_day_three(Date(2027, 5, 18)) == true
    @test Holidays.Islamic.is_hijri_new_year(Date(2027, 6, 6)) == true

    # 1449 AH
    @test Holidays.Islamic.is_eid_al_fitr_day_one(Date(2028, 2, 26)) == true
    @test Holidays.Islamic.is_eid_al_fitr_day_two(Date(2028, 2, 27)) == true
    @test Holidays.Islamic.is_eid_al_fitr_day_three(Date(2028, 2, 28)) == true
    # @test Holidays.Islamic.is_sham_el_nessim(Date(2028, )) == true
    @test Holidays.Islamic.is_eid_al_adha_day_one(Date(2028, 5, 5)) == true
    @test Holidays.Islamic.is_eid_al_adha_day_two(Date(2028, 5, 6)) == true
    @test Holidays.Islamic.is_eid_al_adha_day_three(Date(2028, 5, 7)) == true

    # 1450 AH
    @test Holidays.Islamic.is_eid_al_fitr_day_one(Date(2029, 2, 14)) == true
    @test Holidays.Islamic.is_eid_al_fitr_day_two(Date(2029, 2, 15)) == true
    @test Holidays.Islamic.is_eid_al_fitr_day_three(Date(2029, 2, 16)) == true
    # @test Holidays.Islamic.is_sham_el_nessim(Date(2029, )) == true
    @test Holidays.Islamic.is_eid_al_adha_day_one(Date(2029, 4, 24)) == true
    @test Holidays.Islamic.is_eid_al_adha_day_two(Date(2029, 4, 25)) == true
    @test Holidays.Islamic.is_eid_al_adha_day_three(Date(2029, 4, 26)) == true

    # 1451 AH
    @test Holidays.Islamic.is_eid_al_adha_day_one(Date(2030, 4, 13)) == true
    @test Holidays.Islamic.is_eid_al_adha_day_two(Date(2030, 4, 14)) == true
    @test Holidays.Islamic.is_eid_al_adha_day_three(Date(2030, 4, 15)) == true
    # @test Holidays.Islamic.is_sham_el_nessim(Date(2030, )) == true

    # 1452 AH
    @test Holidays.Islamic.is_eid_al_adha_day_one(Date(2031, 4, 2)) == true
    @test Holidays.Islamic.is_eid_al_adha_day_two(Date(2031, 4, 3)) == true
    @test Holidays.Islamic.is_eid_al_adha_day_three(Date(2031, 4, 4)) == true
    # @test Holidays.Islamic.is_sham_el_nessim(Date(2031, )) == true
end

end
