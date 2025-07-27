module TestGermany

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Germany" begin
    calendar = Holidays.Germany()

    holidays = Date[
        Date(1991, 1, 1), # New Year's Day
        Date(1992, 1, 1), # New Year's Day
        Date(1993, 1, 1), # New Year's Day
        Date(1994, 1, 1), # New Year's Day
        Date(1995, 1, 1), # New Year's Day
        Date(1996, 1, 1), # New Year's Day
        Date(1997, 1, 1), # New Year's Day
        Date(1998, 1, 1), # New Year's Day
        Date(1999, 1, 1), # New Year's Day
        Date(2000, 1, 1), # New Year's Day
        Date(2001, 1, 1), # New Year's Day
        Date(2002, 1, 1), # New Year's Day
        Date(2003, 1, 1), # New Year's Day
        Date(2004, 1, 1), # New Year's Day
        Date(2005, 1, 1), # New Year's Day
        Date(2006, 1, 1), # New Year's Day
        Date(2007, 1, 1), # New Year's Day
        Date(2008, 1, 1), # New Year's Day
        Date(2009, 1, 1), # New Year's Day
        Date(2010, 1, 1), # New Year's Day
        Date(2011, 1, 1), # New Year's Day
        Date(2012, 1, 1), # New Year's Day
        Date(2013, 1, 1), # New Year's Day
        Date(2014, 1, 1), # New Year's Day
        Date(2015, 1, 1), # New Year's Day
        Date(2016, 1, 1), # New Year's Day
        Date(2017, 1, 1), # New Year's Day
        Date(2018, 1, 1), # New Year's Day
        Date(2019, 1, 1), # New Year's Day
        Date(2020, 1, 1), # New Year's Day
        Date(2021, 1, 1), # New Year's Day
        Date(2022, 1, 1), # New Year's Day
        Date(2023, 1, 1), # New Year's Day
        Date(2024, 1, 1), # New Year's Day
        Date(2025, 1, 1), # New Year's Day
        Date(2026, 1, 1), # New Year's Day
        Date(2027, 1, 1), # New Year's Day
        Date(2028, 1, 1), # New Year's Day
        Date(2029, 1, 1), # New Year's Day
        Date(2030, 1, 1), # New Year's Day
    ]

    test_holidays(calendar, holidays)

    @testset "BadenWurttemberg" begin
        calendar = Holidays.Germany(subdivision = Subdivision.BadenWurttemberg())
        test_holidays(calendar, holidays, [Date(2024, 5, 30), Date(2024, 1, 6), Date(2024, 11, 1)])
    end

    @testset "Bavaria" begin
        calendar = Holidays.Germany(subdivision = Subdivision.Bavaria())
        test_holidays(calendar, holidays, [Date(2024, 1, 6), Date(2024, 5, 30), Date(2024, 8, 15), Date(2024, 11, 1)])
    end

    @testset "Berlin" begin
        calendar = Holidays.Germany(subdivision = Subdivision.Berlin())
        test_holidays(calendar, holidays, [Date(2024, 3, 8)])
    end

    @testset "Brandenburg" begin
        calendar = Holidays.Germany(subdivision = Subdivision.Brandenburg())
        test_holidays(calendar, holidays, [Date(2024, 10, 31)])
    end

    @testset "Bremen" begin
        calendar = Holidays.Germany(subdivision = Subdivision.Bremen())
        test_holidays(calendar, holidays, [Date(2024, 10, 31)])
    end

    @testset "Hamburg" begin
        calendar = Holidays.Germany(subdivision = Subdivision.Hamburg())
        test_holidays(calendar, holidays, [Date(2024, 10, 31)])
    end

    @testset "Hesse" begin
        calendar = Holidays.Germany(subdivision = Subdivision.Hesse())
        test_holidays(calendar, holidays, [Date(2024, 5, 30)])
    end

    @testset "MecklenburgVorpommern" begin
        calendar = Holidays.Germany(subdivision = Subdivision.MecklenburgVorpommern())
        test_holidays(calendar, holidays, [Date(2024, 3, 8), Date(2024, 10, 31)])
    end

    @testset "LowerSaxony" begin
        calendar = Holidays.Germany(subdivision = Subdivision.LowerSaxony())
        test_holidays(calendar, holidays, [Date(2024, 10, 31)])
    end

    @testset "NorthRhineWestphalia" begin
        calendar = Holidays.Germany(subdivision = Subdivision.NorthRhineWestphalia())
        test_holidays(calendar, holidays, [Date(2024, 5, 30), Date(2024, 11, 1)])
    end

    @testset "RhinelandPalatinate" begin
        calendar = Holidays.Germany(subdivision = Subdivision.RhinelandPalatinate())
        test_holidays(calendar, holidays, [Date(2024, 5, 30), Date(2024, 11, 1)])
    end

    @testset "Saarland" begin
        calendar = Holidays.Germany(subdivision = Subdivision.Saarland())
        test_holidays(calendar, holidays, [Date(2024, 5, 30), Date(2024, 8, 15), Date(2024, 11, 1)])
    end

    @testset "Saxony" begin
        calendar = Holidays.Germany(subdivision = Subdivision.Saxony())
        test_holidays(calendar, holidays, [Date(2024, 10, 31), Date(2024, 11, 20)])
    end

    @testset "SaxonyAnhalt" begin
        calendar = Holidays.Germany(subdivision = Subdivision.SaxonyAnhalt())
        test_holidays(calendar, holidays, [Date(2024, 1, 6), Date(2024, 10, 31)])
    end

    @testset "SchleswigHolstein" begin
        calendar = Holidays.Germany(subdivision = Subdivision.SchleswigHolstein())
        test_holidays(calendar, holidays, [Date(2024, 10, 31)])
    end

    @testset "Thuringia" begin
        calendar = Holidays.Germany(subdivision = Subdivision.Thuringia())
        test_holidays(calendar, holidays, [Date(2024, 9, 20), Date(2024, 10, 31)])
    end

    return nothing
end
end
