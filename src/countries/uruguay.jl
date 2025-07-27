module UruguayHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian

function is_landing_of_33_orientals(x::TimeType)
    return is_april(x) && is_day(x, 19)
end

function is_battle_of_las_piedras(x::TimeType)
    return is_may(x) && is_day(x, 18)
end

function is_birthday_artigas(x::TimeType)
    return is_june(x) && is_day(x, 19)
end

function is_constitution_day(x::TimeType)
    return is_july(x) && is_day(x, 18)
end

function is_independence_day(x::TimeType)
    return is_august(x) && is_day(x, 25)
end

function is_diversity_day(x::TimeType)
    return is_october(x) && is_day(x, 12)
end

function Holidays.fetch_holidays(::Type{Holidays.Uruguay})
    return [
        Holiday("New Year's Day", is_january_1st),
        # Holiday("Epiphany", x -> is_january(x) && is_day(x, 6)),
        # Holiday("Carnival Monday", Christian.is_shrove_monday),
        # Holiday("Carnival Tuesday", Christian.is_shrove_tuesday),
        # Holiday("Tourism Week - Easter Thursday", Christian.is_maundy_thursday),
        # Holiday("Good Friday", Christian.is_good_friday),
        # Holiday("Landing of the 33 Orientals", is_landing_of_33_orientals),
        # Holiday("Labour Day", International.is_workers_day),
        # Holiday("Battle of Las Piedras", is_battle_of_las_piedras),
        # Holiday("Birthday of Artigas", is_birthday_artigas),
        # Holiday("Constitution Day", is_constitution_day),
        # Holiday("Independence Day", is_independence_day),
        # Holiday("Diversity Day", is_diversity_day),
        # Holiday("Day of the Deceased", Christian.is_all_souls_day),
        # Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end

end
