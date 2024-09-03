function test_islamic()
    # 1445 AH
    @test Holidays.Islamic.is_eid_al_fitr_day(Date(2024, 4, 10)) == true
    @test Holidays.Islamic.is_eid_al_fitr_day_two(Date(2024, 4, 11)) == true
    @test Holidays.Islamic.is_eid_al_fitr_day_three(Date(2024, 4, 12)) == true
    @test Holidays.Islamic.is_eid_al_adha(Date(2024, 6, 16)) == true
    @test Holidays.Islamic.is_mawlid(Date(2024, 9, 15)) == true

    # 1446 AH
    @test Holidays.Islamic.is_eid_al_fitr_day(Date(2025, 3, 30)) == true
    @test Holidays.Islamic.is_eid_al_fitr_day_two(Date(2025, 3, 31)) == true
    @test Holidays.Islamic.is_eid_al_fitr_day_three(Date(2025, 4, 1)) == true
    @test Holidays.Islamic.is_eid_al_adha(Date(2025, 6, 6)) == true

    # 1447 AH
    @test Holidays.Islamic.is_eid_al_fitr_day(Date(2026, 3, 20)) == true
    @test Holidays.Islamic.is_eid_al_fitr_day_two(Date(2026, 3, 21)) == true
    @test Holidays.Islamic.is_eid_al_fitr_day_three(Date(2026, 3, 22)) == true

    # 1448 AH
    @test Holidays.Islamic.is_eid_al_fitr_day(Date(2027, 3, 9)) == true
    @test Holidays.Islamic.is_eid_al_fitr_day_two(Date(2027, 3, 10)) == true
    @test Holidays.Islamic.is_eid_al_fitr_day_three(Date(2027, 3, 11)) == true

    # 1449 AH
    @test Holidays.Islamic.is_eid_al_fitr_day(Date(2028, 2, 26)) == true
    @test Holidays.Islamic.is_eid_al_fitr_day_two(Date(2028, 2, 27)) == true
    @test Holidays.Islamic.is_eid_al_fitr_day_three(Date(2028, 2, 28)) == true

    # 1450 AH
    @test Holidays.Islamic.is_eid_al_fitr_day(Date(2029, 2, 14)) == true
    @test Holidays.Islamic.is_eid_al_fitr_day_two(Date(2029, 2, 15)) == true
    @test Holidays.Islamic.is_eid_al_fitr_day_three(Date(2029, 2, 16)) == true

    return nothing
end
