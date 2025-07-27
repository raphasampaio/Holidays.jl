module SouthAfricaHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const International = Holidays.International

function is_human_rights_day(x::TimeType)
    return is_march(x) && is_day(x, 21)
end

function is_freedom_day(x::TimeType)
    return is_april(x) && is_day(x, 27)
end

function is_youth_day(x::TimeType)
    return is_june(x) && is_day(x, 16)
end

function is_national_womens_day(x::TimeType)
    return is_august(x) && is_day(x, 9)
end

function is_heritage_day(x::TimeType)
    return is_september(x) && is_day(x, 24)
end

function is_day_of_reconciliation(x::TimeType)
    return is_december(x) && is_day(x, 16)
end

function Holidays.fetch_holidays(::Type{Holidays.SouthAfrica})
    return [
        Holiday("New Year's Day", is_january_1st),
        # Holiday("Human Rights Day", is_human_rights_day),
        # Holiday("Good Friday", Christian.is_good_friday),
        # Holiday("Easter Monday", Christian.is_easter_monday),
        # Holiday("Freedom Day", is_freedom_day),
        # Holiday("Workers' Day", International.is_workers_day),
        # Holiday("Youth Day", is_youth_day),
        # Holiday("National Women's Day", is_national_womens_day),
        # Holiday("Heritage Day", is_heritage_day),
        # Holiday("Day of Reconciliation", is_day_of_reconciliation),
        # Holiday("Christmas Day", Christian.is_christmas_day),
        # Holiday("Day of Goodwill", Christian.is_boxing_day),
    ]
end

end
