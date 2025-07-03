module ChileHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

function is_navy_day(x::Dates.TimeType)
    return Dates.month(x) == Dates.May && is_day(x, 21)
end

function is_national_day_of_indigenous_peoples(x::Dates.TimeType)
    return Dates.month(x) == Dates.Jun && is_day(x, 20)
end

function is_saints_peter_and_paul(x::Dates.TimeType)
    return Dates.month(x) == Dates.Jun && is_day(x, 29)
end

function is_our_lady_of_mount_carmel(x::Dates.TimeType)
    return Dates.month(x) == Dates.Jul && is_day(x, 16)
end

function is_assumption_of_mary(x::Dates.TimeType)
    return Dates.month(x) == Dates.Aug && is_day(x, 15)
end

function is_independence_day(x::Dates.TimeType)
    return Dates.month(x) == Dates.Sep && is_day(x, 18)
end

function is_army_day(x::Dates.TimeType)
    return Dates.month(x) == Dates.Sep && is_day(x, 19)
end

function is_columbus_day(x::Dates.TimeType)
    return Dates.month(x) == Dates.Oct && is_day(x, 12)
end

function is_reformation_day(x::Dates.TimeType)
    return Dates.month(x) == Dates.Oct && is_day(x, 31)
end

function is_all_saints_day(x::Dates.TimeType)
    return Dates.month(x) == Dates.Nov && is_day(x, 1)
end

function is_immaculate_conception(x::Dates.TimeType)
    return Dates.month(x) == Dates.Dec && is_day(x, 8)
end

function Holidays.fetch_holidays(::Type{Holidays.Chile})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Holy Saturday", Christian.is_holy_saturday),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("Navy Day", is_navy_day),
        Holiday("National Day of Indigenous Peoples", is_national_day_of_indigenous_peoples),
        Holiday("Saints Peter and Paul", is_saints_peter_and_paul),
        Holiday("Our Lady of Mount Carmel", is_our_lady_of_mount_carmel),
        Holiday("Assumption of Mary", is_assumption_of_mary),
        Holiday("Independence Day", is_independence_day),
        Holiday("Army Day", is_army_day),
        Holiday("Columbus Day", is_columbus_day),
        Holiday("Reformation Day", is_reformation_day),
        Holiday("All Saints' Day", is_all_saints_day),
        Holiday("Immaculate Conception", is_immaculate_conception),
        Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end

end