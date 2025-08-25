module Hindu

using Dates
using Holidays

include("../dates.jl")

const DIWALI_DATES = Dict{Int, Date}(
    2001 => Date(2001, 11, 14),
    2002 => Date(2002, 11, 4),
    2003 => Date(2003, 10, 25),
    2004 => Date(2004, 11, 12),
    2005 => Date(2005, 11, 1),
    2006 => Date(2006, 10, 21),
    2007 => Date(2007, 11, 9),
    2008 => Date(2008, 10, 28),
    2009 => Date(2009, 10, 17),
    2010 => Date(2010, 11, 5),
    2011 => Date(2011, 10, 26),
    2012 => Date(2012, 11, 13),
    2013 => Date(2013, 11, 3),
    2014 => Date(2014, 10, 23),
    2015 => Date(2015, 11, 11),
    2016 => Date(2016, 10, 30),
    2017 => Date(2017, 10, 19),
    2018 => Date(2018, 11, 7),
    2019 => Date(2019, 10, 27),
    2020 => Date(2020, 11, 14),
    2021 => Date(2021, 11, 4),
    2022 => Date(2022, 10, 24),
    2023 => Date(2023, 11, 12),
    2024 => Date(2024, 10, 31),
    2025 => Date(2025, 10, 20),
    2026 => Date(2026, 11, 8),
    2027 => Date(2027, 10, 29),
    2028 => Date(2028, 10, 17),
    2029 => Date(2029, 11, 5),
    2030 => Date(2030, 10, 26),
    2031 => Date(2031, 11, 14),
    2032 => Date(2032, 11, 2),
    2033 => Date(2033, 10, 23),
    2034 => Date(2034, 11, 11),
    2035 => Date(2035, 10, 31),
)

const HOLI_DATES = Dict{Int, Date}(
    2020 => Date(2020, 3, 10),
    2021 => Date(2021, 3, 29),
    2022 => Date(2022, 3, 18),
    2023 => Date(2023, 3, 8),
    2024 => Date(2024, 3, 25),
    2025 => Date(2025, 3, 14),
    2026 => Date(2026, 3, 3),
    2027 => Date(2027, 3, 22),
    2028 => Date(2028, 3, 11),
    2029 => Date(2029, 3, 1),
    2030 => Date(2030, 3, 20),
    2031 => Date(2031, 3, 9),
    2032 => Date(2032, 3, 27),
    2033 => Date(2033, 3, 17),
    2034 => Date(2034, 3, 6),
    2035 => Date(2035, 3, 25),
)

const DUSSEHRA_DATES = Dict{Int, Date}(
    2001 => Date(2001, 10, 26),
    2002 => Date(2002, 10, 15),
    2003 => Date(2003, 10, 5),
    2004 => Date(2004, 10, 22),
    2005 => Date(2005, 10, 12),
    2006 => Date(2006, 10, 2),
    2007 => Date(2007, 10, 21),
    2008 => Date(2008, 10, 9),
    2009 => Date(2009, 9, 28),
    2010 => Date(2010, 10, 17),
    2011 => Date(2011, 10, 6),
    2012 => Date(2012, 10, 24),
    2013 => Date(2013, 10, 13),
    2014 => Date(2014, 10, 3),
    2015 => Date(2015, 10, 22),
    2016 => Date(2016, 10, 11),
    2017 => Date(2017, 9, 30),
    2018 => Date(2018, 10, 19),
    2019 => Date(2019, 10, 8),
    2020 => Date(2020, 10, 25),
    2021 => Date(2021, 10, 15),
    2022 => Date(2022, 10, 5),
    2023 => Date(2023, 10, 24),
    2024 => Date(2024, 10, 12),
    2025 => Date(2025, 10, 2),
    2026 => Date(2026, 10, 20),
    2027 => Date(2027, 10, 9),
    2028 => Date(2028, 9, 27),
    2029 => Date(2029, 10, 16),
    2030 => Date(2030, 10, 6),
    2031 => Date(2031, 10, 26),
    2032 => Date(2032, 10, 14),
    2033 => Date(2033, 10, 4),
    2034 => Date(2034, 10, 23),
    2035 => Date(2035, 10, 12),
)

const JANMASHTAMI_DATES = Dict{Int, Date}(
    2001 => Date(2001, 8, 12),
    2002 => Date(2002, 8, 31),
    2003 => Date(2003, 8, 20),
    2004 => Date(2004, 9, 7),
    2005 => Date(2005, 8, 27),
    2006 => Date(2006, 8, 16),
    2007 => Date(2007, 9, 4),
    2008 => Date(2008, 8, 24),
    2009 => Date(2009, 8, 14),
    2010 => Date(2010, 9, 2),
    2011 => Date(2011, 8, 22),
    2012 => Date(2012, 8, 10),
    2013 => Date(2013, 8, 28),
    2014 => Date(2014, 8, 18),
    2015 => Date(2015, 9, 5),
    2016 => Date(2016, 8, 25),
    2017 => Date(2017, 8, 15),
    2018 => Date(2018, 9, 3),
    2019 => Date(2019, 8, 24),
    2020 => Date(2020, 8, 12),
    2021 => Date(2021, 8, 30),
    2022 => Date(2022, 8, 19),
    2023 => Date(2023, 9, 7),
    2024 => Date(2024, 8, 26),
    2025 => Date(2025, 8, 16),
    2026 => Date(2026, 9, 4),
    2027 => Date(2027, 8, 25),
    2028 => Date(2028, 8, 13),
    2029 => Date(2029, 9, 1),
    2030 => Date(2030, 8, 21),
    2031 => Date(2031, 9, 10),
    2032 => Date(2032, 8, 29),
    2033 => Date(2033, 8, 18),
    2034 => Date(2034, 9, 6),
    2035 => Date(2035, 8, 27),
)

const RAM_NAVAMI_DATES = Dict{Int, Date}(
    2020 => Date(2020, 4, 2),
    2021 => Date(2021, 4, 21),
    2022 => Date(2022, 4, 10),
    2023 => Date(2023, 3, 30),
    2024 => Date(2024, 4, 17),
    2025 => Date(2025, 4, 6),
    2026 => Date(2026, 3, 27),
    2027 => Date(2027, 4, 15),
    2028 => Date(2028, 4, 3),
    2029 => Date(2029, 3, 24),
    2030 => Date(2030, 4, 12),
    2031 => Date(2031, 4, 1),
    2032 => Date(2032, 4, 19),
    2033 => Date(2033, 4, 9),
    2034 => Date(2034, 3, 29),
    2035 => Date(2035, 4, 18),
)

const MAHA_SHIVARATRI_DATES = Dict{Int, Date}(
    2001 => Date(2001, 2, 21),
    2002 => Date(2002, 3, 12),
    2003 => Date(2003, 3, 1),
    2004 => Date(2004, 2, 18),
    2005 => Date(2005, 3, 8),
    2006 => Date(2006, 2, 26),
    2007 => Date(2007, 2, 16),
    2008 => Date(2008, 3, 6),
    2009 => Date(2009, 2, 23),
    2010 => Date(2010, 2, 12),
    2011 => Date(2011, 3, 2),
    2012 => Date(2012, 2, 20),
    2013 => Date(2013, 3, 10),
    2014 => Date(2014, 2, 27),
    2015 => Date(2015, 2, 17),
    2016 => Date(2016, 3, 7),
    2017 => Date(2017, 2, 24),
    2018 => Date(2018, 2, 13),
    2019 => Date(2019, 3, 4),
    2020 => Date(2020, 2, 21),
    2021 => Date(2021, 3, 11),
    2022 => Date(2022, 3, 1),
    2023 => Date(2023, 2, 18),
    2024 => Date(2024, 3, 8),
    2025 => Date(2025, 2, 26),
    2026 => Date(2026, 2, 15),
    2027 => Date(2027, 3, 6),
    2028 => Date(2028, 2, 23),
    2029 => Date(2029, 2, 11),
    2030 => Date(2030, 3, 2),
)

const GURU_NANAK_JAYANTI_DATES = Dict{Int, Date}(
    2001 => Date(2001, 11, 30),
    2002 => Date(2002, 11, 19),
    2003 => Date(2003, 11, 8),
    2004 => Date(2004, 11, 26),
    2005 => Date(2005, 11, 15),
    2006 => Date(2006, 11, 5),
    2007 => Date(2007, 11, 24),
    2008 => Date(2008, 11, 13),
    2009 => Date(2009, 11, 2),
    2010 => Date(2010, 11, 21),
    2011 => Date(2011, 11, 10),
    2012 => Date(2012, 11, 28),
    2013 => Date(2013, 11, 17),
    2014 => Date(2014, 11, 6),
    2015 => Date(2015, 11, 25),
    2016 => Date(2016, 11, 14),
    2017 => Date(2017, 11, 4),
    2018 => Date(2018, 11, 23),
    2019 => Date(2019, 11, 12),
    2020 => Date(2020, 11, 30),
    2021 => Date(2021, 11, 19),
    2022 => Date(2022, 11, 8),
    2023 => Date(2023, 11, 27),
    2024 => Date(2024, 11, 15),
    2025 => Date(2025, 11, 5),
    2027 => Date(2027, 11, 14),
    2028 => Date(2028, 11, 2),
    2029 => Date(2029, 11, 21),
    2030 => Date(2030, 11, 10),
)

const MAHAVIR_JAYANTI_DATES = Dict{Int, Date}(
    2001 => Date(2001, 4, 6),
    2002 => Date(2002, 4, 25),
    2003 => Date(2003, 4, 15),
    2004 => Date(2004, 4, 3),
    2005 => Date(2005, 4, 22),
    2006 => Date(2006, 4, 11),
    2007 => Date(2007, 3, 31),
    2008 => Date(2008, 4, 18),
    2009 => Date(2009, 4, 7),
    2010 => Date(2010, 4, 28),
    2011 => Date(2011, 4, 16),
    2012 => Date(2012, 4, 5),
    2013 => Date(2013, 4, 24),
    2014 => Date(2014, 4, 13),
    2015 => Date(2015, 4, 2),
    2016 => Date(2016, 4, 20),
    2017 => Date(2017, 4, 9),
    2018 => Date(2018, 3, 29),
    2019 => Date(2019, 4, 17),
    2020 => Date(2020, 4, 6),
    2021 => Date(2021, 4, 25),
    2022 => Date(2022, 4, 14),
    2023 => Date(2023, 4, 4),
    2024 => Date(2024, 4, 21),
    2025 => Date(2025, 4, 10),
    2026 => Date(2026, 3, 31),
    2027 => Date(2027, 4, 18),
    2028 => Date(2028, 4, 7),
    2029 => Date(2029, 4, 26),
    2030 => Date(2030, 4, 16),
)

const BUDDHA_PURNIMA_DATES = Dict{Int, Date}(
    2001 => Date(2001, 4, 30),
    2002 => Date(2002, 5, 19),
    2003 => Date(2003, 5, 8),
    2004 => Date(2004, 5, 26),
    2005 => Date(2005, 5, 23),
    2006 => Date(2006, 5, 13),
    2007 => Date(2007, 5, 2),
    2008 => Date(2008, 5, 20),
    2009 => Date(2009, 5, 8),
    2010 => Date(2010, 5, 27),
    2011 => Date(2011, 5, 17),
    2012 => Date(2012, 5, 6),
    2013 => Date(2013, 5, 25),
    2014 => Date(2014, 5, 14),
    2015 => Date(2015, 5, 4),
    2016 => Date(2016, 5, 21),
    2017 => Date(2017, 5, 10),
    2018 => Date(2018, 4, 30),
    2019 => Date(2019, 5, 18),
    2020 => Date(2020, 5, 7),
    2021 => Date(2021, 5, 26),
    2022 => Date(2022, 5, 16),
    2023 => Date(2023, 5, 5),
    2024 => Date(2024, 5, 23),
    2025 => Date(2025, 5, 12),
    2026 => Date(2026, 5, 1),
    2027 => Date(2027, 5, 20),
    2028 => Date(2028, 5, 8),
    2029 => Date(2029, 5, 27),
    2030 => Date(2030, 5, 17),
)

function get_hindu_date(dates_dict::Dict{Int, Date}, x::TimeType, fallback_month::Int, fallback_day::Int)
    year = Dates.year(x)
    if haskey(dates_dict, year)
        return x == dates_dict[year]
    else
        return Dates.month(x) == fallback_month && Dates.day(x) == fallback_day
    end
end

function is_diwali(x::TimeType)
    return get_hindu_date(DIWALI_DATES, x, 11, 4)
end

function is_holi(x::TimeType)
    return get_hindu_date(HOLI_DATES, x, 3, 17)
end

function is_dussehra(x::TimeType)
    return get_hindu_date(DUSSEHRA_DATES, x, 10, 15)
end

function is_janmashtami(x::TimeType)
    return get_hindu_date(JANMASHTAMI_DATES, x, 8, 24)
end

function is_ram_navami(x::TimeType)
    return get_hindu_date(RAM_NAVAMI_DATES, x, 4, 8)
end

function is_maha_shivratri(x::TimeType)
    return get_hindu_date(MAHA_SHIVARATRI_DATES, x, 2, 21)
end

function is_guru_nanak_jayanti(x::TimeType)
    return get_hindu_date(GURU_NANAK_JAYANTI_DATES, x, 11, 15)
end

function is_mahavir_jayanti(x::TimeType)
    return get_hindu_date(MAHAVIR_JAYANTI_DATES, x, 4, 10)
end

function is_buddha_purnima(x::TimeType)
    return get_hindu_date(BUDDHA_PURNIMA_DATES, x, 5, 15)
end

function is_karva_chauth(x::TimeType)
    # Simplified approximation - usually in late October or early November
    return (is_october(x) && Dates.day(x) >= 25) || (is_november(x) && Dates.day(x) <= 15)
end

function is_ganesh_chaturthi(x::TimeType)
    # Simplified approximation - usually in late August or early September
    return (is_august(x) && Dates.day(x) >= 20) || (is_september(x) && Dates.day(x) <= 15)
end

end
