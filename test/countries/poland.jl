function test_poland()
    calendar = Holidays.Poland()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 1, 6),   # Epiphany
        Date(2024, 4, 1),   # Easter Monday
        Date(2024, 5, 1),   # Labour Day
        Date(2024, 5, 3),   # Constitution Day
        Date(2024, 5, 30),  # Corpus Christi
        Date(2024, 8, 15),  # Assumption of Mary
        Date(2024, 11, 1),  # All Saints' Day
        Date(2024, 11, 11), # Independence Day
        Date(2024, 12, 25), # Christmas Day
        Date(2024, 12, 26), # Boxing Day
    ]

    test_holidays(calendar, 2024, holidays)

    return nothing
end
