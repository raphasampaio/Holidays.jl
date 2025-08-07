module NewZealandHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian

function Holidays.fetch_holidays(::Type{Holidays.NewZealand})
    return [
        Holiday("New Year's Day", is_january_1st),
    ]
end

end
