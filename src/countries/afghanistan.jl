module AfghanistanHolidays

using Dates
using Holidays

include("../dates.jl")

const Islamic = Holidays.Islamic

# Afghanistan-specific Islamic holiday dates
# These dates are based on local observation in Afghanistan and may differ from other Islamic countries

# First Day of Ramadan dates for Afghanistan
const RAMADAN_BEGINNING_DATES = Set([
    Date(1970, 11, 1),
    Date(1971, 10, 20),
    Date(1972, 10, 8),
    Date(1973, 9, 27),
    Date(1974, 9, 17),
    Date(1975, 9, 6),
    Date(1976, 8, 26),
    Date(1977, 8, 15),
    Date(1978, 8, 5),
    Date(1979, 7, 25),
    Date(1980, 7, 13),
    Date(1981, 7, 2),
    Date(1982, 6, 22),
    Date(1983, 6, 12),
    Date(1984, 5, 31),
    Date(1985, 5, 20),
    Date(1986, 5, 9),
    Date(1987, 4, 29),
    Date(1988, 4, 17),
    Date(1989, 4, 7),
    Date(1990, 3, 27),
    Date(1991, 3, 17),
    Date(1992, 3, 5),
    Date(1993, 2, 22),
    Date(1994, 2, 11),
    Date(1995, 1, 31),
    Date(1996, 1, 21),
    Date(1997, 1, 10),
    Date(1997, 12, 30),
    Date(1998, 12, 19),
    Date(1999, 12, 9),
    Date(2000, 11, 27),
    Date(2001, 11, 16),
    Date(2002, 11, 6),
    Date(2003, 10, 26),
    Date(2004, 10, 15),
    Date(2005, 10, 4),
    Date(2006, 9, 24),
    Date(2007, 9, 13),
    Date(2008, 9, 1),
    Date(2009, 8, 22),
    Date(2010, 8, 11),
    Date(2011, 8, 1),
    Date(2012, 7, 20),
    Date(2013, 7, 9),
    Date(2014, 6, 29),
    Date(2015, 6, 18),
    Date(2016, 6, 7),
    Date(2017, 5, 27),
    Date(2018, 5, 16),
    Date(2019, 5, 6),
    Date(2020, 4, 24),
    Date(2021, 4, 13),
    Date(2022, 4, 2),
    Date(2023, 3, 23),
    Date(2024, 3, 11),
    Date(2025, 3, 1),
    Date(2026, 2, 18),
    Date(2027, 2, 8),
    Date(2028, 1, 28),
    Date(2029, 1, 16),
    Date(2030, 1, 5),
    Date(2030, 12, 26),
])

# Eid al-Fitr dates for Afghanistan (first day)
const EID_AL_FITR_DATES = Set([
    Date(1970, 11, 30),
    Date(1971, 11, 19),
    Date(1972, 11, 7),
    Date(1973, 10, 27),
    Date(1974, 10, 16),
    Date(1975, 10, 6),
    Date(1976, 9, 24),
    Date(1977, 9, 14),
    Date(1978, 9, 3),
    Date(1979, 8, 23),
    Date(1980, 8, 12),
    Date(1981, 8, 1),
    Date(1982, 7, 21),
    Date(1983, 7, 11),
    Date(1984, 6, 30),
    Date(1985, 6, 19),
    Date(1986, 6, 8),
    Date(1987, 5, 28),
    Date(1988, 5, 16),
    Date(1989, 5, 6),
    Date(1990, 4, 26),
    Date(1991, 4, 15),
    Date(1992, 4, 4),
    Date(1993, 3, 24),
    Date(1994, 3, 13),
    Date(1995, 3, 2),
    Date(1996, 2, 19),
    Date(1997, 2, 8),
    Date(1998, 1, 29),
    Date(1999, 1, 18),
    Date(2000, 1, 8),
    Date(2000, 12, 27),
    Date(2001, 12, 16),
    Date(2002, 12, 5),
    Date(2003, 11, 25),
    Date(2004, 11, 14),
    Date(2005, 11, 3),
    Date(2006, 10, 23),
    Date(2007, 10, 13),
    Date(2008, 10, 1),
    Date(2009, 9, 20),
    Date(2010, 9, 10),
    Date(2011, 8, 30),
    Date(2012, 8, 19),
    Date(2013, 8, 8),
    Date(2014, 7, 29),
    Date(2015, 7, 18),
    Date(2016, 7, 7),
    Date(2017, 6, 26),
    Date(2018, 6, 15),
    Date(2019, 6, 4),
    Date(2020, 5, 24),
    Date(2021, 5, 13),
    Date(2022, 5, 1),
    Date(2023, 4, 22),
    Date(2024, 4, 10),
    Date(2025, 3, 30),
    Date(2026, 3, 20),
    Date(2027, 3, 9),
    Date(2028, 2, 26),
    Date(2029, 2, 14),
    Date(2030, 2, 4),
])

# Day of Arafah dates for Afghanistan
const ARAFAH_DATES = Set([
    Date(1970, 2, 15),
    Date(1971, 2, 5),
    Date(1972, 1, 25),
    Date(1973, 1, 13),
    Date(1974, 1, 2),
    Date(1974, 12, 23),
    Date(1975, 12, 12),
    Date(1976, 11, 30),
    Date(1977, 11, 20),
    Date(1978, 11, 9),
    Date(1979, 10, 30),
    Date(1980, 10, 18),
    Date(1981, 10, 7),
    Date(1982, 9, 26),
    Date(1983, 9, 16),
    Date(1984, 9, 4),
    Date(1985, 8, 25),
    Date(1986, 8, 14),
    Date(1987, 8, 3),
    Date(1988, 7, 22),
    Date(1989, 7, 12),
    Date(1990, 7, 1),
    Date(1991, 6, 21),
    Date(1992, 6, 10),
    Date(1993, 5, 30),
    Date(1994, 5, 19),
    Date(1995, 5, 8),
    Date(1996, 4, 26),
    Date(1997, 4, 16),
    Date(1998, 4, 6),
    Date(1999, 3, 26),
    Date(2000, 3, 15),
    Date(2001, 3, 4),
    Date(2002, 2, 21),
    Date(2003, 2, 10),
    Date(2004, 1, 31),
    Date(2005, 1, 20),
    Date(2006, 1, 9),
    Date(2006, 12, 30),
    Date(2007, 12, 19),
    Date(2008, 12, 7),
    Date(2009, 11, 26),
    Date(2010, 11, 15),
    Date(2011, 11, 5),
    Date(2012, 10, 25),
    Date(2013, 10, 14),
    Date(2014, 10, 4),
    Date(2015, 9, 22),
    Date(2016, 9, 12),
    Date(2017, 9, 1),
    Date(2018, 8, 21),
    Date(2019, 8, 10),
    Date(2020, 7, 30),
    Date(2021, 7, 19),
    Date(2022, 7, 8),
    Date(2023, 6, 27),
    Date(2024, 6, 16),
    Date(2025, 6, 5),
    Date(2026, 5, 26),
    Date(2027, 5, 15),
    Date(2028, 5, 4),
    Date(2029, 4, 23),
    Date(2030, 4, 12),
])

# Eid al-Adha dates for Afghanistan (first day)
const EID_AL_ADHA_DATES = Set([
    Date(1970, 2, 16),
    Date(1971, 2, 6),
    Date(1972, 1, 26),
    Date(1973, 1, 14),
    Date(1974, 1, 3),
    Date(1974, 12, 24),
    Date(1975, 12, 13),
    Date(1976, 12, 1),
    Date(1977, 11, 21),
    Date(1978, 11, 10),
    Date(1979, 10, 31),
    Date(1980, 10, 19),
    Date(1981, 10, 8),
    Date(1982, 9, 27),
    Date(1983, 9, 17),
    Date(1984, 9, 5),
    Date(1985, 8, 26),
    Date(1986, 8, 15),
    Date(1987, 8, 4),
    Date(1988, 7, 23),
    Date(1989, 7, 13),
    Date(1990, 7, 2),
    Date(1991, 6, 22),
    Date(1992, 6, 11),
    Date(1993, 5, 31),
    Date(1994, 5, 20),
    Date(1995, 5, 9),
    Date(1996, 4, 27),
    Date(1997, 4, 17),
    Date(1998, 4, 7),
    Date(1999, 3, 27),
    Date(2000, 3, 16),
    Date(2001, 3, 5),
    Date(2002, 2, 22),
    Date(2003, 2, 11),
    Date(2004, 2, 1),
    Date(2005, 1, 21),
    Date(2006, 1, 10),
    Date(2006, 12, 31),
    Date(2007, 12, 20),
    Date(2008, 12, 8),
    Date(2009, 11, 27),
    Date(2010, 11, 16),
    Date(2011, 11, 6),
    Date(2012, 10, 26),
    Date(2013, 10, 15),
    Date(2014, 10, 5),
    Date(2015, 9, 23),
    Date(2016, 9, 13),
    Date(2017, 9, 2),
    Date(2018, 8, 22),
    Date(2019, 8, 11),
    Date(2020, 7, 31),
    Date(2021, 7, 20),
    Date(2022, 7, 9),
    Date(2023, 6, 28),
    Date(2024, 6, 17),
    Date(2025, 6, 6),
    Date(2026, 5, 27),
    Date(2027, 5, 16),
    Date(2028, 5, 5),
    Date(2029, 4, 24),
    Date(2030, 4, 13),
])

# Ashura dates for Afghanistan
const ASHURA_DATES = Set([
    Date(1970, 3, 18),
    Date(1971, 3, 7),
    Date(1972, 2, 25),
    Date(1973, 2, 13),
    Date(1974, 2, 2),
    Date(1975, 1, 22),
    Date(1976, 1, 11),
    Date(1976, 12, 31),
    Date(1977, 12, 20),
    Date(1978, 12, 10),
    Date(1979, 11, 29),
    Date(1980, 11, 18),
    Date(1981, 11, 6),
    Date(1982, 10, 27),
    Date(1983, 10, 16),
    Date(1984, 10, 5),
    Date(1985, 9, 24),
    Date(1986, 9, 14),
    Date(1987, 9, 3),
    Date(1988, 8, 22),
    Date(1989, 8, 11),
    Date(1990, 8, 1),
    Date(1991, 7, 21),
    Date(1992, 7, 10),
    Date(1993, 6, 30),
    Date(1994, 6, 19),
    Date(1995, 6, 8),
    Date(1996, 5, 27),
    Date(1997, 5, 16),
    Date(1998, 5, 6),
    Date(1999, 4, 26),
    Date(2000, 4, 15),
    Date(2001, 4, 4),
    Date(2002, 3, 24),
    Date(2003, 3, 13),
    Date(2004, 3, 1),
    Date(2005, 2, 19),
    Date(2006, 2, 9),
    Date(2007, 1, 29),
    Date(2008, 1, 19),
    Date(2009, 1, 7),
    Date(2009, 12, 27),
    Date(2010, 12, 16),
    Date(2011, 12, 5),
    Date(2012, 11, 24),
    Date(2013, 11, 13),
    Date(2014, 11, 3),
    Date(2015, 10, 24),
    Date(2016, 10, 12),
    Date(2017, 10, 1),
    Date(2018, 9, 21),
    Date(2019, 9, 10),
    Date(2020, 8, 30),
    Date(2021, 8, 19),
])

# Mawlid (Prophet's Birthday) dates for Afghanistan
const MAWLID_DATES = Set([
    Date(1970, 5, 18),
    Date(1971, 5, 7),
    Date(1972, 4, 25),
    Date(1973, 4, 15),
    Date(1974, 4, 4),
    Date(1975, 3, 24),
    Date(1976, 3, 12),
    Date(1977, 3, 2),
    Date(1978, 2, 19),
    Date(1979, 2, 9),
    Date(1980, 1, 30),
    Date(1981, 1, 18),
    Date(1982, 1, 7),
    Date(1982, 12, 27),
    Date(1983, 12, 16),
    Date(1984, 12, 4),
    Date(1985, 11, 24),
    Date(1986, 11, 14),
    Date(1987, 11, 3),
    Date(1988, 10, 22),
    Date(1989, 10, 11),
    Date(1990, 10, 1),
    Date(1991, 9, 20),
    Date(1992, 9, 9),
    Date(1993, 8, 29),
    Date(1994, 8, 19),
    Date(1995, 8, 8),
    Date(1996, 7, 27),
    Date(1997, 7, 16),
    Date(1998, 7, 6),
    Date(1999, 6, 26),
    Date(2000, 6, 14),
    Date(2001, 6, 4),
    Date(2002, 5, 24),
    Date(2003, 5, 13),
    Date(2004, 5, 1),
    Date(2005, 4, 21),
    Date(2006, 4, 10),
    Date(2007, 3, 31),
    Date(2008, 3, 20),
    Date(2009, 3, 9),
    Date(2010, 2, 26),
    Date(2011, 2, 15),
    Date(2012, 2, 4),
    Date(2013, 1, 24),
    Date(2014, 1, 14),
    Date(2015, 1, 3),
    Date(2015, 12, 24),
    Date(2016, 12, 12),
    Date(2017, 12, 1),
    Date(2018, 11, 21),
    Date(2019, 11, 10),
    Date(2020, 10, 29),
    Date(2021, 10, 19),
    Date(2022, 10, 8),
    Date(2023, 9, 27),
    Date(2024, 9, 16),
    Date(2025, 9, 4),
    Date(2026, 8, 25),
    Date(2027, 8, 14),
    Date(2028, 8, 3),
    Date(2029, 7, 24),
    Date(2030, 7, 13),
])

# Helper functions for Afghanistan-specific Islamic holidays
is_ramadan_beginning_day(x::TimeType) = x in RAMADAN_BEGINNING_DATES
is_eid_al_fitr_day_one(x::TimeType) = x in EID_AL_FITR_DATES
is_eid_al_fitr_day_two(x::TimeType) = (x - Day(1)) in EID_AL_FITR_DATES
is_eid_al_fitr_day_three(x::TimeType) = (x - Day(2)) in EID_AL_FITR_DATES
is_arafah_day(x::TimeType) = x in ARAFAH_DATES
is_eid_al_adha_day_one(x::TimeType) = x in EID_AL_ADHA_DATES
is_eid_al_adha_day_two(x::TimeType) = (x - Day(1)) in EID_AL_ADHA_DATES
is_eid_al_adha_day_three(x::TimeType) = (x - Day(2)) in EID_AL_ADHA_DATES
is_ashura_day(x::TimeType) = x in ASHURA_DATES
is_mawlid_day(x::TimeType) = x in MAWLID_DATES

# Helper functions for fixed holidays
function is_liberation_day(x::TimeType)
    year = Dates.year(x)
    return year >= 1989 && is_february(x) && is_day(x, 15)
end

function is_nowruz(x::TimeType)
    year = Dates.year(x)
    # Nowruz is celebrated up to 1996, or from 2001 to 2020
    if year <= 1996 || (2001 <= year <= 2020)
        # March 20 in specific years (based on astronomical calculations), March 21 otherwise
        # Years with March 20: 1996, 2004, 2008, 2012, 2016, 2020
        if year in (1996, 2004, 2008, 2012, 2016, 2020)
            return is_march(x) && is_day(x, 20)
        else
            return is_march(x) && is_day(x, 21)
        end
    end
    return false
end

function is_mujahideen_victory_day(x::TimeType)
    year = Dates.year(x)
    return year >= 1992 && is_april(x) && is_day(x, 28)
end

function is_workers_day(x::TimeType)
    year = Dates.year(x)
    return ((1974 <= year <= 1996) || (2002 <= year <= 2021)) && is_may(x) && is_day(x, 1)
end

function is_soviet_victory_day(x::TimeType)
    year = Dates.year(x)
    return (1978 <= year <= 1988) && is_may(x) && is_day(x, 9)
end

function is_islamic_emirate_victory_day(x::TimeType)
    year = Dates.year(x)
    # Islamic Emirate Victory Day varies between Aug 14 and Aug 15
    # Based on Afghan solar calendar conversion
    if year >= 2022
        # Years with August 14: 2024, 2028, 2029
        if year in (2024, 2028, 2029)
            return is_august(x) && is_day(x, 14)
        else
            return is_august(x) && is_day(x, 15)
        end
    end
    return false
end

function is_american_withdrawal_day(x::TimeType)
    year = Dates.year(x)
    return year >= 2022 && is_august(x) && is_day(x, 31)
end

function is_martyrs_day(x::TimeType)
    year = Dates.year(x)
    return (2012 <= year <= 2020) && is_september(x) && is_day(x, 9)
end

function is_ashura_holiday(x::TimeType)
    year = Dates.year(x)
    # Ashura is observed up to 2021
    return year <= 2021 && is_ashura_day(x)
end

function Holidays.fetch_holidays(::Type{Holidays.Afghanistan})
    return [
        # Fixed holidays
        Holiday("روز آزادی", is_liberation_day),
        Holiday("روز استقلال افغانستان", is_august_19th),
        Holiday("نوروز", is_nowruz),
        Holiday("روز پیروزی مجاهدین", is_mujahideen_victory_day),
        Holiday("روز جهانی کارگر", is_workers_day),
        Holiday("روز پیروزی شوروی", is_soviet_victory_day),
        Holiday("روز پیروزی امارت اسلامی", is_islamic_emirate_victory_day),
        Holiday("روز خروج آمریکایی ها", is_american_withdrawal_day),
        Holiday("روز شهیدان", is_martyrs_day),

        # Islamic holidays
        Holiday("عاشورا", is_ashura_holiday),
        Holiday("میلاد پیامبر", is_mawlid_day),
        Holiday("اول رمضان", is_ramadan_beginning_day),
        Holiday("عید فطر", is_eid_al_fitr_day_one),
        Holiday("عید فطر", is_eid_al_fitr_day_two),
        Holiday("عید فطر", is_eid_al_fitr_day_three),
        Holiday("روز عرفه", is_arafah_day),
        Holiday("عید قربانی", is_eid_al_adha_day_one),
        Holiday("عید قربانی", is_eid_al_adha_day_two),
        Holiday("عید قربانی", is_eid_al_adha_day_three),
    ]
end

end
