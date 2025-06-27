function test_russia()
    calendar = Holidays.Russia()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 1, 7),   # Orthodox Christmas
        Date(2024, 2, 23),  # Defender of the Fatherland Day
        Date(2024, 3, 8),   # International Women's Day
        Date(2024, 5, 1),   # Spring and Labour Day
        Date(2024, 5, 9),   # Victory Day
        Date(2024, 6, 12),  # Russia Day
        Date(2024, 11, 4),  # Unity Day
    ]

    test_holidays(calendar, 2024, holidays)

    return nothing
end
