module AustraliaHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const International = Holidays.International

function is_australia_day(x::TimeType)
    return is_january(x) && is_day(x, 26)
end

function is_anzac_day(x::TimeType)
    return is_april(x) && is_day(x, 25)
end

function is_queens_birthday(x::TimeType)
    return is_june(x) && is_second_monday_of_month(x)
end

function is_labour_day_october(x::TimeType)
    return is_october(x) && is_first_monday_of_month(x)
end

function Holidays.fetch_holidays(::Type{Holidays.Holidays.Australia})
    return [
        Holiday("New Year's Day", International.is_new_years_day),
        # Holiday("Australia Day", is_australia_day),
        # Holiday("Good Friday", Christian.is_good_friday),
        # Holiday("Easter Saturday", Christian.is_holy_saturday),
        # Holiday("Easter Monday", Christian.is_easter_monday),
        # Holiday("ANZAC Day", is_anzac_day),
        # Holiday("Queen's Birthday", is_queens_birthday),
        # Holiday("Labour Day", is_labour_day_october),
        # Holiday("Christmas Day", Christian.is_christmas_day),
        # Holiday("Boxing Day", Christian.is_boxing_day),
    ]
end

end
