function test_brazil()
    country = Country.Brazil()

    holidays = [
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
    ]

    test_holidays(country, 2024, holidays)

    @testset "RioDeJaneiro" begin
        test_holidays(
            Country.Brazil(location = Location.RioDeJaneiro()),
            2024,
            holidays,
            [Date(2024, 4, 23)],
        )
    end

    return nothing
end
