module NetherlandsHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const International = Holidays.International

function is_kings_day(x::TimeType)
    # King's Day (April 27, or April 26 if 27th is Sunday)
    year = Dates.year(x)
    if is_april(x) && is_day(x, 27) && !is_sunday(x)
        return true
    elseif is_april(x) && is_day(x, 26) && Dates.dayofweek(Date(year, 4, 27)) == Dates.Sun
        return true
    else
        return false
    end
end

function is_liberation_day(x::TimeType)
    return is_may(x) && is_day(x, 5)
end

function Holidays.fetch_holidays(::Type{Holidays.Netherlands})
    return [
        Holiday("New Year's Day", International.is_new_years_day),
        # Holiday("Good Friday", Christian.is_good_friday),
        # Holiday("Easter Monday", Christian.is_easter_monday),
        # Holiday("King's Day", is_kings_day),
        # Holiday("Liberation Day", is_liberation_day),
        # Holiday("Ascension Day", Christian.is_ascension_day),
        # Holiday("Whit Monday", Christian.is_whit_monday),
        # Holiday("Christmas Day", Christian.is_christmas_day),
        # Holiday("Boxing Day", Christian.is_boxing_day),
    ]
end

end
