module MalawiHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Malawi})
    return [
        Holiday("New Year's Day", is_january_1st, start_year = 2000),
    ]
end

end
