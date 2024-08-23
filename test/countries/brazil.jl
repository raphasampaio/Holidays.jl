function test_brazil_rio_de_janeiro(holidays)
    country = Country.Brazil(region=Location.RioDeJaneiro())

    more_holidays = Set([
        Date(2024, 1, 20),
    ])

    test_holidays(country, 2024, holidays, more_holidays)

    return nothing
end

function test_brazil()
    country = Country.Brazil()

    holidays = Set([
        Date(2024, 1, 1),
        Date(2024, 2, 12),
        Date(2024, 2, 13),
        Date(2024, 2, 14),
        Date(2024, 3, 29),
        Date(2024, 4, 21),
        Date(2024, 5, 1),
        Date(2024, 5, 30),
        Date(2024, 9, 7),
        Date(2024, 10, 12),
        Date(2024, 11, 2),
        Date(2024, 11, 15),
        Date(2024, 11, 20),
        Date(2024, 12, 25),
    ])

    test_holidays(country, 2024, holidays)

    test_brazil_rio_de_janeiro(holidays)

    return nothing
end