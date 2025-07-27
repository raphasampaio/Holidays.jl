module MalawiHolidays

using Dates
using Holidays

include("../dates.jl")

function Holidays.fetch_holidays(::Type{Holidays.Malawi})
    return [
        Holiday("New Year's Day", 2000, is_january_1st),
    ]
end

end
