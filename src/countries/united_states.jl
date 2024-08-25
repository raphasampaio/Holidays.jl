function fetch_holidays(::Type{UnitedStates})
    return [
        Holiday("New Year's Day", (d) -> Gregorian.is_new_years_day),
        Holiday("Birthday of Martin Luther King, Jr.", (d) -> Dates.month(d) == Dates.Jan && Dates.dayofweekofmonth(d) == 3 && Dates.dayofweek(d) == Dates.Mon),
        Holiday("Memorial Day", (d) -> Dates.month(d) == Dates.May && Dates.dayofweek(d) == Dates.Mon && Dates.dayofweekofmonth(d) == Dates.daysofweekinmonth(d)),
        Holiday("Juneteenth National Independence Day", (d) -> Dates.year(d) >= 2021 && Dates.month(d) == Dates.Jun && Dates.day(d) == 19),
        Holiday("Independence Day", (d) -> Dates.year(d) >= 1871 && Dates.month(d) == Dates.Jul && Dates.day(d) == 4),
        Holiday("Labor Day", (d) -> Dates.year(d) >= 1894 && Dates.month(d) == Dates.Sep && Dates.dayofweekofmonth(d) == 1 && Dates.dayofweek(d) == Dates.Mon),
        Holiday("Columbus Day", (d) -> Dates.month(d) == Dates.Oct && Dates.dayofweekofmonth(d) == 2 && Dates.dayofweek(d) == Dates.Mon),
        Holiday("Veterans Day", (d) -> Dates.month(d) == Dates.Nov && Dates.day(d) == 11),
        Holiday("Thanksgiving Day", (d) -> Dates.year(d) >= 1871 && Dates.month(d) == Dates.Nov && Dates.dayofweekofmonth(d) == 4 && Dates.dayofweek(d) == Dates.Thu),
        Holiday("Christmas Day", Christian.is_christmas_day),
    ]
end
