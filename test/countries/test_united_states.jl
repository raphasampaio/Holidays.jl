module TestUnitedStates

using Dates
using Holidays
using Test

include("../util.jl")

@testset "UnitedStates" begin
    calendar = Holidays.UnitedStates()

    holidays = [
        Date(2024, 1, 1), # New Year's Day
        Date(2024, 1, 15), # Martin Luther King Jr. Day
        Date(2024, 2, 19), # Washington's Birthday
        Date(2024, 5, 27), # Memorial Day
        Date(2024, 6, 19), # Juneteenth National Independence Day
        Date(2024, 7, 4), # Independence Day
        Date(2024, 9, 2), # Labor Day
        Date(2024, 10, 14), # Columbus Day
        Date(2024, 11, 11), # Veterans Day
        Date(2024, 11, 28), # Thanksgiving Day
        Date(2024, 12, 25), # Christmas Day
    ]

    test_holidays(calendar, holidays)

    @testset "Alabama" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Alabama())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Alaska" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Alaska())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Arizona" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Arizona())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Arkansas" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Arkansas())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "California" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.California())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Colorado" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Colorado())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Connecticut" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Connecticut())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Delaware" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Delaware())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Florida" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Florida())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Georgia" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Georgia())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Hawaii" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Hawaii())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Idaho" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Idaho())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Illinois" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Illinois())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Indiana" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Indiana())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Iowa" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Iowa())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Kansas" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Kansas())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Kentucky" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Kentucky())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Louisiana" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Louisiana())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Maine" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Maine())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Maryland" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Maryland())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Massachusetts" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Massachusetts())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Michigan" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Michigan())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Minnesota" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Minnesota())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Mississippi" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Mississippi())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Missouri" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Missouri())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Montana" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Montana())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Nebraska" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Nebraska())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Nevada" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Nevada())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "NewHampshire" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.NewHampshire())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "NewJersey" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.NewJersey())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "NewMexico" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.NewMexico())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "NewYork" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.NewYork())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "NorthCarolina" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.NorthCarolina())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "NorthDakota" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.NorthDakota())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Ohio" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Ohio())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Oklahoma" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Oklahoma())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Oregon" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Oregon())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Pennsylvania" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Pennsylvania())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "RhodeIsland" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.RhodeIsland())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "SouthCarolina" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.SouthCarolina())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "SouthDakota" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.SouthDakota())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Tennessee" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Tennessee())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Texas" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Texas())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Utah" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Utah())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Vermont" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Vermont())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Virginia" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Virginia())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Washington" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Washington())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "WestVirginia" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.WestVirginia())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Wisconsin" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Wisconsin())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Wyoming" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Wyoming())
        test_holidays(calendar, holidays, Date[])
    end

    return nothing
end

end