module TestSlovakia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Slovakia" begin
    calendar = Holidays.Slovakia()

    holidays = Date[
        Date(1993, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(1994, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(1995, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(1996, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(1997, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(1998, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(1999, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2000, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2001, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2002, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2003, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2004, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2005, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2006, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2007, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2008, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2009, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2010, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2011, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2012, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2013, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2014, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2015, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2016, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2017, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2018, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2019, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2020, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2021, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2022, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2023, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2024, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2025, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2026, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2027, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2028, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2029, 1, 1), # Day of the Establishment of the Slovak Republic
        Date(2030, 1, 1), # Day of the Establishment of the Slovak Republic
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
