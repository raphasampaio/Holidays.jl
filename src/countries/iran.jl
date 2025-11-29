module IranHolidays

using Dates
using Holidays

include("../dates.jl")
include("iran/iran_islamic_dates.jl")

const Islamic = Holidays.Islamic
const Persian = Holidays.Persian

# Iran-specific Islamic calendar functions
# These check Iran-specific date overrides first, then fall back to global Islamic calendar

function iran_islamic_holiday(iran_dates::Set{Date}, global_check::Function, x::TimeType)
    date = Date(x)
    year = Dates.year(date)

    # Check if this year has any Iran-specific overrides
    has_override_for_year = any(d -> Dates.year(d) == year, iran_dates)

    if has_override_for_year
        # Year has Iran-specific date(s), only use those (ignore global calendar)
        return date in iran_dates
    else
        # No Iran-specific override for this year, use global Islamic calendar
        return global_check(x)
    end
end

# Create Iran-specific functions for each Islamic holiday
iran_ali_al_rida_death(x::TimeType) = iran_islamic_holiday(IRAN_ALI_AL_RIDA_DEATH_DATES, Islamic.is_ali_al_rida_death, x)
iran_ali_birthday(x::TimeType) = iran_islamic_holiday(IRAN_ALI_BIRTHDAY_DATES, Islamic.is_ali_birthday, x)
iran_ali_death(x::TimeType) = iran_islamic_holiday(IRAN_ALI_DEATH_DATES, Islamic.is_ali_death, x)
iran_arbaeen(x::TimeType) = iran_islamic_holiday(IRAN_ARBAEEN_DATES, Islamic.is_arbaeen, x)
iran_ashura(x::TimeType) = iran_islamic_holiday(IRAN_ASHURA_DATES, Islamic.is_ashura, x)
iran_eid_al_adha(x::TimeType) = iran_islamic_holiday(IRAN_EID_AL_ADHA_DATES, Islamic.is_eid_al_adha_day_one, x)
iran_eid_al_fitr(x::TimeType) = iran_islamic_holiday(IRAN_EID_AL_FITR_DATES, Islamic.is_eid_al_fitr_day_one, x)
iran_eid_al_ghadir(x::TimeType) = iran_islamic_holiday(IRAN_EID_AL_GHADIR_DATES, Islamic.is_eid_al_ghadir, x)
iran_fatima_death(x::TimeType) = iran_islamic_holiday(IRAN_FATIMA_DEATH_DATES, Islamic.is_fatima_death, x)
iran_hasan_al_askari_death(x::TimeType) = iran_islamic_holiday(IRAN_HASAN_AL_ASKARI_DEATH_DATES, Islamic.is_hasan_al_askari_death, x)
iran_mahdi_birthday(x::TimeType) = iran_islamic_holiday(IRAN_IMAM_MAHDI_BIRTHDAY_DATES, Islamic.is_mahdi_birthday, x)
iran_isra_and_miraj(x::TimeType) = iran_islamic_holiday(IRAN_ISRA_AND_MIRAJ_DATES, Islamic.is_isra_and_miraj, x)
iran_prophet_death(x::TimeType) = iran_islamic_holiday(IRAN_PROPHET_DEATH_DATES, Islamic.is_prophet_death_day, x)
iran_sadiq_birthday(x::TimeType) = iran_islamic_holiday(IRAN_SADIQ_BIRTHDAY_DATES, Islamic.is_sadiq_birthday, x)
iran_sadiq_death(x::TimeType) = iran_islamic_holiday(IRAN_SADIQ_DEATH_DATES, Islamic.is_sadiq_death, x)
iran_tasua(x::TimeType) = iran_islamic_holiday(IRAN_TASUA_DATES, Islamic.is_tasua, x)

# Eid al-Fitr day 2 (Holiday) - one day after Iran-specific Eid al-Fitr
iran_eid_al_fitr_day_two(x::TimeType) = iran_eid_al_fitr(x - Day(1))

function Holidays.fetch_holidays(::Type{Holidays.Iran})
    return [
        # Persian calendar holidays
        Holiday("Islamic Revolution Day", Persian.is_islamic_revolution_day, start_year = 1980),
        Holiday("Iranian Oil Industry Nationalization Day", Persian.is_oil_nationalization_day, start_year = 1980),
        Holiday("Last Day of Year", Persian.is_last_day_of_year, start_year = 1980),
        Holiday("Nowruz", Persian.is_nowruz, start_year = 1980),
        Holiday("Nowruz Holiday", Persian.is_nowruz_day_two, start_year = 1980),
        Holiday("Nowruz Holiday", Persian.is_nowruz_day_three, start_year = 1980),
        Holiday("Nowruz Holiday", Persian.is_nowruz_day_four, start_year = 1980),
        Holiday("Islamic Republic Day", Persian.is_islamic_republic_day, start_year = 1980),
        Holiday("Nature's Day", Persian.is_natures_day, start_year = 1980),
        Holiday("Death of Imam Khomeini", Persian.is_khomeini_death_day, start_year = 1980),
        Holiday("15 Khordad Uprising", Persian.is_khordad_uprising_day, start_year = 1980),

        # Islamic calendar holidays - All use Iran-specific date overrides
        Holiday("Arbaeen", iran_arbaeen, start_year = 1980),
        Holiday("Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali", iran_prophet_death, start_year = 1980),
        Holiday("Martyrdom of Ali al-Rida", iran_ali_al_rida_death, start_year = 1980),
        Holiday("Martyrdom of Hasan al-Askari", iran_hasan_al_askari_death, start_year = 1980),
        Holiday("Birthday of Muhammad and Imam Ja'far al-Sadiq", iran_sadiq_birthday, start_year = 1980),
        Holiday("Martyrdom of Fatima", iran_fatima_death, start_year = 1980),
        Holiday("Birthday of Imam Ali", iran_ali_birthday, start_year = 1980),
        Holiday("Isra' and Mi'raj", iran_isra_and_miraj, start_year = 1980),
        Holiday("Birthday of Mahdi", iran_mahdi_birthday, start_year = 1980),
        Holiday("Martyrdom of Imam Ali", iran_ali_death, start_year = 1980),
        Holiday("Eid al-Fitr", iran_eid_al_fitr, start_year = 1980),
        Holiday("Eid al-Fitr Holiday", iran_eid_al_fitr_day_two, start_year = 1980),
        Holiday("Martyrdom of Imam Ja'far al-Sadiq", iran_sadiq_death, start_year = 1980),
        Holiday("Eid al-Adha", iran_eid_al_adha, start_year = 1980),
        Holiday("Eid al-Ghadeer", iran_eid_al_ghadir, start_year = 1980),
        Holiday("Tasua", iran_tasua, start_year = 1980),
        Holiday("Ashura", iran_ashura, start_year = 1980),
    ]
end

end
