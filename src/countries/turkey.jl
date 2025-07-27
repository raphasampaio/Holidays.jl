module TurkeyHolidays

using Dates
using Holidays

include("../dates.jl")

const International = Holidays.International

function is_national_sovereignty_day_turkey(x::TimeType)
    return is_april(x) && is_day(x, 23)
end

function is_ataturk_commemoration_day(x::TimeType)
    return is_may(x) && is_day(x, 19)
end

function is_democracy_day(x::TimeType)
    return is_july(x) && is_day(x, 15)
end

function is_victory_day_turkey(x::TimeType)
    return is_august(x) && is_day(x, 30)
end

function is_republic_day_turkey(x::TimeType)
    return is_october(x) && is_day(x, 29)
end

function is_ramadan_feast_day_one(x::TimeType)
    # Simplified - using April 10 as approximation for 2024
    # In reality this is lunar calendar based and varies
    return is_april(x) && is_day(x, 10)
end

function is_ramadan_feast_day_two(x::TimeType)
    return is_april(x) && is_day(x, 11)
end

function is_ramadan_feast_day_three(x::TimeType)
    return is_april(x) && is_day(x, 12)
end

function is_sacrifice_feast_day_one(x::TimeType)
    # Simplified - using June 16 as approximation for 2024
    # In reality this is lunar calendar based and varies
    return is_june(x) && is_day(x, 16)
end

function is_sacrifice_feast_day_two(x::TimeType)
    return is_june(x) && is_day(x, 17)
end

function is_sacrifice_feast_day_three(x::TimeType)
    return is_june(x) && is_day(x, 18)
end

function is_sacrifice_feast_day_four(x::TimeType)
    return is_june(x) && is_day(x, 19)
end

function Holidays.fetch_holidays(::Type{Holidays.Turkey})
    return [
        Holiday("New Year's Day", is_january_1st),
        # Holiday("National Sovereignty and Children's Day", is_national_sovereignty_day_turkey),
        # Holiday("Labour and Solidarity Day", International.is_workers_day),
        # Holiday("Commemoration of Atatürk, Youth and Sports Day", is_ataturk_commemoration_day),
        # Holiday("Democracy and National Unity Day", is_democracy_day),
        # Holiday("Victory Day", is_victory_day_turkey),
        # Holiday("Republic Day", is_republic_day_turkey),
        # Holiday("Ramadan Feast Day 1", is_ramadan_feast_day_one),
        # Holiday("Ramadan Feast Day 2", is_ramadan_feast_day_two),
        # Holiday("Ramadan Feast Day 3", is_ramadan_feast_day_three),
        # Holiday("Sacrifice Feast Day 1", is_sacrifice_feast_day_one),
        # Holiday("Sacrifice Feast Day 2", is_sacrifice_feast_day_two),
        # Holiday("Sacrifice Feast Day 3", is_sacrifice_feast_day_three),
        # Holiday("Sacrifice Feast Day 4", is_sacrifice_feast_day_four),
    ]
end

end
