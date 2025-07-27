module ThailandHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian
const International = Holidays.International
const Buddhist = Holidays.Buddhist

function is_chakri_day(x::TimeType)
    return is_april(x) && is_day(x, 6)
end

function is_songkran_day(x::TimeType)
    return is_april(x) && is_day_between(x, 13, 15)
end

function is_coronation_day(x::TimeType)
    return is_may(x) && is_day(x, 4)
end

function is_royal_ploughing_ceremony(x::TimeType)
    return is_may(x) && is_day(x, 13)
end

function is_hm_queen_birthday(x::TimeType)
    return is_august(x) && is_day(x, 12)
end

function is_king_chulalongkorn_day(x::TimeType)
    return is_october(x) && is_day(x, 23)
end

function is_hm_king_birthday(x::TimeType)
    return is_july(x) && is_day(x, 28)
end

function is_constitution_day(x::TimeType)
    return is_december(x) && is_day(x, 10)
end

function Holidays.fetch_holidays(::Type{Holidays.Thailand})
    return [
        Holiday("New Year's Day", International.is_new_years_day),
        # Holiday("Makha Bucha Day", Buddhist.is_magha_puja),
        # Holiday("Chakri Day", is_chakri_day),
        # Holiday("Songkran Day (Apr 13)", x -> is_songkran_day(x) && is_day(x, 13)),
        # Holiday("Songkran Day (Apr 14)", x -> is_songkran_day(x) && is_day(x, 14)),
        # Holiday("Songkran Day (Apr 15)", x -> is_songkran_day(x) && is_day(x, 15)),
        # Holiday("Coronation Day", is_coronation_day),
        # Holiday("Royal Ploughing Ceremony", is_royal_ploughing_ceremony),
        # Holiday("Visakha Bucha Day", Buddhist.is_vesak_day),
        # Holiday("Asanha Bucha Day", Buddhist.is_asalha_puja),
        # Holiday("Khao Phansa Day", Buddhist.is_khao_phansa),
        # Holiday("HM Queen's Birthday", is_hm_queen_birthday),
        # Holiday("HM King's Birthday", is_hm_king_birthday),
        # Holiday("King Chulalongkorn Day", is_king_chulalongkorn_day),
        # Holiday("Constitution Day", is_constitution_day),
    ]
end

end
