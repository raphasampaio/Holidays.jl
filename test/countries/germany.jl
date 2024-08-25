function test_germany()
    calendar = Holidays.Germany()

    holidays = [
        Date(2024, 1, 1),   # New Year's Day
        Date(2024, 3, 29),  # Good Friday
        Date(2024, 4, 1),   # Easter Monday
        Date(2024, 5, 1),   # Labour Day
        Date(2024, 5, 9),   # Ascension Day
        Date(2024, 5, 20),  # Whit Monday
        Date(2024, 10, 3),  # German Unity Day
        Date(2024, 12, 25), # Christmas Day
        Date(2024, 12, 26), # Second Christmas Day
    ]

    test_holidays(calendar, 2024, holidays)

    @testset "BadenWurttemberg" begin
        calendar = Holidays.Germany(location = Location.BadenWurttemberg())
        test_holidays(calendar, 2024, holidays, [Date(2024, 5, 30), Date(2024, 1, 6), Date(2024, 11, 1)])
    end

    @testset "Bavaria" begin
        calendar = Holidays.Germany(location = Location.Bavaria())
        test_holidays(calendar, 2024, holidays, [Date(2024, 1, 6), Date(2024, 5, 30), Date(2024, 8, 15), Date(2024, 11, 1)])
    end

    @testset "Berlin" begin
        calendar = Holidays.Germany(location = Location.Berlin())
        test_holidays(calendar, 2024, holidays, [Date(2024, 3, 8)])
    end

    @testset "Brandenburg" begin
        calendar = Holidays.Germany(location = Location.Brandenburg())
        test_holidays(calendar, 2024, holidays, [Date(2024, 10, 31)])
    end

    @testset "Bremen" begin
        calendar = Holidays.Germany(location = Location.Bremen())
        test_holidays(calendar, 2024, holidays, [Date(2024, 10, 31)])
    end

    @testset "Hamburg" begin
        calendar = Holidays.Germany(location = Location.Hamburg())
        test_holidays(calendar, 2024, holidays, [Date(2024, 10, 31)])
    end

    @testset "Hesse" begin
        calendar = Holidays.Germany(location = Location.Hesse())
        test_holidays(calendar, 2024, holidays, [Date(2024, 5, 30)])
    end

    @testset "MecklenburgVorpommern" begin
        calendar = Holidays.Germany(location = Location.MecklenburgVorpommern())
        test_holidays(calendar, 2024, holidays, [Date(2024, 3, 8), Date(2024, 10, 31)])
    end

    @testset "LowerSaxony" begin
        calendar = Holidays.Germany(location = Location.LowerSaxony())
        test_holidays(calendar, 2024, holidays, [Date(2024, 10, 31)])
    end

    @testset "NorthRhineWestphalia" begin
        calendar = Holidays.Germany(location = Location.NorthRhineWestphalia())
        test_holidays(calendar, 2024, holidays, [Date(2024, 5, 30), Date(2024, 11, 1)])
    end

    @testset "RhinelandPalatinate" begin
        calendar = Holidays.Germany(location = Location.RhinelandPalatinate())
        test_holidays(calendar, 2024, holidays, [Date(2024, 5, 30), Date(2024, 11, 1)])
    end

    @testset "Saarland" begin
        calendar = Holidays.Germany(location = Location.Saarland())
        test_holidays(calendar, 2024, holidays, [Date(2024, 5, 30), Date(2024, 8, 15), Date(2024, 11, 1)])
    end

    @testset "Saxony" begin
        calendar = Holidays.Germany(location = Location.Saxony())
        test_holidays(calendar, 2024, holidays, [Date(2024, 10, 31), Date(2024, 11, 20)])
    end

    @testset "SaxonyAnhalt" begin
        calendar = Holidays.Germany(location = Location.SaxonyAnhalt())
        test_holidays(calendar, 2024, holidays, [Date(2024, 1, 6), Date(2024, 10, 31)])
    end

    @testset "SchleswigHolstein" begin
        calendar = Holidays.Germany(location = Location.SchleswigHolstein())
        test_holidays(calendar, 2024, holidays, [Date(2024, 10, 31)])
    end

    @testset "Thuringia" begin
        calendar = Holidays.Germany(location = Location.Thuringia())
        test_holidays(calendar, 2024, holidays, [Date(2024, 9, 20), Date(2024, 10, 31)])
    end

    return nothing
end
