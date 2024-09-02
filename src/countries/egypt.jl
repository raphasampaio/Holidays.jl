module EgyptHolidays

using Dates
using Holidays

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const Egypt = Holidays.Egypt

function Holidays.fetch_holidays(::Type{Egypt})
    return [
        Holiday("Christmas Day", x -> Dates.month(x) == Dates.Jan && Dates.day(x) == 7),
        Holiday("Revolution Day 2011", x -> Dates.month(x) == Dates.Jan && Dates.day(x) == 25),
        Holiday("Sinai Liberation Day", x -> Dates.month(x) == Dates.Apr && Dates.day(x) == 25),
        Holiday("Labour Day", International.is_workers_day),
        Holiday("30 June Day", x -> Dates.month(x) == Dates.Jun && Dates.day(x) == 30),
        Holiday("Revolution Day", x -> Dates.month(x) == Dates.Jul && Dates.day(x) == 23),
        Holiday("Armed Forces Day", x -> Dates.month(x) == Dates.Oct && Dates.day(x) == 6),
    ]
end

end
