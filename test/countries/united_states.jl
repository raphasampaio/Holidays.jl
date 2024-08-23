function test_united_states()
    country = Country.UnitedStates()

    holidays = Set([
        Date(2024, 1, 1),
        Date(2024, 12, 25),
    ])

    test_holidays(country, 2024, holidays)

    return nothing
end