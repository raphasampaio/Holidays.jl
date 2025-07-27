module CostaRicaHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian

function is_juan_santamaria_day(x::Dates.TimeType)
    return is_april(x) && is_day(x, 11)
end

function is_guanacaste_day(x::Dates.TimeType)
    return Dates.month(x) == Dates.Jul && is_day(x, 25)
end

function is_lady_of_the_angels_day(x::Dates.TimeType)
    return Dates.month(x) == Dates.Aug && is_day(x, 2)
end

function is_mothers_day(x::Dates.TimeType)
    return Dates.month(x) == Dates.Aug && is_day(x, 15)
end

function is_independence_day(x::Dates.TimeType)
    return Dates.month(x) == Dates.Sep && is_day(x, 15)
end

function is_army_abolition_day(x::Dates.TimeType)
    return Dates.month(x) == Dates.Dec && is_day(x, 1)
end

function Holidays.fetch_holidays(::Type{Holidays.CostaRica})
    return [
        Holiday("New Year's Day", is_january_1st),
        # Holiday("Maundy Thursday", Christian.is_maundy_thursday),
        # Holiday("Good Friday", Christian.is_good_friday),
        # Holiday("Juan Santamaria Day", is_juan_santamaria_day),
        # Holiday("Labour Day", International.is_workers_day),
        # Holiday("Guanacaste Day", is_guanacaste_day),
        # Holiday("Lady of the Angels Day", is_lady_of_the_angels_day),
        # Holiday("Mother's Day", is_mothers_day),
        # Holiday("Independence Day", is_independence_day),
        # Holiday("Army Abolition Day", is_army_abolition_day),
        # Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end

end
