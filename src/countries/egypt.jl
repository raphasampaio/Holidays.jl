module EgyptHolidays

using Dates
using Holidays

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International
const Islamic = Holidays.Islamic

const Egypt = Holidays.Egypt

function Holidays.fetch_holidays(::Type{Egypt})
    return [
        Holiday("Christmas Day", x -> Dates.month(x) == Dates.Jan && Dates.day(x) == 7),
        Holiday("Revolution Day 2011", x -> Dates.year(x) >= 2012 && Dates.month(x) == Dates.Jan && Dates.day(x) == 25),
        Holiday("National Police Day", x -> Dates.year(x) >= 2009 && Dates.month(x) == Dates.Jan && Dates.day(x) == 25),
        Holiday("Sinai Liberation Day", x -> Dates.year(x) >= 1983 && Dates.month(x) == Dates.Apr && Dates.day(x) == 25),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("30 June Day", x -> Dates.month(x) == Dates.Jun && Dates.day(x) == 30),
        Holiday("Revolution Day", x -> Dates.month(x) == Dates.Jul && Dates.day(x) == 23),
        Holiday("Armed Forces Day", x -> Dates.month(x) == Dates.Oct && Dates.day(x) == 6),
        # Islamic holidays
        Holiday("Eid al-Fitr", Islamic.is_eid_al_fitr_day),
        Holiday("Eid al-Fitr", Islamic.is_eid_al_fitr_day_two),
        Holiday("Eid al-Fitr", Islamic.is_eid_al_fitr_day_three),
    ]
end

end
