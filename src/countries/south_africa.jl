module SouthAfricaHolidays

using Dates
using Holidays

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const SouthAfrica = Holidays.SouthAfrica

function is_human_rights_day(x::TimeType)
    return Dates.month(x) == Dates.Mar && Dates.day(x) == 21
end

function is_freedom_day(x::TimeType)
    return Dates.month(x) == Dates.Apr && Dates.day(x) == 27
end

function is_youth_day(x::TimeType)
    return Dates.month(x) == Dates.Jun && Dates.day(x) == 16
end

function is_national_womens_day(x::TimeType)
    return Dates.month(x) == Dates.Aug && Dates.day(x) == 9
end

function is_heritage_day(x::TimeType)
    return Dates.month(x) == Dates.Sep && Dates.day(x) == 24
end

function is_day_of_reconciliation(x::TimeType)
    return Dates.month(x) == Dates.Dec && Dates.day(x) == 16
end

function Holidays.fetch_holidays(::Type{SouthAfrica})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Human Rights Day", is_human_rights_day),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Easter Monday", Christian.is_easter_monday),
        Holiday("Freedom Day", is_freedom_day),
        Holiday("Workers' Day", International.is_workers_day),
        Holiday("Youth Day", is_youth_day),
        Holiday("National Women's Day", is_national_womens_day),
        Holiday("Heritage Day", is_heritage_day),
        Holiday("Day of Reconciliation", is_day_of_reconciliation),
        Holiday("Christmas Day", Christian.is_christmas_day),
        Holiday("Day of Goodwill", Christian.is_boxing_day),
    ]
end

end
