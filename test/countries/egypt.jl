function test_egypt()
    calendar = Holidays.Egypt()

    holidays = [
        Date(2024, 1, 7),  # Christmas Day
        Date(2024, 1, 25), # National Police Day
        Date(2024, 4, 10), # Eid Al-Fitr
        Date(2024, 4, 11), # Eid Al-Fitr
        Date(2024, 4, 12), # Eid Al-Fitr
        Date(2024, 4, 25), # Sinai Liberation Day
        Date(2024, 5, 1),  # Labor Day
        Date(2024, 6, 16), # Eid Al-Adha
        Date(2024, 6, 17), # Eid Al-Adha
        Date(2024, 6, 18), # Eid Al-Adha
        Date(2024, 6, 30), # June 30 Revolution
        Date(2024, 7, 7),  # Islamic New Year
        Date(2024, 7, 23), # Revolution Day
        Date(2024, 10, 6), # Armed Forces Day
    ]

    test_holidays(calendar, 2024, holidays)

    return nothing
end
