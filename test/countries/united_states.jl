function test_united_states()
    country = Holidays.UnitedStates()

    holidays = [
        Date(2024, 1, 1),
        Date(2024, 1, 15),
        Date(2024, 5, 27),
        Date(2024, 6, 19),
        Date(2024, 7, 4),
        Date(2024, 9, 2),
        Date(2024, 10, 14),
        Date(2024, 11, 11),
        Date(2024, 11, 28),
        Date(2024, 12, 25),
    ]

    test_holidays(country, 2024, holidays)

    return nothing
end
