function test_united_kingdom()
    calendar = Holidays.UnitedKingdom()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 3, 29),  # Good Friday
        Date(2024, 4, 1),   # Easter Monday
        Date(2024, 5, 6),   # Early May Bank Holiday
        Date(2024, 5, 27),  # Spring Bank Holiday
        Date(2024, 8, 26),  # Summer Bank Holiday
        Date(2024, 12, 25), # Christmas Day
        Date(2024, 12, 26), # Boxing Day
    ]

    test_holidays(calendar, 2024, holidays)

    return nothing
end
