module ThailandHolidays

using Dates
using Holidays

const Christian = Holidays.Christian
const Gregorian = Holidays.Gregorian
const International = Holidays.International

const Thailand = Holidays.Thailand

function is_makha_bucha_day(x::TimeType)
    # Buddhist holiday - simplified to February 24
    return Dates.month(x) == Dates.Feb && Dates.day(x) == 24
end

function is_chakri_day(x::TimeType)
    return Dates.month(x) == Dates.Apr && Dates.day(x) == 6
end

function is_songkran_day(x::TimeType)
    return Dates.month(x) == Dates.Apr && (Dates.day(x) >= 13 && Dates.day(x) <= 15)
end

function is_coronation_day(x::TimeType)
    return Dates.month(x) == Dates.May && Dates.day(x) == 4
end

function is_visakha_bucha_day(x::TimeType)
    # Buddhist holiday - simplified to May 22
    return Dates.month(x) == Dates.May && Dates.day(x) == 22
end

function is_royal_ploughing_ceremony(x::TimeType)
    # Simplified to May 13
    return Dates.month(x) == Dates.May && Dates.day(x) == 13
end

function is_asanha_bucha_day(x::TimeType)
    # Buddhist holiday - simplified to July 20
    return Dates.month(x) == Dates.Jul && Dates.day(x) == 20
end

function is_khao_phansa_day(x::TimeType)
    # Buddhist Lent Day - day after Asanha Bucha
    return Dates.month(x) == Dates.Jul && Dates.day(x) == 21
end

function is_hm_queen_birthday(x::TimeType)
    return Dates.month(x) == Dates.Aug && Dates.day(x) == 12
end

function is_king_chulalongkorn_day(x::TimeType)
    return Dates.month(x) == Dates.Oct && Dates.day(x) == 23
end

function is_hm_king_birthday(x::TimeType)
    return Dates.month(x) == Dates.Jul && Dates.day(x) == 28
end

function is_constitution_day(x::TimeType)
    return Dates.month(x) == Dates.Dec && Dates.day(x) == 10
end

function Holidays.fetch_holidays(::Type{Thailand})
    return [
        Holiday("New Year's Day", Gregorian.is_new_years_day),
        Holiday("Makha Bucha Day", is_makha_bucha_day),
        Holiday("Chakri Day", is_chakri_day),
        Holiday("Songkran Day (Apr 13)", x -> is_songkran_day(x) && Dates.day(x) == 13),
        Holiday("Songkran Day (Apr 14)", x -> is_songkran_day(x) && Dates.day(x) == 14),
        Holiday("Songkran Day (Apr 15)", x -> is_songkran_day(x) && Dates.day(x) == 15),
        Holiday("Coronation Day", is_coronation_day),
        Holiday("Royal Ploughing Ceremony", is_royal_ploughing_ceremony),
        Holiday("Visakha Bucha Day", is_visakha_bucha_day),
        Holiday("Asanha Bucha Day", is_asanha_bucha_day),
        Holiday("Khao Phansa Day", is_khao_phansa_day),
        Holiday("HM Queen's Birthday", is_hm_queen_birthday),
        Holiday("HM King's Birthday", is_hm_king_birthday),
        Holiday("King Chulalongkorn Day", is_king_chulalongkorn_day),
        Holiday("Constitution Day", is_constitution_day),
    ]
end

end
