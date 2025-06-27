is_january(x::TimeType) = Dates.month(x) == Dates.Jan
is_february(x::TimeType) = Dates.month(x) == Dates.Feb
is_march(x::TimeType) = Dates.month(x) == Dates.Mar
is_april(x::TimeType) = Dates.month(x) == Dates.Apr
is_may(x::TimeType) = Dates.month(x) == Dates.May
is_june(x::TimeType) = Dates.month(x) == Dates.Jun
is_july(x::TimeType) = Dates.month(x) == Dates.Jul
is_august(x::TimeType) = Dates.month(x) == Dates.Aug
is_september(x::TimeType) = Dates.month(x) == Dates.Sep
is_october(x::TimeType) = Dates.month(x) == Dates.Oct
is_november(x::TimeType) = Dates.month(x) == Dates.Nov
is_december(x::TimeType) = Dates.month(x) == Dates.Dec

is_monday(x::TimeType) = Dates.dayofweek(x) == Dates.Mon
is_tuesday(x::TimeType) = Dates.dayofweek(x) == Dates.Tue
is_wednesday(x::TimeType) = Dates.dayofweek(x) == Dates.Wed
is_thursday(x::TimeType) = Dates.dayofweek(x) == Dates.Thu
is_friday(x::TimeType) = Dates.dayofweek(x) == Dates.Fri
is_saturday(x::TimeType) = Dates.dayofweek(x) == Dates.Sat
is_sunday(x::TimeType) = Dates.dayofweek(x) == Dates.Sun

is_first_monday_of_month(x::TimeType) = is_monday(x) && Dates.dayofweekofmonth(x) == 1
is_first_tuesday_of_month(x::TimeType) = is_tuesday(x) && Dates.dayofweekofmonth(x) == 1
is_first_wednesday_of_month(x::TimeType) = is_wednesday(x) && Dates.dayofweekofmonth(x) == 1
is_first_thursday_of_month(x::TimeType) = is_thursday(x) && Dates.dayofweekofmonth(x) == 1
is_first_friday_of_month(x::TimeType) = is_friday(x) && Dates.dayofweekofmonth(x) == 1
is_first_saturday_of_month(x::TimeType) = is_saturday(x) && Dates.dayofweekofmonth(x) == 1
is_first_sunday_of_month(x::TimeType) = is_sunday(x) && Dates.dayofweekofmonth(x) == 1

is_second_monday_of_month(x::TimeType) = is_monday(x) && Dates.dayofweekofmonth(x) == 2
is_second_tuesday_of_month(x::TimeType) = is_tuesday(x) && Dates.dayofweekofmonth(x) == 2
is_second_wednesday_of_month(x::TimeType) = is_wednesday(x) && Dates.dayofweekofmonth(x) == 2
is_second_thursday_of_month(x::TimeType) = is_thursday(x) && Dates.dayofweekofmonth(x) == 2
is_second_friday_of_month(x::TimeType) = is_friday(x) && Dates.dayofweekofmonth(x) == 2
is_second_saturday_of_month(x::TimeType) = is_saturday(x) && Dates.dayofweekofmonth(x) == 2
is_second_sunday_of_month(x::TimeType) = is_sunday(x) && Dates.dayofweekofmonth(x) == 2

is_third_monday_of_month(x::TimeType) = is_monday(x) && Dates.dayofweekofmonth(x) == 3
is_third_tuesday_of_month(x::TimeType) = is_tuesday(x) && Dates.dayofweekofmonth(x) == 3
is_third_wednesday_of_month(x::TimeType) = is_wednesday(x) && Dates.dayofweekofmonth(x) == 3
is_third_thursday_of_month(x::TimeType) = is_thursday(x) && Dates.dayofweekofmonth(x) == 3
is_third_friday_of_month(x::TimeType) = is_friday(x) && Dates.dayofweekofmonth(x) == 3
is_third_saturday_of_month(x::TimeType) = is_saturday(x) && Dates.dayofweekofmonth(x) == 3
is_third_sunday_of_month(x::TimeType) = is_sunday(x) && Dates.dayofweekofmonth(x) == 3

is_fourth_monday_of_month(x::TimeType) = is_monday(x) && Dates.dayofweekofmonth(x) == 4
is_fourth_tuesday_of_month(x::TimeType) = is_tuesday(x) && Dates.dayofweekofmonth(x) == 4
is_fourth_wednesday_of_month(x::TimeType) = is_wednesday(x) && Dates.dayofweekofmonth(x) == 4
is_fourth_thursday_of_month(x::TimeType) = is_thursday(x) && Dates.dayofweekofmonth(x) == 4
is_fourth_friday_of_month(x::TimeType) = is_friday(x) && Dates.dayofweekofmonth(x) == 4
is_fourth_saturday_of_month(x::TimeType) = is_saturday(x) && Dates.dayofweekofmonth(x) == 4
is_fourth_sunday_of_month(x::TimeType) = is_sunday(x) && Dates.dayofweekofmonth(x) == 4

is_fifth_monday_of_month(x::TimeType) = is_monday(x) && Dates.dayofweekofmonth(x) == 5
is_fifth_tuesday_of_month(x::TimeType) = is_tuesday(x) && Dates.dayofweekofmonth(x) == 5
is_fifth_wednesday_of_month(x::TimeType) = is_wednesday(x) && Dates.dayofweekofmonth(x) == 5
is_fifth_thursday_of_month(x::TimeType) = is_thursday(x) && Dates.dayofweekofmonth(x) == 5
is_fifth_friday_of_month(x::TimeType) = is_friday(x) && Dates.dayofweekofmonth(x) == 5
is_fifth_saturday_of_month(x::TimeType) = is_saturday(x) && Dates.dayofweekofmonth(x) == 5
is_fifth_sunday_of_month(x::TimeType) = is_sunday(x) && Dates.dayofweekofmonth(x) == 5
