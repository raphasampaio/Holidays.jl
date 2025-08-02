is_day(x::TimeType, day::Integer) = Dates.day(x) == day
is_day_between(x::TimeType, day_start::Integer, day_end::Integer) = Dates.day(x) >= day_start && Dates.day(x) <= day_end

is_year_between(x::TimeType, year_start::Integer, year_end::Integer) = Dates.year(x) >= year_start && Dates.year(x) <= year_end

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
is_weekday(x::TimeType) = is_monday(x) || is_tuesday(x) || is_wednesday(x) || is_thursday(x) || is_friday(x)
is_weekend(x::TimeType) = is_saturday(x) || is_sunday(x)

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

is_last_monday_of_month(x::TimeType) = is_monday(x) && Dates.dayofweekofmonth(x) == Dates.daysofweekinmonth(x)
is_last_tuesday_of_month(x::TimeType) = is_tuesday(x) && Dates.dayofweekofmonth(x) == Dates.daysofweekinmonth(x)
is_last_wednesday_of_month(x::TimeType) = is_wednesday(x) && Dates.dayofweekofmonth(x) == Dates.daysofweekinmonth(x)
is_last_thursday_of_month(x::TimeType) = is_thursday(x) && Dates.dayofweekofmonth(x) == Dates.daysofweekinmonth(x)
is_last_friday_of_month(x::TimeType) = is_friday(x) && Dates.dayofweekofmonth(x) == Dates.daysofweekinmonth(x)
is_last_saturday_of_month(x::TimeType) = is_saturday(x) && Dates.dayofweekofmonth(x) == Dates.daysofweekinmonth(x)
is_last_sunday_of_month(x::TimeType) = is_sunday(x) && Dates.dayofweekofmonth(x) == Dates.daysofweekinmonth(x)

is_third_monday_of_january(x::TimeType) = is_january(x) && is_third_monday_of_month(x)
is_first_monday_of_june(x::TimeType) = is_june(x) && is_first_monday_of_month(x)
is_first_monday_of_september(x::TimeType) = is_september(x) && is_first_monday_of_month(x)
is_fourth_thursday_of_november(x::TimeType) = is_november(x) && is_fourth_thursday_of_month(x)

is_january_1st(x::TimeType) = is_january(x) && is_day(x, 1)
is_january_2nd(x::TimeType) = is_january(x) && is_day(x, 2)
is_january_3rd(x::TimeType) = is_january(x) && is_day(x, 3)
is_january_4th(x::TimeType) = is_january(x) && is_day(x, 4)
is_january_9th(x::TimeType) = is_january(x) && is_day(x, 9)

is_march_8th(x::TimeType) = is_march(x) && is_day(x, 8)

is_april_21st(x::TimeType) = is_april(x) && is_day(x, 21)

is_may_1st(x::TimeType) = is_may(x) && is_day(x, 1)
is_may_17th(x::TimeType) = is_may(x) && is_day(x, 17)

is_june_19th(x::TimeType) = is_june(x) && is_day(x, 19)
is_june_29th(x::TimeType) = is_june(x) && is_day(x, 29)

is_july_1st(x::TimeType) = is_july(x) && is_day(x, 1)
is_july_4th(x::TimeType) = is_july(x) && is_day(x, 4)
is_july_20th(x::TimeType) = is_july(x) && is_day(x, 20)

is_august_6th(x::TimeType) = is_august(x) && is_day(x, 6)
is_august_7th(x::TimeType) = is_august(x) && is_day(x, 7)
is_august_30th(x::TimeType) = is_august(x) && is_day(x, 30)

is_september_7th(x::TimeType) = is_september(x) && is_day(x, 7)
is_september_16th(x::TimeType) = is_september(x) && is_day(x, 16)

is_october_8th(x::TimeType) = is_october(x) && is_day(x, 8)
is_october_12th(x::TimeType) = is_october(x) && is_day(x, 12)

is_november_1st(x::TimeType) = is_november(x) && is_day(x, 1)
is_november_3rd(x::TimeType) = is_november(x) && is_day(x, 3)
is_november_5th(x::TimeType) = is_november(x) && is_day(x, 5)
is_november_10th(x::TimeType) = is_november(x) && is_day(x, 10)
is_november_15th(x::TimeType) = is_november(x) && is_day(x, 15)
is_november_20th(x::TimeType) = is_november(x) && is_day(x, 20)

is_december_8th(x::TimeType) = is_december(x) && is_day(x, 8)
is_december_9th(x::TimeType) = is_december(x) && is_day(x, 9)
is_december_20th(x::TimeType) = is_december(x) && is_day(x, 20)
