module TestBrazil

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Brazil" begin
    calendar = Holidays.Brazil()

    holidays = [
        Date(1990, 1, 1), # Universal Fraternization Day
        Date(1990, 4, 13), # Good Friday
        Date(1990, 4, 21), # Tiradentes' Day
        Date(1990, 5, 1), # Worker's Day
        Date(1990, 9, 7), # Independence Day
        Date(1990, 10, 12), # Our Lady of Aparecida
        Date(1990, 11, 2), # All Souls' Day
        Date(1990, 11, 15), # Republic Proclamation Day
        Date(1990, 12, 25), # Christmas Day
        Date(1991, 1, 1), # Universal Fraternization Day
        Date(1991, 3, 29), # Good Friday
        Date(1991, 4, 21), # Tiradentes' Day
        Date(1991, 5, 1), # Worker's Day
        Date(1991, 9, 7), # Independence Day
        Date(1991, 10, 12), # Our Lady of Aparecida
        Date(1991, 11, 2), # All Souls' Day
        Date(1991, 11, 15), # Republic Proclamation Day
        Date(1991, 12, 25), # Christmas Day
        Date(1992, 1, 1), # Universal Fraternization Day
        Date(1992, 4, 17), # Good Friday
        Date(1992, 4, 21), # Tiradentes' Day
        Date(1992, 5, 1), # Worker's Day
        Date(1992, 9, 7), # Independence Day
        Date(1992, 10, 12), # Our Lady of Aparecida
        Date(1992, 11, 2), # All Souls' Day
        Date(1992, 11, 15), # Republic Proclamation Day
        Date(1992, 12, 25), # Christmas Day
        Date(1993, 1, 1), # Universal Fraternization Day
        Date(1993, 4, 9), # Good Friday
        Date(1993, 4, 21), # Tiradentes' Day
        Date(1993, 5, 1), # Worker's Day
        Date(1993, 9, 7), # Independence Day
        Date(1993, 10, 12), # Our Lady of Aparecida
        Date(1993, 11, 2), # All Souls' Day
        Date(1993, 11, 15), # Republic Proclamation Day
        Date(1993, 12, 25), # Christmas Day
        Date(1994, 1, 1), # Universal Fraternization Day
        Date(1994, 4, 1), # Good Friday
        Date(1994, 4, 21), # Tiradentes' Day
        Date(1994, 5, 1), # Worker's Day
        Date(1994, 9, 7), # Independence Day
        Date(1994, 10, 12), # Our Lady of Aparecida
        Date(1994, 11, 2), # All Souls' Day
        Date(1994, 11, 15), # Republic Proclamation Day
        Date(1994, 12, 25), # Christmas Day
        Date(1995, 1, 1), # Universal Fraternization Day
        Date(1995, 4, 14), # Good Friday
        Date(1995, 4, 21), # Tiradentes' Day
        Date(1995, 5, 1), # Worker's Day
        Date(1995, 9, 7), # Independence Day
        Date(1995, 10, 12), # Our Lady of Aparecida
        Date(1995, 11, 2), # All Souls' Day
        Date(1995, 11, 15), # Republic Proclamation Day
        Date(1995, 12, 25), # Christmas Day
        Date(1996, 1, 1), # Universal Fraternization Day
        Date(1996, 4, 5), # Good Friday
        Date(1996, 4, 21), # Tiradentes' Day
        Date(1996, 5, 1), # Worker's Day
        Date(1996, 9, 7), # Independence Day
        Date(1996, 10, 12), # Our Lady of Aparecida
        Date(1996, 11, 2), # All Souls' Day
        Date(1996, 11, 15), # Republic Proclamation Day
        Date(1996, 12, 25), # Christmas Day
        Date(1997, 1, 1), # Universal Fraternization Day
        Date(1997, 3, 28), # Good Friday
        Date(1997, 4, 21), # Tiradentes' Day
        Date(1997, 5, 1), # Worker's Day
        Date(1997, 9, 7), # Independence Day
        Date(1997, 10, 12), # Our Lady of Aparecida
        Date(1997, 11, 2), # All Souls' Day
        Date(1997, 11, 15), # Republic Proclamation Day
        Date(1997, 12, 25), # Christmas Day
        Date(1998, 1, 1), # Universal Fraternization Day
        Date(1998, 4, 10), # Good Friday
        Date(1998, 4, 21), # Tiradentes' Day
        Date(1998, 5, 1), # Worker's Day
        Date(1998, 9, 7), # Independence Day
        Date(1998, 10, 12), # Our Lady of Aparecida
        Date(1998, 11, 2), # All Souls' Day
        Date(1998, 11, 15), # Republic Proclamation Day
        Date(1998, 12, 25), # Christmas Day
        Date(1999, 1, 1), # Universal Fraternization Day
        Date(1999, 4, 2), # Good Friday
        Date(1999, 4, 21), # Tiradentes' Day
        Date(1999, 5, 1), # Worker's Day
        Date(1999, 9, 7), # Independence Day
        Date(1999, 10, 12), # Our Lady of Aparecida
        Date(1999, 11, 2), # All Souls' Day
        Date(1999, 11, 15), # Republic Proclamation Day
        Date(1999, 12, 25), # Christmas Day
        Date(2000, 1, 1), # Universal Fraternization Day
        Date(2000, 4, 21), # Good Friday; Tiradentes' Day
        Date(2000, 5, 1), # Worker's Day
        Date(2000, 9, 7), # Independence Day
        Date(2000, 10, 12), # Our Lady of Aparecida
        Date(2000, 11, 2), # All Souls' Day
        Date(2000, 11, 15), # Republic Proclamation Day
        Date(2000, 12, 25), # Christmas Day
        Date(2001, 1, 1), # Universal Fraternization Day
        Date(2001, 4, 13), # Good Friday
        Date(2001, 4, 21), # Tiradentes' Day
        Date(2001, 5, 1), # Worker's Day
        Date(2001, 9, 7), # Independence Day
        Date(2001, 10, 12), # Our Lady of Aparecida
        Date(2001, 11, 2), # All Souls' Day
        Date(2001, 11, 15), # Republic Proclamation Day
        Date(2001, 12, 25), # Christmas Day
        Date(2002, 1, 1), # Universal Fraternization Day
        Date(2002, 3, 29), # Good Friday
        Date(2002, 4, 21), # Tiradentes' Day
        Date(2002, 5, 1), # Worker's Day
        Date(2002, 9, 7), # Independence Day
        Date(2002, 10, 12), # Our Lady of Aparecida
        Date(2002, 11, 2), # All Souls' Day
        Date(2002, 11, 15), # Republic Proclamation Day
        Date(2002, 12, 25), # Christmas Day
        Date(2003, 1, 1), # Universal Fraternization Day
        Date(2003, 4, 18), # Good Friday
        Date(2003, 4, 21), # Tiradentes' Day
        Date(2003, 5, 1), # Worker's Day
        Date(2003, 9, 7), # Independence Day
        Date(2003, 10, 12), # Our Lady of Aparecida
        Date(2003, 11, 2), # All Souls' Day
        Date(2003, 11, 15), # Republic Proclamation Day
        Date(2003, 12, 25), # Christmas Day
        Date(2004, 1, 1), # Universal Fraternization Day
        Date(2004, 4, 9), # Good Friday
        Date(2004, 4, 21), # Tiradentes' Day
        Date(2004, 5, 1), # Worker's Day
        Date(2004, 9, 7), # Independence Day
        Date(2004, 10, 12), # Our Lady of Aparecida
        Date(2004, 11, 2), # All Souls' Day
        Date(2004, 11, 15), # Republic Proclamation Day
        Date(2004, 12, 25), # Christmas Day
        Date(2005, 1, 1), # Universal Fraternization Day
        Date(2005, 3, 25), # Good Friday
        Date(2005, 4, 21), # Tiradentes' Day
        Date(2005, 5, 1), # Worker's Day
        Date(2005, 9, 7), # Independence Day
        Date(2005, 10, 12), # Our Lady of Aparecida
        Date(2005, 11, 2), # All Souls' Day
        Date(2005, 11, 15), # Republic Proclamation Day
        Date(2005, 12, 25), # Christmas Day
        Date(2006, 1, 1), # Universal Fraternization Day
        Date(2006, 4, 14), # Good Friday
        Date(2006, 4, 21), # Tiradentes' Day
        Date(2006, 5, 1), # Worker's Day
        Date(2006, 9, 7), # Independence Day
        Date(2006, 10, 12), # Our Lady of Aparecida
        Date(2006, 11, 2), # All Souls' Day
        Date(2006, 11, 15), # Republic Proclamation Day
        Date(2006, 12, 25), # Christmas Day
        Date(2007, 1, 1), # Universal Fraternization Day
        Date(2007, 4, 6), # Good Friday
        Date(2007, 4, 21), # Tiradentes' Day
        Date(2007, 5, 1), # Worker's Day
        Date(2007, 9, 7), # Independence Day
        Date(2007, 10, 12), # Our Lady of Aparecida
        Date(2007, 11, 2), # All Souls' Day
        Date(2007, 11, 15), # Republic Proclamation Day
        Date(2007, 12, 25), # Christmas Day
        Date(2008, 1, 1), # Universal Fraternization Day
        Date(2008, 3, 21), # Good Friday
        Date(2008, 4, 21), # Tiradentes' Day
        Date(2008, 5, 1), # Worker's Day
        Date(2008, 9, 7), # Independence Day
        Date(2008, 10, 12), # Our Lady of Aparecida
        Date(2008, 11, 2), # All Souls' Day
        Date(2008, 11, 15), # Republic Proclamation Day
        Date(2008, 12, 25), # Christmas Day
        Date(2009, 1, 1), # Universal Fraternization Day
        Date(2009, 4, 10), # Good Friday
        Date(2009, 4, 21), # Tiradentes' Day
        Date(2009, 5, 1), # Worker's Day
        Date(2009, 9, 7), # Independence Day
        Date(2009, 10, 12), # Our Lady of Aparecida
        Date(2009, 11, 2), # All Souls' Day
        Date(2009, 11, 15), # Republic Proclamation Day
        Date(2009, 12, 25), # Christmas Day
        Date(2010, 1, 1), # Universal Fraternization Day
        Date(2010, 4, 2), # Good Friday
        Date(2010, 4, 21), # Tiradentes' Day
        Date(2010, 5, 1), # Worker's Day
        Date(2010, 9, 7), # Independence Day
        Date(2010, 10, 12), # Our Lady of Aparecida
        Date(2010, 11, 2), # All Souls' Day
        Date(2010, 11, 15), # Republic Proclamation Day
        Date(2010, 12, 25), # Christmas Day
        Date(2011, 1, 1), # Universal Fraternization Day
        Date(2011, 4, 21), # Tiradentes' Day
        Date(2011, 4, 22), # Good Friday
        Date(2011, 5, 1), # Worker's Day
        Date(2011, 9, 7), # Independence Day
        Date(2011, 10, 12), # Our Lady of Aparecida
        Date(2011, 11, 2), # All Souls' Day
        Date(2011, 11, 15), # Republic Proclamation Day
        Date(2011, 12, 25), # Christmas Day
        Date(2012, 1, 1), # Universal Fraternization Day
        Date(2012, 4, 6), # Good Friday
        Date(2012, 4, 21), # Tiradentes' Day
        Date(2012, 5, 1), # Worker's Day
        Date(2012, 9, 7), # Independence Day
        Date(2012, 10, 12), # Our Lady of Aparecida
        Date(2012, 11, 2), # All Souls' Day
        Date(2012, 11, 15), # Republic Proclamation Day
        Date(2012, 12, 25), # Christmas Day
        Date(2013, 1, 1), # Universal Fraternization Day
        Date(2013, 3, 29), # Good Friday
        Date(2013, 4, 21), # Tiradentes' Day
        Date(2013, 5, 1), # Worker's Day
        Date(2013, 9, 7), # Independence Day
        Date(2013, 10, 12), # Our Lady of Aparecida
        Date(2013, 11, 2), # All Souls' Day
        Date(2013, 11, 15), # Republic Proclamation Day
        Date(2013, 12, 25), # Christmas Day
        Date(2014, 1, 1), # Universal Fraternization Day
        Date(2014, 4, 18), # Good Friday
        Date(2014, 4, 21), # Tiradentes' Day
        Date(2014, 5, 1), # Worker's Day
        Date(2014, 9, 7), # Independence Day
        Date(2014, 10, 12), # Our Lady of Aparecida
        Date(2014, 11, 2), # All Souls' Day
        Date(2014, 11, 15), # Republic Proclamation Day
        Date(2014, 12, 25), # Christmas Day
        Date(2015, 1, 1), # Universal Fraternization Day
        Date(2015, 4, 3), # Good Friday
        Date(2015, 4, 21), # Tiradentes' Day
        Date(2015, 5, 1), # Worker's Day
        Date(2015, 9, 7), # Independence Day
        Date(2015, 10, 12), # Our Lady of Aparecida
        Date(2015, 11, 2), # All Souls' Day
        Date(2015, 11, 15), # Republic Proclamation Day
        Date(2015, 12, 25), # Christmas Day
        Date(2016, 1, 1), # Universal Fraternization Day
        Date(2016, 3, 25), # Good Friday
        Date(2016, 4, 21), # Tiradentes' Day
        Date(2016, 5, 1), # Worker's Day
        Date(2016, 9, 7), # Independence Day
        Date(2016, 10, 12), # Our Lady of Aparecida
        Date(2016, 11, 2), # All Souls' Day
        Date(2016, 11, 15), # Republic Proclamation Day
        Date(2016, 12, 25), # Christmas Day
        Date(2017, 1, 1), # Universal Fraternization Day
        Date(2017, 4, 14), # Good Friday
        Date(2017, 4, 21), # Tiradentes' Day
        Date(2017, 5, 1), # Worker's Day
        Date(2017, 9, 7), # Independence Day
        Date(2017, 10, 12), # Our Lady of Aparecida
        Date(2017, 11, 2), # All Souls' Day
        Date(2017, 11, 15), # Republic Proclamation Day
        Date(2017, 12, 25), # Christmas Day
        Date(2018, 1, 1), # Universal Fraternization Day
        Date(2018, 3, 30), # Good Friday
        Date(2018, 4, 21), # Tiradentes' Day
        Date(2018, 5, 1), # Worker's Day
        Date(2018, 9, 7), # Independence Day
        Date(2018, 10, 12), # Our Lady of Aparecida
        Date(2018, 11, 2), # All Souls' Day
        Date(2018, 11, 15), # Republic Proclamation Day
        Date(2018, 12, 25), # Christmas Day
        Date(2019, 1, 1), # Universal Fraternization Day
        Date(2019, 4, 19), # Good Friday
        Date(2019, 4, 21), # Tiradentes' Day
        Date(2019, 5, 1), # Worker's Day
        Date(2019, 9, 7), # Independence Day
        Date(2019, 10, 12), # Our Lady of Aparecida
        Date(2019, 11, 2), # All Souls' Day
        Date(2019, 11, 15), # Republic Proclamation Day
        Date(2019, 12, 25), # Christmas Day
        Date(2020, 1, 1), # Universal Fraternization Day
        Date(2020, 4, 10), # Good Friday
        Date(2020, 4, 21), # Tiradentes' Day
        Date(2020, 5, 1), # Worker's Day
        Date(2020, 9, 7), # Independence Day
        Date(2020, 10, 12), # Our Lady of Aparecida
        Date(2020, 11, 2), # All Souls' Day
        Date(2020, 11, 15), # Republic Proclamation Day
        Date(2020, 12, 25), # Christmas Day
        Date(2021, 1, 1), # Universal Fraternization Day
        Date(2021, 4, 2), # Good Friday
        Date(2021, 4, 21), # Tiradentes' Day
        Date(2021, 5, 1), # Worker's Day
        Date(2021, 9, 7), # Independence Day
        Date(2021, 10, 12), # Our Lady of Aparecida
        Date(2021, 11, 2), # All Souls' Day
        Date(2021, 11, 15), # Republic Proclamation Day
        Date(2021, 12, 25), # Christmas Day
        Date(2022, 1, 1), # Universal Fraternization Day
        Date(2022, 4, 15), # Good Friday
        Date(2022, 4, 21), # Tiradentes' Day
        Date(2022, 5, 1), # Worker's Day
        Date(2022, 9, 7), # Independence Day
        Date(2022, 10, 12), # Our Lady of Aparecida
        Date(2022, 11, 2), # All Souls' Day
        Date(2022, 11, 15), # Republic Proclamation Day
        Date(2022, 12, 25), # Christmas Day
        Date(2023, 1, 1), # Universal Fraternization Day
        Date(2023, 4, 7), # Good Friday
        Date(2023, 4, 21), # Tiradentes' Day
        Date(2023, 5, 1), # Worker's Day
        Date(2023, 9, 7), # Independence Day
        Date(2023, 10, 12), # Our Lady of Aparecida
        Date(2023, 11, 2), # All Souls' Day
        Date(2023, 11, 15), # Republic Proclamation Day
        Date(2023, 12, 25), # Christmas Day
        Date(2024, 1, 1), # Universal Fraternization Day
        Date(2024, 3, 29), # Good Friday
        Date(2024, 4, 21), # Tiradentes' Day
        Date(2024, 5, 1), # Worker's Day
        Date(2024, 9, 7), # Independence Day
        Date(2024, 10, 12), # Our Lady of Aparecida
        Date(2024, 11, 2), # All Souls' Day
        Date(2024, 11, 15), # Republic Proclamation Day
        Date(2024, 11, 20), # National Day of Zumbi and Black Awareness
        Date(2024, 12, 25), # Christmas Day
        Date(2025, 1, 1), # Universal Fraternization Day
        Date(2025, 4, 18), # Good Friday
        Date(2025, 4, 21), # Tiradentes' Day
        Date(2025, 5, 1), # Worker's Day
        Date(2025, 9, 7), # Independence Day
        Date(2025, 10, 12), # Our Lady of Aparecida
        Date(2025, 11, 2), # All Souls' Day
        Date(2025, 11, 15), # Republic Proclamation Day
        Date(2025, 11, 20), # National Day of Zumbi and Black Awareness
        Date(2025, 12, 25), # Christmas Day
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
