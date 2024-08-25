function fetch_holidays(::Type{UnitedStates})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Birthday of Martin Luther King, Jr.", x -> Dates.month(x) == Dates.Jan && Dates.dayofweekofmonth(x) == 3 && Dates.dayofweek(x) == Dates.Mon),
        Holiday("Memorial Day", x -> Dates.month(x) == Dates.May && Dates.dayofweek(x) == Dates.Mon && Dates.dayofweekofmonth(x) == Dates.daysofweekinmonth(x)),
        Holiday("Juneteenth National Independence Day", x -> Dates.year(x) >= 2021 && Dates.month(x) == Dates.Jun && Dates.day(x) == 19),
        Holiday("Independence Day", x -> Dates.year(x) >= 1871 && Dates.month(x) == Dates.Jul && Dates.day(x) == 4),
        Holiday("Labor Day", x -> Dates.year(x) >= 1894 && Dates.month(x) == Dates.Sep && Dates.dayofweekofmonth(x) == 1 && Dates.dayofweek(x) == Dates.Mon),
        Holiday("Columbus Day", x -> Dates.month(x) == Dates.Oct && Dates.dayofweekofmonth(x) == 2 && Dates.dayofweek(x) == Dates.Mon),
        Holiday("Veterans Day", x -> Dates.month(x) == Dates.Nov && Dates.day(x) == 11),
        Holiday("Thanksgiving Day", x -> Dates.year(x) >= 1871 && Dates.month(x) == Dates.Nov && Dates.dayofweekofmonth(x) == 4 && Dates.dayofweek(x) == Dates.Thu),
        Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end
