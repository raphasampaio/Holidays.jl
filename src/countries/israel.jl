module IsraelHolidays

using Dates
using Holidays

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const Israel = Holidays.Israel

function is_independence_day(x::TimeType)
    # Independence Day is on the 5th of Iyar in the Hebrew calendar
    # For simplicity, we use a fixed date (actual date varies)
    return Dates.month(x) == Dates.May && Dates.day(x) == 14
end

function is_memorial_day(x::TimeType)
    # Memorial Day is the day before Independence Day
    return Dates.month(x) == Dates.May && Dates.day(x) == 13
end

function is_holocaust_remembrance_day(x::TimeType)
    # Holocaust Remembrance Day is on the 27th of Nisan
    # For simplicity, we use a fixed date (actual date varies)
    return Dates.month(x) == Dates.Apr && Dates.day(x) == 28
end

function is_rosh_hashanah(x::TimeType)
    # Jewish New Year - simplified to early September
    return Dates.month(x) == Dates.Sep && (Dates.day(x) == 15 || Dates.day(x) == 16)
end

function is_yom_kippur(x::TimeType)
    # Day of Atonement - 10 days after Rosh Hashanah
    return Dates.month(x) == Dates.Sep && Dates.day(x) == 25
end

function is_sukkot(x::TimeType)
    # Feast of Tabernacles - simplified
    return Dates.month(x) == Dates.Sep && Dates.day(x) == 30
end

function is_simchat_torah(x::TimeType)
    # Rejoicing with the Torah - simplified
    return Dates.month(x) == Dates.Oct && Dates.day(x) == 7
end

function Holidays.fetch_holidays(::Type{Israel})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Holocaust Remembrance Day", is_holocaust_remembrance_day),
        Holiday("Memorial Day", is_memorial_day),
        Holiday("Independence Day", is_independence_day),
        Holiday("Rosh Hashanah (1st day)", x -> is_rosh_hashanah(x) && Dates.day(x) == 15),
        Holiday("Rosh Hashanah (2nd day)", x -> is_rosh_hashanah(x) && Dates.day(x) == 16),
        Holiday("Yom Kippur", is_yom_kippur),
        Holiday("Sukkot", is_sukkot),
        Holiday("Simchat Torah", is_simchat_torah),
    ]
end

end
