module Islamic

using Dates
using Holidays

include("../dates.jl")
include("islamic_dates.jl")

const Christian = Holidays.Christian

is_eid_al_fitr_day_one(x::TimeType) = x in EID_AL_FITR_DATES

is_eid_al_fitr_day_two(x::TimeType) = (x - Day(1)) in EID_AL_FITR_DATES

is_eid_al_fitr_day_three(x::TimeType) = (x - Day(2)) in EID_AL_FITR_DATES

is_eid_al_adha_day_one(x::TimeType) = x in EID_AL_ADHA_DATES

is_eid_al_adha_day_two(x::TimeType) = (x - Day(1)) in EID_AL_ADHA_DATES

is_eid_al_adha_day_three(x::TimeType) = (x - Day(2)) in EID_AL_ADHA_DATES

is_mawlid_day(x::TimeType) = x in MAWLID_DATES

is_hijri_new_year(x::TimeType) = x in HIJRI_NEW_YEAR_DATES

is_sham_el_nessim(x::TimeType) = Christian.is_easter_monday(x)

end
