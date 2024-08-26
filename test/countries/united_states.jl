function test_united_states()
    calendar = Holidays.UnitedStates()

    # Federal holidays for the United States in 2024
    holidays = [
        Date(2024, 1, 1),  # New Year's Day
        Date(2024, 1, 15), # Martin Luther King Jr. Day
        Date(2024, 2, 19), # Presidents' Day
        Date(2024, 5, 27), # Memorial Day
        Date(2024, 6, 19), # Juneteenth
        Date(2024, 7, 4),  # Independence Day
        Date(2024, 9, 2),  # Labor Day
        Date(2024, 10, 14), # Columbus Day
        Date(2024, 11, 11), # Veterans Day
        Date(2024, 11, 28), # Thanksgiving Day
        Date(2024, 12, 25), # Christmas Day
    ]

    test_holidays(calendar, 2024, holidays)

    # @testset "Alaska" begin
    #     calendar = Holidays.UnitedStates(subdivision = Subdivision.Alaska())
    #     test_holidays(calendar, 2024, holidays, [Date(2024, 10, 18)]) # Alaska Day
    # end

    # @testset "California" begin
    #     calendar = Holidays.UnitedStates(subdivision = Subdivision.California())
    #     test_holidays(calendar, 2024, holidays, [Date(2024, 3, 31)])  # César Chávez Day
    # end

    # @testset "Florida" begin
    #     calendar = Holidays.UnitedStates(subdivision = Subdivision.Florida())
    #     test_holidays(calendar, 2024, holidays, [Date(2024, 4, 2)])  # Pascua Florida Day
    # end

    # @testset "Hawaii" begin
    #     calendar = Holidays.UnitedStates(subdivision = Subdivision.Hawaii())
    #     test_holidays(calendar, 2024, holidays, [Date(2024, 3, 26)])  # Prince Kūhiō Day
    # end

    # @testset "Illinois" begin
    #     calendar = Holidays.UnitedStates(subdivision = Subdivision.Illinois())
    #     test_holidays(calendar, 2024, holidays, [Date(2024, 2, 12)])  # Lincoln's Birthday
    # end

    # @testset "Louisiana" begin
    #     calendar = Holidays.UnitedStates(subdivision = Subdivision.Louisiana())
    #     test_holidays(calendar, 2024, holidays, [Date(2024, 2, 13)])  # Mardi Gras
    # end

    # @testset "Massachusetts" begin
    #     calendar = Holidays.UnitedStates(subdivision = Subdivision.Massachusetts())
    #     test_holidays(calendar, 2024, holidays, [Date(2024, 4, 15)])  # Patriots' Day
    # end

    # @testset "NewYork" begin
    #     calendar = Holidays.UnitedStates(subdivision = Subdivision.NewYork())
    #     test_holidays(calendar, 2024, holidays, [Date(2024, 2, 12)])  # Lincoln's Birthday
    # end

    # @testset "Texas" begin
    #     calendar = Holidays.UnitedStates(subdivision = Subdivision.Texas())
    #     test_holidays(calendar, 2024, holidays, [Date(2024, 3, 2), Date(2024, 6, 19)]) # Texas Independence Day, Emancipation Day in Texas
    # end

    return nothing
end
