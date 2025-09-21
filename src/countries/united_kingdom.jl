module UnitedKingdomHolidays

using Dates
using Holidays

include("../dates.jl")
include("../observed.jl")

const Christian = Holidays.Christian

const UnitedKingdom = Holidays.UnitedKingdom

function uk_christmas_observance(holiday::Holiday, x::TimeType)
    year = Dates.year(x)
    christmas = Date(year, 12, 25)
    boxing_day = Date(year, 12, 26)

    if holiday.handler(christmas)
        if is_saturday(christmas)
            return x == christmas + Day(2)
        elseif is_sunday(christmas)
            return x == christmas + Day(2)
        end
    end

    return false
end

function uk_boxing_day_observance(holiday::Holiday, x::TimeType)
    year = Dates.year(x)
    christmas = Date(year, 12, 25)
    boxing_day = Date(year, 12, 26)

    if holiday.handler(boxing_day)
        if is_saturday(boxing_day)
            return x == boxing_day + Day(2)
        elseif is_sunday(boxing_day)
            if is_saturday(christmas)
                return x == boxing_day + Day(2)
            else
                return x == boxing_day + Day(1)
            end
        end
    end

    return false
end

function uk_new_year_observance(holiday::Holiday, x::TimeType)
    year = Dates.year(x)
    new_year = Date(year, 1, 1)

    if holiday.handler(new_year)
        if is_saturday(new_year)
            return x == new_year + Day(2)
        elseif is_sunday(new_year)
            return x == new_year + Day(1)
        end
    end

    return false
end

function is_may_day(x::TimeType)
    year = Dates.year(x)
    if year < 1978
        return false
    elseif year in [1995, 2020]
        return is_may(x) && is_day(x, 8)
    else
        return is_may(x) && is_first_monday_of_month(x)
    end
end

function is_spring_bank_holiday(x::TimeType)
    year = Dates.year(x)
    if year < 1971
        return false
    elseif year == 2002
        return is_june(x) && is_day(x, 4)
    elseif year == 2012
        return is_june(x) && is_day(x, 4)
    elseif year == 2022
        return is_june(x) && is_day(x, 2)
    else
        return is_may(x) && is_last_monday_of_month(x)
    end
end

function Holidays.fetch_holidays(::Type{UnitedKingdom})
    return [
        Holiday("New Year's Day", is_january_1st, start_year = 1975, observed = uk_new_year_observance),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("May Day", is_may_day),
        Holiday("Spring Bank Holiday", is_spring_bank_holiday),
        Holiday("Christmas Day", Christian.is_christmas_day, observed = uk_christmas_observance),
        Holiday("Boxing Day", is_december_26th, observed = uk_boxing_day_observance),
        Holiday("Silver Jubilee of Elizabeth II", is_june_7th, start_year = 1977, end_year = 1977),
        Holiday("Wedding of Charles and Diana", is_july_29th, start_year = 1981, end_year = 1981),
        Holiday("Millennium Celebrations", is_december_31st, start_year = 1999, end_year = 1999),
        Holiday("Golden Jubilee of Elizabeth II", is_june_3rd, start_year = 2002, end_year = 2002),
        Holiday("Wedding of William and Catherine", is_april_29th, start_year = 2011, end_year = 2011),
        Holiday("Diamond Jubilee of Elizabeth II", is_june_5th, start_year = 2012, end_year = 2012),
        Holiday("Platinum Jubilee of Elizabeth II", is_june_3rd, start_year = 2022, end_year = 2022),
        Holiday("State Funeral of Queen Elizabeth II", is_september_19th, start_year = 2022, end_year = 2022),
        Holiday("Coronation of Charles III", is_may_8th, start_year = 2023, end_year = 2023),
    ]
end

end
