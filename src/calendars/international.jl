module International

using Dates

function is_womens_day(x::Date)
    return Dates.month(x) == Dates.Mar && Dates.day(x) == 8
end

function is_workers_day(x::Date)
    return Dates.month(x) == Dates.May && Dates.day(x) == 1
end

end
