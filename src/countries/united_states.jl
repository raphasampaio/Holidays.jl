function is_holiday(::Type{Country.UnitedStates}, date::Date)
    day, month = Dates.day(date), Dates.month(date)

    if month == Dates.Jan && day == 1
        return true
    end

    if Christian.is_christmas_day(date)
        return true
    end

    return false
end

function is_holiday(country::Country.UnitedStates{Location.NewYork}, date::Date)
    if is_holiday(Country.UnitedStates, date)
        return true
    end

    day, month = Dates.day(date), Dates.month(date)

    return false
end




# function is_martin_luther_king_day(date::Date)::Bool
#     return Dates.dayofweek(date) == Dates.Mon &&
#            Dates.dayofweekofmonth(date) == 3 &&
#            Dates.month(date) == Dates.Jan
# end

# function is_labor_day(::UnitedStates, date::Date)::Bool
#     return Dates.dayofweek(date) == Dates.Mon &&
#            Dates.dayofweekofmonth(date) == 1 &&
#            Dates.month(date) == Dates.Sep
# end

# function is_independence_day(::UnitedStates, date::Date)::Bool
#     return Dates.day(date) == 4 && Dates.month(date) == Dates.Jul
# end

# function is_thanksgiving(date::Date)::Bool
#     return Dates.dayofweek(date) == Dates.Thu &&
#            Dates.dayofweekofmonth(date) == 4 &&
#            Dates.month(date) == Dates.Nov
# end

# function is_holiday(country::UnitedStates, date::Date)::Bool
#     if is_new_years_day(date)
#         return true
#     end

#     if is_martin_luther_king_day(date)
#         return true
#     end

#     if is_independence_day(country, date)
#         return true
#     end

#     if is_labor_day(country, date)
#         return true
#     end

#     if is_thanksgiving(date)
#         return true
#     end

#     if Christian.is_christmas_day(date)
#         return true
#     end

#     return false
# end
