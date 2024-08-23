function test_egypt()
    country = Country.Egypt()

    holidays = Set([
        # Date(2024, 1, 7),
        # Date(2024, 1, 25),
        # Date(2024, 4, 9),
        # Date(2024, 4, 10),
        # Date(2024, 4, 25),
        # Date(2024, 5, 5),
        # Date(2024, 5, 6),
    ])

    test_holidays(country, 2024, holidays)

    return nothing
end
