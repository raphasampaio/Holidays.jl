function test_netherlands()
    calendar = Holidays.Netherlands()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 3, 29),  # Good Friday
        Date(2024, 4, 1),   # Easter Monday
        Date(2024, 4, 27),  # King's Day
        Date(2024, 5, 5),   # Liberation Day
        Date(2024, 5, 9),   # Ascension Day
        Date(2024, 5, 20),  # Whit Monday
        Date(2024, 12, 25), # Christmas Day
        Date(2024, 12, 26), # Boxing Day
    ]

    test_holidays(calendar, 2024, holidays)

    return nothing
end
