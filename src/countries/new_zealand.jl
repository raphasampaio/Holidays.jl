module NewZealandHolidays

using Dates
using Holidays

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const NewZealand = Holidays.NewZealand

function is_day_after_new_years(x::TimeType)
    return is_january(x) && Dates.day(x) == 2
end

function is_waitangi_day(x::TimeType)
    return is_february(x) && Dates.day(x) == 6
end

function is_anzac_day(x::TimeType)
    return is_april(x) && Dates.day(x) == 25
end

function is_queens_birthday(x::TimeType)
    # First Monday in June
    return is_june(x) && Dates.dayofweekofmonth(x) == 1 && is_monday(x)
end

function is_matariki(x::TimeType)
    # Matariki is typically the last Friday of June
    if is_june(x) && is_friday(x)
        # Check if this is the last Friday of June
        next_friday = x + Dates.Day(7)
        return Dates.month(next_friday) == Dates.Jul
    end
    return false
end

function is_labour_day(x::TimeType)
    # Fourth Monday in October
    return is_october(x) && Dates.dayofweekofmonth(x) == 4 && is_monday(x)
end

function Holidays.fetch_holidays(::Type{NewZealand})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Day after New Year's Day", is_day_after_new_years),
        Holiday("Waitangi Day", is_waitangi_day),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Easter Monday", Christian.is_easter_monday),
        Holiday("ANZAC Day", is_anzac_day),
        Holiday("Queen's Birthday", is_queens_birthday),
        Holiday("Matariki", is_matariki),
        Holiday("Labour Day", is_labour_day),
        Holiday("Christmas Day", Christian.is_christmas_day),
        Holiday("Boxing Day", Christian.is_boxing_day),
    ]
end

end
