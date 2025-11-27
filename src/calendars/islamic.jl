module Islamic

using Dates
using Holidays

include("../dates.jl")

include("islamic/ali_al_rida_death_dates.jl")
include("islamic/ali_birthday_dates.jl")
include("islamic/ali_death_dates.jl")
include("islamic/arafah_day_dates.jl")
include("islamic/arbaeen_dates.jl")
include("islamic/ashura_dates.jl")
include("islamic/eid_al_adha_dates.jl")
include("islamic/eid_al_fitr_dates.jl")
include("islamic/eid_al_ghadir_dates.jl")
include("islamic/fatima_death_dates.jl")
include("islamic/hari_hol_johor_dates.jl")
include("islamic/hasan_al_askari_death_dates.jl")
include("islamic/hijri_new_year_dates.jl")
include("islamic/imam_mahdi_birthday_dates.jl")
include("islamic/isra_and_miraj_dates.jl")
include("islamic/maldives_embraced_islam_day_dates.jl")
include("islamic/mawlid_dates.jl")
include("islamic/nuzul_al_quran_dates.jl")
include("islamic/prophet_death_dates.jl")
include("islamic/quamee_dhuvas_dates.jl")
include("islamic/ramadan_beginning_dates.jl")
include("islamic/sadiq_birthday_dates.jl")
include("islamic/sadiq_death_dates.jl")
include("islamic/tasua_dates.jl")

const Christian = Holidays.Christian

is_eid_al_fitr_day_one(x::TimeType) = x in EID_AL_FITR_DATES

is_eid_al_fitr_day_two(x::TimeType) = (x - Day(1)) in EID_AL_FITR_DATES

is_eid_al_fitr_day_three(x::TimeType) = (x - Day(2)) in EID_AL_FITR_DATES

is_eid_al_fitr_day_four(x::TimeType) = (x - Day(3)) in Islamic.EID_AL_FITR_DATES

is_eid_al_adha_day_one(x::TimeType) = x in EID_AL_ADHA_DATES

is_eid_al_adha_day_two(x::TimeType) = (x - Day(1)) in EID_AL_ADHA_DATES

is_eid_al_adha_day_three(x::TimeType) = (x - Day(2)) in EID_AL_ADHA_DATES

is_eid_al_adha_day_four(x::TimeType) = (x - Day(3)) in Islamic.EID_AL_ADHA_DATES

is_arafah_day(x::TimeType) = x in ARAFAH_DAY_DATES

is_mawlid_day(x::TimeType) = x in MAWLID_DATES

is_hijri_new_year(x::TimeType) = x in HIJRI_NEW_YEAR_DATES

is_sham_el_nessim(x::TimeType) = Christian.is_easter_monday(x)

is_ramadan_beginning_day(x::TimeType) = x in RAMADAN_BEGINNING_DATES

is_arbaeen(x::TimeType) = x in ARBAEEN_DATES

is_tasua(x::TimeType) = x in TASUA_DATES

is_ashura(x::TimeType) = x in ASHURA_DATES

is_prophet_death_day(x::TimeType) = x in PROPHET_DEATH_DATES

is_ali_al_rida_death(x::TimeType) = x in ALI_AL_RIDA_DEATH_DATES

is_hasan_al_askari_death(x::TimeType) = x in HASAN_AL_ASKARI_DEATH_DATES

is_sadiq_birthday(x::TimeType) = x in SADIQ_BIRTHDAY_DATES

is_fatima_death(x::TimeType) = x in FATIMA_DEATH_DATES

is_ali_birthday(x::TimeType) = x in ALI_BIRTHDAY_DATES

is_isra_and_miraj(x::TimeType) = x in ISRA_AND_MIRAJ_DATES

is_mahdi_birthday(x::TimeType) = x in IMAM_MAHDI_BIRTHDAY_DATES

is_ali_death(x::TimeType) = x in ALI_DEATH_DATES

is_sadiq_death(x::TimeType) = x in SADIQ_DEATH_DATES

is_eid_al_ghadir(x::TimeType) = x in EID_AL_GHADIR_DATES

end
