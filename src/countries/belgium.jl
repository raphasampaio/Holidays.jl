module BelgiumHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian

function is_belgian_national_day(x::TimeType)
    return is_july(x) && is_day(x, 21)
end

function is_armistice_day(x::TimeType)
    return is_november(x) && is_day(x, 11)
end

function Holidays.fetch_holidays(::Type{Holidays.Belgium})
    return [
        Holiday("New Year's Day", is_january_1st),
        # Holiday("Easter Monday", Christian.is_easter_monday),
        # Holiday("Labour Day", International.is_workers_day),
        # Holiday("Ascension Day", Christian.is_ascension_day),
        # Holiday("Whit Monday", Christian.is_whit_monday),
        # Holiday("Belgian National Day", is_belgian_national_day),
        # Holiday("Assumption Day", Christian.is_assumption_day),
        # Holiday("All Saints' Day", Christian.is_all_saints_day),
        # Holiday("Armistice Day", is_armistice_day),
        # Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end

end
