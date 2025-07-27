module EgyptHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const International = Holidays.International
const Islamic = Holidays.Islamic

function Holidays.fetch_holidays(::Type{Holidays.Egypt})
    return [
        # fixed holidays
        Holiday("Christmas Day", x -> is_january(x) && is_day(x, 7)),
        Holiday("National Police Day", x -> Dates.year(x) >= 2009 && is_january(x) && is_day(x, 25)),
        Holiday("Sinai Liberation Day", x -> Dates.year(x) >= 1983 && is_april(x) && is_day(x, 25)),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("30 June Day", x -> is_june(x) && is_day(x, 30)),
        Holiday("Revolution Day", x -> is_july(x) && is_day(x, 23)),
        Holiday("Armed Forces Day", x -> is_october(x) && is_day(x, 6)),
        # movable holidays
        Holiday("Eid Al-Fitr", Islamic.is_eid_al_fitr_day_one),
        Holiday("Eid Al-Fitr", Islamic.is_eid_al_fitr_day_two),
        Holiday("Eid Al-Fitr", Islamic.is_eid_al_fitr_day_three),
        Holiday("Eid Al-Adha", Islamic.is_eid_al_adha_day_one),
        Holiday("Eid Al-Adha", Islamic.is_eid_al_adha_day_two),
        Holiday("Eid Al-Adha", Islamic.is_eid_al_adha_day_three),
        Holiday("Islamic New Year", Islamic.is_hijri_new_year),
        Holiday("Prophet Muhammad's Birthday", Islamic.is_mawlid_day),
    ]
end

end
