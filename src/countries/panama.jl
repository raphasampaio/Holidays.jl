module PanamaHolidays

using Dates
using Holidays

include("../dates.jl")
include("../observed.jl")

const Christian = Holidays.Christian

function Holidays.fetch_holidays(::Type{Holidays.Panama})
    return [
        Holiday("New Year's Day", is_january_1st, observed = next_monday_if_falls_on_sunday),
        Holiday("Martyrs' Day", is_january_9th, observed = next_monday_if_falls_on_sunday, start_year = 1972),
        Holiday("Constitution Day", is_march_1st, only_years = [1970, 1971]),
        Holiday("Carnival Tuesday", Christian.is_shrove_tuesday),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Labor Day", is_may_1st, observed = next_monday_if_falls_on_sunday),
        Holiday(
            "Presidential Inauguration Day",
            is_july_1st,
            only_years = [2014, 2019, 2024],
            observed = next_monday_if_falls_on_sunday,
        ),
        Holiday("Separation Day", is_november_3rd, observed = next_monday_if_falls_on_sunday),
        Holiday("Colon Day", is_november_5th, observed = next_monday_if_falls_on_sunday, start_year = 2002),
        Holiday("Los Santos Uprising Day", is_november_10th, observed = next_monday_if_falls_on_sunday),
        Holiday("Independence Day", is_november_28th, end_year = 1972),
        Holiday("Independence Day", is_november_28th, start_year = 1973, observed = next_monday_if_falls_on_sunday),
        Holiday("Mother's Day", is_december_8th, observed = next_monday_if_falls_on_sunday),
        Holiday(
            "National Mourning Day",
            is_december_20th,
            start_year = 2022,
            observed = next_monday_if_falls_on_sunday,
        ),
        Holiday("Christmas Day", Christian.is_christmas_day, observed = next_monday_if_falls_on_sunday),
    ]
end

end
