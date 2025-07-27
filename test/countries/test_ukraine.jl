module TestUkraine

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Ukraine" begin
    calendar = Holidays.Ukraine()

    holidays = [
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
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
