module SpainHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const International = Holidays.International

function is_epiphany(x::TimeType)
    return is_january(x) && is_day(x, 6)
end

function is_constitution_day_spain(x::TimeType)
    return is_december(x) && is_day(x, 6)
end

function is_immaculate_conception(x::TimeType)
    return is_december(x) && is_day(x, 8)
end

function is_national_day_spain(x::TimeType)
    return is_october(x) && is_day(x, 12)
end

function Holidays.fetch_holidays(::Type{Holidays.Spain})
    return [
        Holiday("New Year's Day", is_january_1st),
        # Holiday("Epiphany", is_epiphany),
        # Holiday("Good Friday", Christian.is_good_friday),
        # Holiday("Easter Monday", Christian.is_easter_monday),
        # Holiday("Labour Day", International.is_workers_day),
        # Holiday("Assumption of Mary", Christian.is_assumption_day),
        # Holiday("National Day", is_national_day_spain),
        # Holiday("All Saints' Day", Christian.is_all_saints_day),
        # Holiday("Constitution Day", is_constitution_day_spain),
        # Holiday("Immaculate Conception", is_immaculate_conception),
        # Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end

end
