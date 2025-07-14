module TestUnitedStates

using Dates
using Holidays
using Test

include("../util.jl")

@testset "UnitedStates" begin
    calendar = Holidays.UnitedStates()

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

    test_holidays(calendar, holidays)

    @testset "Alabama" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Alabama())
        test_holidays(calendar, holidays, [Date(2024, 6, 3)])
    end

    @testset "Alaska" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Alaska())
        test_holidays(calendar, holidays, [Date(2024, 3, 25), Date(2024, 10, 18)])
    end

    @testset "Arizona" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Arizona())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Arkansas" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Arkansas())
        test_holidays(calendar, holidays, [Date(2024, 2, 19)])
    end

    @testset "California" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.California())
        test_holidays(calendar, holidays, [Date(2024, 3, 31)])
    end

    @testset "Colorado" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Colorado())
        test_holidays(calendar, holidays, [Date(2024, 3, 31)])
    end

    @testset "Connecticut" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Connecticut())
        test_holidays(calendar, holidays, [Date(2024, 2, 12), Date(2024, 3, 29)])
    end

    @testset "Delaware" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Delaware())
        test_holidays(calendar, holidays, [Date(2024, 3, 29)])
    end

    @testset "Florida" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Florida())
        test_holidays(calendar, holidays, [Date(2024, 2, 15), Date(2024, 4, 2)])
    end

    @testset "Georgia" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Georgia())
        test_holidays(calendar, holidays, [Date(2024, 12, 24)])
    end

    @testset "Hawaii" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Hawaii())
        test_holidays(calendar, holidays, [Date(2024, 3, 26), Date(2024, 6, 11), Date(2024, 8, 16)])
    end

    @testset "Idaho" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Idaho())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Illinois" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Illinois())
        test_holidays(calendar, holidays, [Date(2024, 2, 12)])
    end

    @testset "Indiana" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Indiana())
        test_holidays(calendar, holidays, [Date(2024, 3, 29)])
    end

    @testset "Iowa" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Iowa())
        test_holidays(calendar, holidays, [Date(2024, 2, 12)])
    end

    @testset "Kansas" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Kansas())
        test_holidays(calendar, holidays, [Date(2024, 3, 29)]) # Good Friday
    end

    @testset "Kentucky" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Kentucky())
        test_holidays(calendar, holidays, [Date(2024, 3, 29)])
    end

    @testset "Louisiana" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Louisiana())
        test_holidays(calendar, holidays, [Date(2024, 2, 13), Date(2024, 3, 29)])
    end

    @testset "Maine" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Maine())
        test_holidays(calendar, holidays, [Date(2024, 4, 15)])
    end

    @testset "Maryland" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Maryland())
        test_holidays(calendar, holidays, [Date(2024, 3, 25)])
    end

    @testset "Massachusetts" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Massachusetts())
        test_holidays(calendar, holidays, [Date(2024, 4, 15)])
    end

    @testset "Michigan" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Michigan())
        test_holidays(calendar, holidays, [Date(2024, 11, 5)])
        
    end

    @testset "Minnesota" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Minnesota())
        test_holidays(calendar, holidays, Date[])
    end

    @testset "Mississippi" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Mississippi())
        test_holidays(calendar, holidays, [Date(2024, 2, 13)])
    end

    @testset "Missouri" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Missouri())
        test_holidays(calendar, holidays, [Date(2024, 2, 12), Date(2024, 5, 8)])
    end

    @testset "Montana" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Montana())
        test_holidays(calendar, holidays, [Date(2024, 11, 5)])
        
    end

    @testset "Nebraska" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Nebraska())
        test_holidays(calendar, holidays, [Date(2024, 4, 26)])
    end

    @testset "Nevada" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Nevada())
        test_holidays(calendar, holidays, [Date(2024, 11, 29)])
    end

    @testset "NewHampshire" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.NewHampshire())
        test_holidays(calendar, holidays, [Date(2024, 11, 5)])
    end

    @testset "NewJersey" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.NewJersey())
        test_holidays(calendar, holidays, [Date(2024, 3, 29), Date(2024, 11, 5)])
    end

    @testset "NewMexico" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.NewMexico())
        test_holidays(calendar, holidays, [Date(2024, 3, 31)]) # Cesar Chavez Day
    end

    @testset "NewYork" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.NewYork())
        test_holidays(calendar, holidays, [Date(2024, 2, 12), Date(2024, 11, 5)])
    end

    @testset "NorthCarolina" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.NorthCarolina())
        test_holidays(calendar, holidays, [Date(2024, 3, 29)])
    end

    @testset "NorthDakota" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.NorthDakota())
        test_holidays(calendar, holidays, [Date(2024, 3, 29)])
    end

    @testset "Ohio" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Ohio())
        test_holidays(calendar, holidays, [Date(2024, 3, 29)])
    end

    @testset "Oklahoma" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Oklahoma())
        test_holidays(calendar, holidays, [Date(2024, 11, 16)])
    end

    @testset "Oregon" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Oregon())
        test_holidays(calendar, holidays, [Date(2024, 3, 29)])
    end

    @testset "Pennsylvania" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Pennsylvania())
        test_holidays(calendar, holidays, [Date(2024, 3, 29)])
    end

    @testset "RhodeIsland" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.RhodeIsland())
        test_holidays(calendar, holidays, [Date(2024, 8, 12)])
    end

    @testset "SouthCarolina" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.SouthCarolina())
        test_holidays(calendar, holidays, [Date(2024, 5, 10)])
    end

    @testset "SouthDakota" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.SouthDakota())
        test_holidays(calendar, holidays, Date[])
        
    end

    @testset "Tennessee" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Tennessee())
        test_holidays(calendar, holidays, [Date(2024, 3, 29)])
    end

    @testset "Texas" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Texas())
        test_holidays(calendar, holidays, [Date(2024, 3, 2), Date(2024, 4, 21), Date(2024, 8, 27)])
    end

    @testset "Utah" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Utah())
        test_holidays(calendar, holidays, [Date(2024, 7, 24)])
    end

    @testset "Vermont" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Vermont())
        test_holidays(calendar, holidays, [Date(2024, 3, 5), Date(2024, 8, 16)]) # Town Meeting Day, Bennington Battle Day
    end

    @testset "Virginia" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Virginia())
        test_holidays(calendar, holidays, [Date(2024, 1, 19)]) # Lee-Jackson Day
    end

    @testset "Washington" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Washington())
        test_holidays(calendar, holidays, [Date(2024, 3, 29)]) # Good Friday
    end

    @testset "WestVirginia" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.WestVirginia())
        test_holidays(calendar, holidays, [Date(2024, 6, 20)]) # West Virginia Day
    end

    @testset "Wisconsin" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Wisconsin())
        test_holidays(calendar, holidays, [Date(2024, 3, 29)]) # Good Friday
    end

    @testset "Wyoming" begin
        calendar = Holidays.UnitedStates(subdivision = Subdivision.Wyoming())
        test_holidays(calendar, holidays, [Date(2024, 12, 10)]) # Equality Day
    end

    return nothing
end

end