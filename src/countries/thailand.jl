module ThailandHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International
const Buddhist = Holidays.Buddhist

const Thailand = Holidays.Thailand

function is_chakri_day(x::TimeType)
    return is_april(x) && Dates.day(x) == 6
end

function is_songkran_day(x::TimeType)
    return is_april(x) && (Dates.day(x) >= 13 && Dates.day(x) <= 15)
end

function is_coronation_day(x::TimeType)
    return is_may(x) && Dates.day(x) == 4
end

function is_royal_ploughing_ceremony(x::TimeType)
    return is_may(x) && Dates.day(x) == 13
end

function is_hm_queen_birthday(x::TimeType)
    return is_august(x) && Dates.day(x) == 12
end

function is_king_chulalongkorn_day(x::TimeType)
    return is_october(x) && Dates.day(x) == 23
end

function is_hm_king_birthday(x::TimeType)
    return is_july(x) && Dates.day(x) == 28
end

function is_constitution_day(x::TimeType)
    return is_december(x) && Dates.day(x) == 10
end

function Holidays.fetch_holidays(::Type{Thailand})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Makha Bucha Day", Buddhist.is_magha_puja),
        Holiday("Chakri Day", is_chakri_day),
        Holiday("Songkran Day (Apr 13)", x -> is_songkran_day(x) && Dates.day(x) == 13),
        Holiday("Songkran Day (Apr 14)", x -> is_songkran_day(x) && Dates.day(x) == 14),
        Holiday("Songkran Day (Apr 15)", x -> is_songkran_day(x) && Dates.day(x) == 15),
        Holiday("Coronation Day", is_coronation_day),
        Holiday("Royal Ploughing Ceremony", is_royal_ploughing_ceremony),
        Holiday("Visakha Bucha Day", Buddhist.is_vesak_day),
        Holiday("Asanha Bucha Day", Buddhist.is_asalha_puja),
        Holiday("Khao Phansa Day", Buddhist.is_khao_phansa),
        Holiday("HM Queen's Birthday", is_hm_queen_birthday),
        Holiday("HM King's Birthday", is_hm_king_birthday),
        Holiday("King Chulalongkorn Day", is_king_chulalongkorn_day),
        Holiday("Constitution Day", is_constitution_day),
    ]
end

end
