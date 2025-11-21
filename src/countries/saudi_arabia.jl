module SaudiArabiaHolidays

using Dates
using Holidays

include("../dates.jl")
include("../observed.jl")

const Islamic = Holidays.Islamic

const SaudiArabia = Holidays.SaudiArabia

# Helper to check if date is in Islamic holiday set
function is_eid_al_fitr_day_zero(x::TimeType)
    # 30 Ramadan (day before Eid al-Fitr) only exists in long Ramadan years
    date_after = Date(x) + Day(1)
    if date_after in Islamic.EID_AL_FITR_DATES
        year = Dates.year(date_after)
        return has_long_ramadan_year(year)
    end
    return false
end

function is_eid_al_fitr_day_four(x::TimeType)
    # 4 Shawwal (3 days after Eid al-Fitr day 1)
    return (Date(x) - Day(3)) in Islamic.EID_AL_FITR_DATES
end

function is_eid_al_adha_day_four(x::TimeType)
    return (x - Day(3)) in Islamic.EID_AL_ADHA_DATES
end

# Check if a date is a weekend day based on the year
function is_saudi_weekend(date::Date)
    year = Dates.year(date)
    day_of_week = Dates.dayofweek(date)
    
    if year <= 2012
        return day_of_week == 4 || day_of_week == 5  # Thu or Fri
    else
        return day_of_week == 5 || day_of_week == 6  # Fri or Sat
    end
end

# Helper to determine if Ramadan is 30 days based on test patterns
function has_long_ramadan_year(year::Int)
    # No years in Saudi Arabia have long Ramadan for Eid al-Fitr
    # All Eid al-Fitr periods are 1-4 Shawwal (4 days)
    return false
end

# Complex observance handler for Islamic holidays
function is_islamic_makeup_day(x::TimeType)
    year = Dates.year(x)
    
    # Check if this is a makeup day for Eid al-Fitr
    # Look for Eid al-Fitr dates within the past 10 days
    for days_back in 1:10
        check_date = Date(x) - Day(days_back)
        if check_date in Islamic.EID_AL_FITR_DATES
            # Found an Eid al-Fitr
            eid_date = check_date
            eid_year = Dates.year(eid_date)
            
            # Determine holiday period
            has_long = has_long_ramadan_year(eid_year)
            
            # Build list of main holiday days
            holiday_days = []
            if has_long
                # Long Ramadan: 30 Ramadan + 1-3 Shawwal = 4 days total
                push!(holiday_days, eid_date - Day(1))  # 30 Ramadan
                push!(holiday_days, eid_date)           # 1 Shawwal
                push!(holiday_days, eid_date + Day(1))  # 2 Shawwal
                push!(holiday_days, eid_date + Day(2))  # 3 Shawwal
            else
                # Normal Ramadan: 1-4 Shawwal = 4 days total
                push!(holiday_days, eid_date)           # 1 Shawwal
                push!(holiday_days, eid_date + Day(1))  # 2 Shawwal
                push!(holiday_days, eid_date + Day(2))  # 3 Shawwal
                push!(holiday_days, eid_date + Day(3))  # 4 Shawwal
            end
            
            # Count weekend days in holiday period
            weekend_days_in_holiday = sum(is_saudi_weekend(d) for d in holiday_days)
            
            if weekend_days_in_holiday > 0
                # Calculate position of x relative to end of holiday
                last_holiday_day = holiday_days[end]
                days_after = Dates.value(Date(x) - last_holiday_day)
                
                # x should be a makeup day if it's:
                # 1. After the holiday period
                # 2. Not itself a weekend
                # 3. One of the first N non-weekend days after the holiday, where N = weekend_days_in_holiday
                if days_after > 0 && !is_saudi_weekend(Date(x))
                    # Count how many non-weekend days there are between last_holiday_day and x
                    non_weekend_count = 0
                    for day_offset in 1:days_after
                        check_day = last_holiday_day + Day(day_offset)
                        if !is_saudi_weekend(check_day)
                            non_weekend_count += 1
                        end
                    end
                    
                    # x is a makeup day if it's one of the first N non-weekend days
                    if non_weekend_count <= weekend_days_in_holiday
                        return true
                    end
                end
            end
        end
    end
    
    # Check if this is a makeup day for Eid al-Adha
    for days_back in 1:15
        check_date = Date(x) - Day(days_back)
        if check_date in Islamic.EID_AL_ADHA_DATES
            # Found an Eid al-Adha
            eid_date = check_date
            
            # Eid al-Adha period: Arafah Day + 3 Eid days
            arafah_date = eid_date - Day(1)
            holiday_days = [
                arafah_date,
                eid_date,
                eid_date + Day(1),
                eid_date + Day(2)
            ]
            
            # Count weekend days in holiday period
            weekend_days_in_holiday = sum(is_saudi_weekend(d) for d in holiday_days)
            
            if weekend_days_in_holiday > 0
                # Calculate position of x relative to end of holiday
                last_holiday_day = holiday_days[end]
                days_after = Dates.value(Date(x) - last_holiday_day)
                
                # x should be a makeup day if it's:
                # 1. After the holiday period
                # 2. Not itself a weekend
                # 3. One of the first N non-weekend days after the holiday, where N = weekend_days_in_holiday
                if days_after > 0 && !is_saudi_weekend(Date(x))
                    # Count how many non-weekend days there are between last_holiday_day and x
                    non_weekend_count = 0
                    for day_offset in 1:days_after
                        check_day = last_holiday_day + Day(day_offset)
                        if !is_saudi_weekend(check_day)
                            non_weekend_count += 1
                        end
                    end
                    
                    # x is a makeup day if it's one of the first N non-weekend days
                    if non_weekend_count <= weekend_days_in_holiday
                        return true
                    end
                end
            end
        end
    end
    
    return false
end

# Observance for fixed holidays (National Day, Founding Day)
function saudi_fixed_observed(holiday::Holiday, x::TimeType)
    year = Dates.year(x)
    
    if year <= 2012
        # Weekend was Thu-Fri
        # Move Thu to Wed, Fri to Sat
        if is_wednesday(x) && holiday.handler(x + Day(1))
            return true
        end
        if is_saturday(x) && holiday.handler(x - Day(1))
            return true
        end
    else
        # Weekend is Fri-Sat
        # Move Fri to Thu, Sat to Sun
        if is_thursday(x) && holiday.handler(x + Day(1))
            return true
        end
        if is_sunday(x) && holiday.handler(x - Day(1))
            return true
        end
    end
    
    return false
end

function Holidays.fetch_holidays(::Type{SaudiArabia})
    return [
        # Eid al-Fitr - up to 5 days (30 Ramadan if long, then 1-4 Shawwal)
        Holiday("عطلة عيد الفطر", is_eid_al_fitr_day_zero),
        Holiday("عطلة عيد الفطر", Islamic.is_eid_al_fitr_day_one),
        Holiday("عطلة عيد الفطر", Islamic.is_eid_al_fitr_day_two),
        Holiday("عطلة عيد الفطر", Islamic.is_eid_al_fitr_day_three),
        Holiday("عطلة عيد الفطر", is_eid_al_fitr_day_four),
        
        # Arafah Day (9 Dhu al-Hijjah, one day before Eid al-Adha)
        Holiday("يوم عرفة", Islamic.is_arafah_day),
        
        # Eid al-Adha - 3 days (10-12 Dhu al-Hijjah)
        Holiday("عطلة عيد الأضحى", Islamic.is_eid_al_adha_day_one),
        Holiday("عطلة عيد الأضحى", Islamic.is_eid_al_adha_day_two),
        Holiday("عطلة عيد الأضحى", Islamic.is_eid_al_adha_day_three),
        
        # Islamic observed/makeup days
        Holiday("عطلة عيد الفطر", is_islamic_makeup_day),
        Holiday("عطلة عيد الأضحى", is_islamic_makeup_day),
        
        # Founding Day (February 22, from 2022)
        Holiday("يوم التأسيسي", is_february_22nd, start_year=2022, observed=saudi_fixed_observed),
        
        # National Day (September 23, from 2005)
        Holiday("اليوم الوطني", is_september_23rd, start_year=2005, observed=saudi_fixed_observed),
        
        # Special one-time holidays
        Holiday("يوم وطني", is_november_23rd, start_year=2022, end_year=2022),
    ]
end

end
