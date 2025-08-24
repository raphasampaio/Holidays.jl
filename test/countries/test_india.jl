module TestIndia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "India" begin
    calendar = Holidays.India()

    holidays = Date[
        Date(1970, 1, 26), # Republic Day
        Date(1970, 2, 16), # Eid al-Adha (estimated)
        Date(1970, 3, 18), # Ashura (estimated)
        Date(1970, 3, 27), # Good Friday
        Date(1970, 5, 18), # Prophet's Birthday (estimated)
        Date(1970, 8, 15), # Independence Day
        Date(1970, 10, 2), # Gandhi Jayanti
        Date(1970, 11, 30), # Eid al-Fitr (estimated)
        Date(1970, 12, 25), # Christmas
        Date(1971, 1, 26), # Republic Day
        Date(1971, 2, 6), # Eid al-Adha (estimated)
        Date(1971, 3, 7), # Ashura (estimated)
        Date(1971, 4, 9), # Good Friday
        Date(1971, 5, 7), # Prophet's Birthday (estimated)
        Date(1971, 8, 15), # Independence Day
        Date(1971, 10, 2), # Gandhi Jayanti
        Date(1971, 11, 19), # Eid al-Fitr (estimated)
        Date(1971, 12, 25), # Christmas
        Date(1972, 1, 26), # Eid al-Adha (estimated); Republic Day
        Date(1972, 2, 25), # Ashura (estimated)
        Date(1972, 3, 31), # Good Friday
        Date(1972, 4, 25), # Prophet's Birthday (estimated)
        Date(1972, 8, 15), # Independence Day
        Date(1972, 10, 2), # Gandhi Jayanti
        Date(1972, 11, 7), # Eid al-Fitr (estimated)
        Date(1972, 12, 25), # Christmas
        Date(1973, 1, 14), # Eid al-Adha (estimated)
        Date(1973, 1, 26), # Republic Day
        Date(1973, 2, 13), # Ashura (estimated)
        Date(1973, 4, 15), # Prophet's Birthday (estimated)
        Date(1973, 4, 20), # Good Friday
        Date(1973, 8, 15), # Independence Day
        Date(1973, 10, 2), # Gandhi Jayanti
        Date(1973, 10, 27), # Eid al-Fitr (estimated)
        Date(1973, 12, 25), # Christmas
        Date(1974, 1, 3), # Eid al-Adha (estimated)
        Date(1974, 1, 26), # Republic Day
        Date(1974, 2, 2), # Ashura (estimated)
        Date(1974, 4, 4), # Prophet's Birthday (estimated)
        Date(1974, 4, 12), # Good Friday
        Date(1974, 8, 15), # Independence Day
        Date(1974, 10, 2), # Gandhi Jayanti
        Date(1974, 10, 16), # Eid al-Fitr (estimated)
        Date(1974, 12, 24), # Eid al-Adha (estimated)
        Date(1974, 12, 25), # Christmas
        Date(1975, 1, 22), # Ashura (estimated)
        Date(1975, 1, 26), # Republic Day
        Date(1975, 3, 24), # Prophet's Birthday (estimated)
        Date(1975, 3, 28), # Good Friday
        Date(1975, 8, 15), # Independence Day
        Date(1975, 10, 2), # Gandhi Jayanti
        Date(1975, 10, 6), # Eid al-Fitr (estimated)
        Date(1975, 12, 13), # Eid al-Adha (estimated)
        Date(1975, 12, 25), # Christmas
        Date(1976, 1, 11), # Ashura (estimated)
        Date(1976, 1, 26), # Republic Day
        Date(1976, 3, 12), # Prophet's Birthday (estimated)
        Date(1976, 4, 16), # Good Friday
        Date(1976, 8, 15), # Independence Day
        Date(1976, 9, 24), # Eid al-Fitr (estimated)
        Date(1976, 10, 2), # Gandhi Jayanti
        Date(1976, 12, 1), # Eid al-Adha (estimated)
        Date(1976, 12, 25), # Christmas
        Date(1976, 12, 31), # Ashura (estimated)
        Date(1977, 1, 26), # Republic Day
        Date(1977, 3, 2), # Prophet's Birthday (estimated)
        Date(1977, 4, 8), # Good Friday
        Date(1977, 8, 15), # Independence Day
        Date(1977, 9, 14), # Eid al-Fitr (estimated)
        Date(1977, 10, 2), # Gandhi Jayanti
        Date(1977, 11, 21), # Eid al-Adha (estimated)
        Date(1977, 12, 20), # Ashura (estimated)
        Date(1977, 12, 25), # Christmas
        Date(1978, 1, 26), # Republic Day
        Date(1978, 2, 19), # Prophet's Birthday (estimated)
        Date(1978, 3, 24), # Good Friday
        Date(1978, 8, 15), # Independence Day
        Date(1978, 9, 3), # Eid al-Fitr (estimated)
        Date(1978, 10, 2), # Gandhi Jayanti
        Date(1978, 11, 10), # Eid al-Adha (estimated)
        Date(1978, 12, 10), # Ashura (estimated)
        Date(1978, 12, 25), # Christmas
        Date(1979, 1, 26), # Republic Day
        Date(1979, 2, 9), # Prophet's Birthday (estimated)
        Date(1979, 4, 13), # Good Friday
        Date(1979, 8, 15), # Independence Day
        Date(1979, 8, 23), # Eid al-Fitr (estimated)
        Date(1979, 10, 2), # Gandhi Jayanti
        Date(1979, 10, 31), # Eid al-Adha (estimated)
        Date(1979, 11, 29), # Ashura (estimated)
        Date(1979, 12, 25), # Christmas
        Date(1980, 1, 26), # Republic Day
        Date(1980, 1, 30), # Prophet's Birthday (estimated)
        Date(1980, 4, 4), # Good Friday
        Date(1980, 8, 12), # Eid al-Fitr (estimated)
        Date(1980, 8, 15), # Independence Day
        Date(1980, 10, 2), # Gandhi Jayanti
        Date(1980, 10, 19), # Eid al-Adha (estimated)
        Date(1980, 11, 18), # Ashura (estimated)
        Date(1980, 12, 25), # Christmas
        Date(1981, 1, 18), # Prophet's Birthday (estimated)
        Date(1981, 1, 26), # Republic Day
        Date(1981, 4, 17), # Good Friday
        Date(1981, 8, 1), # Eid al-Fitr (estimated)
        Date(1981, 8, 15), # Independence Day
        Date(1981, 10, 2), # Gandhi Jayanti
        Date(1981, 10, 8), # Eid al-Adha (estimated)
        Date(1981, 11, 6), # Ashura (estimated)
        Date(1981, 12, 25), # Christmas
        Date(1982, 1, 7), # Prophet's Birthday (estimated)
        Date(1982, 1, 26), # Republic Day
        Date(1982, 4, 9), # Good Friday
        Date(1982, 7, 21), # Eid al-Fitr (estimated)
        Date(1982, 8, 15), # Independence Day
        Date(1982, 9, 27), # Eid al-Adha (estimated)
        Date(1982, 10, 2), # Gandhi Jayanti
        Date(1982, 10, 27), # Ashura (estimated)
        Date(1982, 12, 25), # Christmas
        Date(1982, 12, 27), # Prophet's Birthday (estimated)
        Date(1983, 1, 26), # Republic Day
        Date(1983, 4, 1), # Good Friday
        Date(1983, 7, 11), # Eid al-Fitr (estimated)
        Date(1983, 8, 15), # Independence Day
        Date(1983, 9, 17), # Eid al-Adha (estimated)
        Date(1983, 10, 2), # Gandhi Jayanti
        Date(1983, 10, 16), # Ashura (estimated)
        Date(1983, 12, 16), # Prophet's Birthday (estimated)
        Date(1983, 12, 25), # Christmas
        Date(1984, 1, 26), # Republic Day
        Date(1984, 4, 20), # Good Friday
        Date(1984, 6, 30), # Eid al-Fitr (estimated)
        Date(1984, 8, 15), # Independence Day
        Date(1984, 9, 5), # Eid al-Adha (estimated)
        Date(1984, 10, 2), # Gandhi Jayanti
        Date(1984, 10, 5), # Ashura (estimated)
        Date(1984, 12, 4), # Prophet's Birthday (estimated)
        Date(1984, 12, 25), # Christmas
        Date(1985, 1, 26), # Republic Day
        Date(1985, 4, 5), # Good Friday
        Date(1985, 6, 19), # Eid al-Fitr (estimated)
        Date(1985, 8, 15), # Independence Day
        Date(1985, 8, 26), # Eid al-Adha (estimated)
        Date(1985, 9, 24), # Ashura (estimated)
        Date(1985, 10, 2), # Gandhi Jayanti
        Date(1985, 11, 24), # Prophet's Birthday (estimated)
        Date(1985, 12, 25), # Christmas
        Date(1986, 1, 26), # Republic Day
        Date(1986, 3, 28), # Good Friday
        Date(1986, 6, 8), # Eid al-Fitr (estimated)
        Date(1986, 8, 15), # Eid al-Adha (estimated); Independence Day
        Date(1986, 9, 14), # Ashura (estimated)
        Date(1986, 10, 2), # Gandhi Jayanti
        Date(1986, 11, 14), # Prophet's Birthday (estimated)
        Date(1986, 12, 25), # Christmas
        Date(1987, 1, 26), # Republic Day
        Date(1987, 4, 17), # Good Friday
        Date(1987, 5, 28), # Eid al-Fitr (estimated)
        Date(1987, 8, 4), # Eid al-Adha (estimated)
        Date(1987, 8, 15), # Independence Day
        Date(1987, 9, 3), # Ashura (estimated)
        Date(1987, 10, 2), # Gandhi Jayanti
        Date(1987, 11, 3), # Prophet's Birthday (estimated)
        Date(1987, 12, 25), # Christmas
        Date(1988, 1, 26), # Republic Day
        Date(1988, 4, 1), # Good Friday
        Date(1988, 5, 16), # Eid al-Fitr (estimated)
        Date(1988, 7, 23), # Eid al-Adha (estimated)
        Date(1988, 8, 15), # Independence Day
        Date(1988, 8, 22), # Ashura (estimated)
        Date(1988, 10, 2), # Gandhi Jayanti
        Date(1988, 10, 22), # Prophet's Birthday (estimated)
        Date(1988, 12, 25), # Christmas
        Date(1989, 1, 26), # Republic Day
        Date(1989, 3, 24), # Good Friday
        Date(1989, 5, 6), # Eid al-Fitr (estimated)
        Date(1989, 7, 13), # Eid al-Adha (estimated)
        Date(1989, 8, 11), # Ashura (estimated)
        Date(1989, 8, 15), # Independence Day
        Date(1989, 10, 2), # Gandhi Jayanti
        Date(1989, 10, 11), # Prophet's Birthday (estimated)
        Date(1989, 12, 25), # Christmas
        Date(1990, 1, 26), # Republic Day
        Date(1990, 4, 13), # Good Friday
        Date(1990, 4, 26), # Eid al-Fitr (estimated)
        Date(1990, 7, 2), # Eid al-Adha (estimated)
        Date(1990, 8, 1), # Ashura (estimated)
        Date(1990, 8, 15), # Independence Day
        Date(1990, 10, 1), # Prophet's Birthday (estimated)
        Date(1990, 10, 2), # Gandhi Jayanti
        Date(1990, 12, 25), # Christmas
        Date(1991, 1, 26), # Republic Day
        Date(1991, 3, 29), # Good Friday
        Date(1991, 4, 15), # Eid al-Fitr (estimated)
        Date(1991, 6, 22), # Eid al-Adha (estimated)
        Date(1991, 7, 21), # Ashura (estimated)
        Date(1991, 8, 15), # Independence Day
        Date(1991, 9, 20), # Prophet's Birthday (estimated)
        Date(1991, 10, 2), # Gandhi Jayanti
        Date(1991, 12, 25), # Christmas
        Date(1992, 1, 26), # Republic Day
        Date(1992, 4, 4), # Eid al-Fitr (estimated)
        Date(1992, 4, 17), # Good Friday
        Date(1992, 6, 11), # Eid al-Adha (estimated)
        Date(1992, 7, 10), # Ashura (estimated)
        Date(1992, 8, 15), # Independence Day
        Date(1992, 9, 9), # Prophet's Birthday (estimated)
        Date(1992, 10, 2), # Gandhi Jayanti
        Date(1992, 12, 25), # Christmas
        Date(1993, 1, 26), # Republic Day
        Date(1993, 3, 24), # Eid al-Fitr (estimated)
        Date(1993, 4, 9), # Good Friday
        Date(1993, 5, 31), # Eid al-Adha (estimated)
        Date(1993, 6, 30), # Ashura (estimated)
        Date(1993, 8, 15), # Independence Day
        Date(1993, 8, 29), # Prophet's Birthday (estimated)
        Date(1993, 10, 2), # Gandhi Jayanti
        Date(1993, 12, 25), # Christmas
        Date(1994, 1, 26), # Republic Day
        Date(1994, 3, 13), # Eid al-Fitr (estimated)
        Date(1994, 4, 1), # Good Friday
        Date(1994, 5, 20), # Eid al-Adha (estimated)
        Date(1994, 6, 19), # Ashura (estimated)
        Date(1994, 8, 15), # Independence Day
        Date(1994, 8, 19), # Prophet's Birthday (estimated)
        Date(1994, 10, 2), # Gandhi Jayanti
        Date(1994, 12, 25), # Christmas
        Date(1995, 1, 26), # Republic Day
        Date(1995, 3, 2), # Eid al-Fitr (estimated)
        Date(1995, 4, 14), # Good Friday
        Date(1995, 5, 9), # Eid al-Adha (estimated)
        Date(1995, 6, 8), # Ashura (estimated)
        Date(1995, 8, 8), # Prophet's Birthday (estimated)
        Date(1995, 8, 15), # Independence Day
        Date(1995, 10, 2), # Gandhi Jayanti
        Date(1995, 12, 25), # Christmas
        Date(1996, 1, 26), # Republic Day
        Date(1996, 2, 19), # Eid al-Fitr (estimated)
        Date(1996, 4, 5), # Good Friday
        Date(1996, 4, 27), # Eid al-Adha (estimated)
        Date(1996, 5, 27), # Ashura (estimated)
        Date(1996, 7, 27), # Prophet's Birthday (estimated)
        Date(1996, 8, 15), # Independence Day
        Date(1996, 10, 2), # Gandhi Jayanti
        Date(1996, 12, 25), # Christmas
        Date(1997, 1, 26), # Republic Day
        Date(1997, 2, 8), # Eid al-Fitr (estimated)
        Date(1997, 3, 28), # Good Friday
        Date(1997, 4, 17), # Eid al-Adha (estimated)
        Date(1997, 5, 16), # Ashura (estimated)
        Date(1997, 7, 16), # Prophet's Birthday (estimated)
        Date(1997, 8, 15), # Independence Day
        Date(1997, 10, 2), # Gandhi Jayanti
        Date(1997, 12, 25), # Christmas
        Date(1998, 1, 26), # Republic Day
        Date(1998, 1, 29), # Eid al-Fitr (estimated)
        Date(1998, 4, 7), # Eid al-Adha (estimated)
        Date(1998, 4, 10), # Good Friday
        Date(1998, 5, 6), # Ashura (estimated)
        Date(1998, 7, 6), # Prophet's Birthday (estimated)
        Date(1998, 8, 15), # Independence Day
        Date(1998, 10, 2), # Gandhi Jayanti
        Date(1998, 12, 25), # Christmas
        Date(1999, 1, 18), # Eid al-Fitr (estimated)
        Date(1999, 1, 26), # Republic Day
        Date(1999, 3, 27), # Eid al-Adha (estimated)
        Date(1999, 4, 2), # Good Friday
        Date(1999, 4, 26), # Ashura (estimated)
        Date(1999, 6, 26), # Prophet's Birthday (estimated)
        Date(1999, 8, 15), # Independence Day
        Date(1999, 10, 2), # Gandhi Jayanti
        Date(1999, 12, 25), # Christmas
        Date(2000, 1, 8), # Eid al-Fitr (estimated)
        Date(2000, 1, 26), # Republic Day
        Date(2000, 3, 16), # Eid al-Adha (estimated)
        Date(2000, 4, 15), # Ashura (estimated)
        Date(2000, 4, 21), # Good Friday
        Date(2000, 6, 14), # Prophet's Birthday (estimated)
        Date(2000, 8, 15), # Independence Day
        Date(2000, 10, 2), # Gandhi Jayanti
        Date(2000, 12, 25), # Christmas
        Date(2000, 12, 27), # Eid al-Fitr (estimated)
        Date(2001, 1, 26), # Republic Day
        Date(2001, 2, 21), # Maha Shivaratri
        Date(2001, 3, 6), # Eid al-Adha
        Date(2001, 4, 4), # Ashura
        Date(2001, 4, 6), # Mahavir Jayanti
        Date(2001, 4, 13), # Good Friday
        Date(2001, 4, 30), # Buddha Purnima
        Date(2001, 6, 5), # Prophet's Birthday
        Date(2001, 8, 12), # Janmashtami
        Date(2001, 8, 15), # Independence Day
        Date(2001, 10, 2), # Gandhi Jayanti
        Date(2001, 10, 26), # Dussehra
        Date(2001, 11, 14), # Diwali
        Date(2001, 11, 30), # Guru Nanak Jayanti
        Date(2001, 12, 17), # Eid al-Fitr
        Date(2001, 12, 25), # Christmas
        Date(2002, 1, 26), # Republic Day
        Date(2002, 2, 23), # Eid al-Adha
        Date(2002, 3, 12), # Maha Shivaratri
        Date(2002, 3, 24), # Ashura
        Date(2002, 3, 29), # Good Friday
        Date(2002, 4, 25), # Mahavir Jayanti
        Date(2002, 5, 19), # Buddha Purnima
        Date(2002, 5, 25), # Prophet's Birthday
        Date(2002, 8, 15), # Independence Day
        Date(2002, 8, 31), # Janmashtami
        Date(2002, 10, 2), # Gandhi Jayanti
        Date(2002, 10, 15), # Dussehra
        Date(2002, 11, 4), # Diwali
        Date(2002, 11, 19), # Guru Nanak Jayanti
        Date(2002, 12, 6), # Eid al-Fitr
        Date(2002, 12, 25), # Christmas
        Date(2003, 1, 26), # Republic Day
        Date(2003, 2, 12), # Eid al-Adha
        Date(2003, 3, 1), # Maha Shivaratri
        Date(2003, 3, 14), # Ashura
        Date(2003, 4, 15), # Mahavir Jayanti
        Date(2003, 4, 18), # Good Friday
        Date(2003, 5, 8), # Buddha Purnima
        Date(2003, 5, 15), # Prophet's Birthday
        Date(2003, 8, 15), # Independence Day
        Date(2003, 8, 20), # Janmashtami
        Date(2003, 10, 2), # Gandhi Jayanti
        Date(2003, 10, 5), # Dussehra
        Date(2003, 10, 25), # Diwali
        Date(2003, 11, 8), # Guru Nanak Jayanti
        Date(2003, 11, 26), # Eid al-Fitr
        Date(2003, 12, 25), # Christmas
        Date(2004, 1, 26), # Republic Day
        Date(2004, 2, 2), # Eid al-Adha
        Date(2004, 2, 18), # Maha Shivaratri
        Date(2004, 3, 2), # Ashura
        Date(2004, 4, 3), # Mahavir Jayanti
        Date(2004, 4, 9), # Good Friday
        Date(2004, 5, 3), # Prophet's Birthday
        Date(2004, 5, 26), # Buddha Purnima
        Date(2004, 8, 15), # Independence Day
        Date(2004, 9, 7), # Janmashtami
        Date(2004, 10, 2), # Gandhi Jayanti
        Date(2004, 10, 22), # Dussehra
        Date(2004, 11, 12), # Diwali
        Date(2004, 11, 14), # Eid al-Fitr
        Date(2004, 11, 26), # Guru Nanak Jayanti
        Date(2004, 12, 25), # Christmas
        Date(2005, 1, 21), # Eid al-Adha
        Date(2005, 1, 26), # Republic Day
        Date(2005, 2, 19), # Ashura
        Date(2005, 3, 8), # Maha Shivaratri
        Date(2005, 3, 25), # Good Friday
        Date(2005, 4, 22), # Mahavir Jayanti; Prophet's Birthday
        Date(2005, 5, 23), # Buddha Purnima
        Date(2005, 8, 15), # Independence Day
        Date(2005, 8, 27), # Janmashtami
        Date(2005, 10, 2), # Gandhi Jayanti
        Date(2005, 10, 12), # Dussehra
        Date(2005, 11, 1), # Diwali
        Date(2005, 11, 3), # Eid al-Fitr
        Date(2005, 11, 15), # Guru Nanak Jayanti
        Date(2005, 12, 25), # Christmas
        Date(2006, 1, 11), # Eid al-Adha
        Date(2006, 1, 26), # Republic Day
        Date(2006, 2, 9), # Ashura
        Date(2006, 2, 26), # Maha Shivaratri
        Date(2006, 4, 11), # Mahavir Jayanti; Prophet's Birthday
        Date(2006, 4, 14), # Good Friday
        Date(2006, 5, 13), # Buddha Purnima
        Date(2006, 8, 15), # Independence Day
        Date(2006, 8, 16), # Janmashtami
        Date(2006, 10, 2), # Dussehra; Gandhi Jayanti
        Date(2006, 10, 21), # Diwali
        Date(2006, 10, 24), # Eid al-Fitr
        Date(2006, 11, 5), # Guru Nanak Jayanti
        Date(2006, 12, 25), # Christmas
        Date(2006, 12, 31), # Eid al-Adha
        Date(2007, 1, 26), # Republic Day
        Date(2007, 1, 30), # Ashura
        Date(2007, 2, 16), # Maha Shivaratri
        Date(2007, 3, 31), # Mahavir Jayanti
        Date(2007, 4, 1), # Prophet's Birthday
        Date(2007, 4, 6), # Good Friday
        Date(2007, 5, 2), # Buddha Purnima
        Date(2007, 8, 15), # Independence Day
        Date(2007, 9, 4), # Janmashtami
        Date(2007, 10, 2), # Gandhi Jayanti
        Date(2007, 10, 13), # Eid al-Fitr
        Date(2007, 10, 21), # Dussehra
        Date(2007, 11, 9), # Diwali
        Date(2007, 11, 24), # Guru Nanak Jayanti
        Date(2007, 12, 20), # Eid al-Adha
        Date(2007, 12, 25), # Christmas
        Date(2008, 1, 19), # Ashura
        Date(2008, 1, 26), # Republic Day
        Date(2008, 3, 6), # Maha Shivaratri
        Date(2008, 3, 21), # Good Friday; Prophet's Birthday
        Date(2008, 4, 18), # Mahavir Jayanti
        Date(2008, 5, 20), # Buddha Purnima
        Date(2008, 8, 15), # Independence Day
        Date(2008, 8, 24), # Janmashtami
        Date(2008, 10, 2), # Eid al-Fitr; Gandhi Jayanti
        Date(2008, 10, 9), # Dussehra
        Date(2008, 10, 28), # Diwali
        Date(2008, 11, 13), # Guru Nanak Jayanti
        Date(2008, 12, 9), # Eid al-Adha
        Date(2008, 12, 25), # Christmas
        Date(2009, 1, 7), # Ashura
        Date(2009, 1, 26), # Republic Day
        Date(2009, 2, 23), # Maha Shivaratri
        Date(2009, 3, 9), # Prophet's Birthday
        Date(2009, 4, 7), # Mahavir Jayanti
        Date(2009, 4, 10), # Good Friday
        Date(2009, 5, 8), # Buddha Purnima
        Date(2009, 8, 14), # Janmashtami
        Date(2009, 8, 15), # Independence Day
        Date(2009, 9, 21), # Eid al-Fitr
        Date(2009, 9, 28), # Dussehra
        Date(2009, 10, 2), # Gandhi Jayanti
        Date(2009, 10, 17), # Diwali
        Date(2009, 11, 2), # Guru Nanak Jayanti
        Date(2009, 11, 28), # Eid al-Adha
        Date(2009, 12, 25), # Christmas
        Date(2009, 12, 28), # Ashura
        Date(2010, 1, 26), # Republic Day
        Date(2010, 2, 12), # Maha Shivaratri
        Date(2010, 2, 27), # Prophet's Birthday
        Date(2010, 4, 2), # Good Friday
        Date(2010, 4, 28), # Mahavir Jayanti
        Date(2010, 5, 27), # Buddha Purnima
        Date(2010, 8, 15), # Independence Day
        Date(2010, 9, 2), # Janmashtami
        Date(2010, 9, 10), # Eid al-Fitr
        Date(2010, 10, 2), # Gandhi Jayanti
        Date(2010, 10, 17), # Dussehra
        Date(2010, 11, 5), # Diwali
        Date(2010, 11, 17), # Eid al-Adha
        Date(2010, 11, 21), # Guru Nanak Jayanti
        Date(2010, 12, 17), # Ashura
        Date(2010, 12, 25), # Christmas
        Date(2011, 1, 26), # Republic Day
        Date(2011, 2, 16), # Prophet's Birthday
        Date(2011, 3, 2), # Maha Shivaratri
        Date(2011, 4, 16), # Mahavir Jayanti
        Date(2011, 4, 22), # Good Friday
        Date(2011, 5, 17), # Buddha Purnima
        Date(2011, 8, 15), # Independence Day
        Date(2011, 8, 22), # Janmashtami
        Date(2011, 8, 31), # Eid al-Fitr
        Date(2011, 10, 2), # Gandhi Jayanti
        Date(2011, 10, 6), # Dussehra
        Date(2011, 10, 26), # Diwali
        Date(2011, 11, 7), # Eid al-Adha
        Date(2011, 11, 10), # Guru Nanak Jayanti
        Date(2011, 12, 6), # Ashura
        Date(2011, 12, 25), # Christmas
        Date(2012, 1, 26), # Republic Day
        Date(2012, 2, 5), # Prophet's Birthday
        Date(2012, 2, 20), # Maha Shivaratri
        Date(2012, 4, 5), # Mahavir Jayanti
        Date(2012, 4, 6), # Good Friday
        Date(2012, 5, 6), # Buddha Purnima
        Date(2012, 8, 10), # Janmashtami
        Date(2012, 8, 15), # Independence Day
        Date(2012, 8, 20), # Eid al-Fitr
        Date(2012, 10, 2), # Gandhi Jayanti
        Date(2012, 10, 24), # Dussehra
        Date(2012, 10, 27), # Eid al-Adha
        Date(2012, 11, 13), # Diwali
        Date(2012, 11, 25), # Ashura
        Date(2012, 11, 28), # Guru Nanak Jayanti
        Date(2012, 12, 25), # Christmas
        Date(2013, 1, 25), # Prophet's Birthday
        Date(2013, 1, 26), # Republic Day
        Date(2013, 3, 10), # Maha Shivaratri
        Date(2013, 3, 29), # Good Friday
        Date(2013, 4, 24), # Mahavir Jayanti
        Date(2013, 5, 25), # Buddha Purnima
        Date(2013, 8, 8), # Eid al-Fitr
        Date(2013, 8, 15), # Independence Day
        Date(2013, 8, 28), # Janmashtami
        Date(2013, 10, 2), # Gandhi Jayanti
        Date(2013, 10, 13), # Dussehra
        Date(2013, 10, 16), # Eid al-Adha
        Date(2013, 11, 3), # Diwali
        Date(2013, 11, 14), # Ashura
        Date(2013, 11, 17), # Guru Nanak Jayanti
        Date(2013, 12, 25), # Christmas
        Date(2014, 1, 14), # Prophet's Birthday
        Date(2014, 1, 26), # Republic Day
        Date(2014, 2, 27), # Maha Shivaratri
        Date(2014, 4, 13), # Mahavir Jayanti
        Date(2014, 4, 18), # Good Friday
        Date(2014, 5, 14), # Buddha Purnima
        Date(2014, 7, 29), # Eid al-Fitr
        Date(2014, 8, 15), # Independence Day
        Date(2014, 8, 18), # Janmashtami
        Date(2014, 10, 2), # Gandhi Jayanti
        Date(2014, 10, 3), # Dussehra
        Date(2014, 10, 6), # Eid al-Adha
        Date(2014, 10, 23), # Diwali
        Date(2014, 11, 4), # Ashura
        Date(2014, 11, 6), # Guru Nanak Jayanti
        Date(2014, 12, 25), # Christmas
        Date(2015, 1, 4), # Prophet's Birthday
        Date(2015, 1, 26), # Republic Day
        Date(2015, 2, 17), # Maha Shivaratri
        Date(2015, 4, 2), # Mahavir Jayanti
        Date(2015, 4, 3), # Good Friday
        Date(2015, 5, 4), # Buddha Purnima
        Date(2015, 7, 18), # Eid al-Fitr
        Date(2015, 8, 15), # Independence Day
        Date(2015, 9, 5), # Janmashtami
        Date(2015, 9, 25), # Eid al-Adha
        Date(2015, 10, 2), # Gandhi Jayanti
        Date(2015, 10, 22), # Dussehra
        Date(2015, 10, 24), # Ashura
        Date(2015, 11, 11), # Diwali
        Date(2015, 11, 25), # Guru Nanak Jayanti
        Date(2015, 12, 25), # Christmas; Prophet's Birthday
        Date(2016, 1, 26), # Republic Day
        Date(2016, 3, 7), # Maha Shivaratri
        Date(2016, 3, 25), # Good Friday
        Date(2016, 4, 20), # Mahavir Jayanti
        Date(2016, 5, 21), # Buddha Purnima
        Date(2016, 7, 7), # Eid al-Fitr
        Date(2016, 8, 15), # Independence Day
        Date(2016, 8, 25), # Janmashtami
        Date(2016, 9, 13), # Eid al-Adha
        Date(2016, 10, 2), # Gandhi Jayanti
        Date(2016, 10, 11), # Dussehra
        Date(2016, 10, 12), # Ashura
        Date(2016, 10, 30), # Diwali
        Date(2016, 11, 14), # Guru Nanak Jayanti
        Date(2016, 12, 13), # Prophet's Birthday
        Date(2016, 12, 25), # Christmas
        Date(2017, 1, 26), # Republic Day
        Date(2017, 2, 24), # Maha Shivaratri
        Date(2017, 4, 9), # Mahavir Jayanti
        Date(2017, 4, 14), # Good Friday
        Date(2017, 5, 10), # Buddha Purnima
        Date(2017, 6, 26), # Eid al-Fitr
        Date(2017, 8, 15), # Independence Day; Janmashtami
        Date(2017, 9, 2), # Eid al-Adha
        Date(2017, 9, 30), # Dussehra
        Date(2017, 10, 1), # Ashura
        Date(2017, 10, 2), # Gandhi Jayanti
        Date(2017, 10, 19), # Diwali
        Date(2017, 11, 4), # Guru Nanak Jayanti
        Date(2017, 12, 2), # Prophet's Birthday
        Date(2017, 12, 25), # Christmas
        Date(2018, 1, 26), # Republic Day
        Date(2018, 2, 13), # Maha Shivaratri
        Date(2018, 3, 29), # Mahavir Jayanti
        Date(2018, 3, 30), # Good Friday
        Date(2018, 4, 30), # Buddha Purnima
        Date(2018, 6, 16), # Eid al-Fitr
        Date(2018, 8, 15), # Independence Day
        Date(2018, 8, 22), # Eid al-Adha
        Date(2018, 9, 3), # Janmashtami
        Date(2018, 9, 21), # Ashura
        Date(2018, 10, 2), # Gandhi Jayanti
        Date(2018, 10, 19), # Dussehra
        Date(2018, 11, 7), # Diwali
        Date(2018, 11, 21), # Prophet's Birthday
        Date(2018, 11, 23), # Guru Nanak Jayanti
        Date(2018, 12, 25), # Christmas
        Date(2019, 1, 26), # Republic Day
        Date(2019, 3, 4), # Maha Shivaratri
        Date(2019, 4, 17), # Mahavir Jayanti
        Date(2019, 4, 19), # Good Friday
        Date(2019, 5, 18), # Buddha Purnima
        Date(2019, 6, 5), # Eid al-Fitr
        Date(2019, 8, 12), # Eid al-Adha
        Date(2019, 8, 15), # Independence Day
        Date(2019, 8, 24), # Janmashtami
        Date(2019, 9, 10), # Ashura
        Date(2019, 10, 2), # Gandhi Jayanti
        Date(2019, 10, 8), # Dussehra
        Date(2019, 10, 27), # Diwali
        Date(2019, 11, 10), # Prophet's Birthday
        Date(2019, 11, 12), # Guru Nanak Jayanti
        Date(2019, 12, 25), # Christmas
        Date(2020, 1, 26), # Republic Day
        Date(2020, 2, 21), # Maha Shivaratri
        Date(2020, 4, 6), # Mahavir Jayanti
        Date(2020, 4, 10), # Good Friday
        Date(2020, 5, 7), # Buddha Purnima
        Date(2020, 5, 25), # Eid al-Fitr
        Date(2020, 8, 1), # Eid al-Adha
        Date(2020, 8, 12), # Janmashtami
        Date(2020, 8, 15), # Independence Day
        Date(2020, 8, 30), # Ashura
        Date(2020, 10, 2), # Gandhi Jayanti
        Date(2020, 10, 25), # Dussehra
        Date(2020, 10, 30), # Prophet's Birthday
        Date(2020, 11, 14), # Diwali
        Date(2020, 11, 30), # Guru Nanak Jayanti
        Date(2020, 12, 25), # Christmas
        Date(2021, 1, 26), # Republic Day
        Date(2021, 3, 11), # Maha Shivaratri
        Date(2021, 4, 2), # Good Friday
        Date(2021, 4, 25), # Mahavir Jayanti
        Date(2021, 5, 14), # Eid al-Fitr
        Date(2021, 5, 26), # Buddha Purnima
        Date(2021, 7, 21), # Eid al-Adha
        Date(2021, 8, 15), # Independence Day
        Date(2021, 8, 20), # Ashura
        Date(2021, 8, 30), # Janmashtami
        Date(2021, 10, 2), # Gandhi Jayanti
        Date(2021, 10, 15), # Dussehra
        Date(2021, 10, 19), # Prophet's Birthday
        Date(2021, 11, 4), # Diwali
        Date(2021, 11, 19), # Guru Nanak Jayanti
        Date(2021, 12, 25), # Christmas
        Date(2022, 1, 26), # Republic Day
        Date(2022, 3, 1), # Maha Shivaratri
        Date(2022, 4, 14), # Mahavir Jayanti
        Date(2022, 4, 15), # Good Friday
        Date(2022, 5, 3), # Eid al-Fitr
        Date(2022, 5, 16), # Buddha Purnima
        Date(2022, 7, 10), # Eid al-Adha
        Date(2022, 8, 9), # Ashura
        Date(2022, 8, 15), # Independence Day
        Date(2022, 8, 19), # Janmashtami
        Date(2022, 10, 2), # Gandhi Jayanti
        Date(2022, 10, 5), # Dussehra
        Date(2022, 10, 9), # Prophet's Birthday
        Date(2022, 10, 24), # Diwali
        Date(2022, 11, 8), # Guru Nanak Jayanti
        Date(2022, 12, 25), # Christmas
        Date(2023, 1, 26), # Republic Day
        Date(2023, 2, 18), # Maha Shivaratri
        Date(2023, 4, 4), # Mahavir Jayanti
        Date(2023, 4, 7), # Good Friday
        Date(2023, 4, 22), # Eid al-Fitr
        Date(2023, 5, 5), # Buddha Purnima
        Date(2023, 6, 29), # Eid al-Adha
        Date(2023, 7, 29), # Ashura
        Date(2023, 8, 15), # Independence Day
        Date(2023, 9, 7), # Janmashtami
        Date(2023, 9, 28), # Prophet's Birthday
        Date(2023, 10, 2), # Gandhi Jayanti
        Date(2023, 10, 24), # Dussehra
        Date(2023, 11, 12), # Diwali
        Date(2023, 11, 27), # Guru Nanak Jayanti
        Date(2023, 12, 25), # Christmas
        Date(2024, 1, 26), # Republic Day
        Date(2024, 3, 8), # Maha Shivaratri
        Date(2024, 3, 29), # Good Friday
        Date(2024, 4, 11), # Eid al-Fitr
        Date(2024, 4, 21), # Mahavir Jayanti
        Date(2024, 5, 23), # Buddha Purnima
        Date(2024, 6, 17), # Eid al-Adha
        Date(2024, 7, 17), # Ashura
        Date(2024, 8, 15), # Independence Day
        Date(2024, 8, 26), # Janmashtami
        Date(2024, 9, 16), # Prophet's Birthday
        Date(2024, 10, 2), # Gandhi Jayanti
        Date(2024, 10, 12), # Dussehra
        Date(2024, 10, 31), # Diwali
        Date(2024, 11, 15), # Guru Nanak Jayanti
        Date(2024, 12, 25), # Christmas
        Date(2025, 1, 26), # Republic Day
        Date(2025, 2, 26), # Maha Shivaratri
        Date(2025, 3, 31), # Eid al-Fitr
        Date(2025, 4, 10), # Mahavir Jayanti
        Date(2025, 4, 18), # Good Friday
        Date(2025, 5, 12), # Buddha Purnima
        Date(2025, 6, 7), # Eid al-Adha
        Date(2025, 7, 6), # Ashura
        Date(2025, 8, 15), # Independence Day
        Date(2025, 8, 16), # Janmashtami
        Date(2025, 9, 5), # Prophet's Birthday
        Date(2025, 10, 2), # Dussehra; Gandhi Jayanti
        Date(2025, 10, 20), # Diwali
        Date(2025, 11, 5), # Guru Nanak Jayanti
        Date(2025, 12, 25), # Christmas
        Date(2026, 1, 26), # Republic Day
        Date(2026, 2, 15), # Maha Shivaratri
        Date(2026, 3, 20), # Eid al-Fitr (estimated)
        Date(2026, 3, 31), # Mahavir Jayanti
        Date(2026, 4, 3), # Good Friday
        Date(2026, 5, 1), # Buddha Purnima
        Date(2026, 5, 27), # Eid al-Adha (estimated)
        Date(2026, 6, 25), # Ashura (estimated)
        Date(2026, 8, 15), # Independence Day
        Date(2026, 8, 25), # Prophet's Birthday (estimated)
        Date(2026, 9, 4), # Janmashtami
        Date(2026, 10, 2), # Gandhi Jayanti
        Date(2026, 10, 20), # Dussehra
        Date(2026, 11, 8), # Diwali
        Date(2026, 12, 25), # Christmas
        Date(2027, 1, 26), # Republic Day
        Date(2027, 3, 6), # Maha Shivaratri
        Date(2027, 3, 9), # Eid al-Fitr (estimated)
        Date(2027, 3, 26), # Good Friday
        Date(2027, 4, 18), # Mahavir Jayanti
        Date(2027, 5, 16), # Eid al-Adha (estimated)
        Date(2027, 5, 20), # Buddha Purnima
        Date(2027, 6, 15), # Ashura (estimated)
        Date(2027, 8, 14), # Prophet's Birthday (estimated)
        Date(2027, 8, 15), # Independence Day
        Date(2027, 8, 25), # Janmashtami
        Date(2027, 10, 2), # Gandhi Jayanti
        Date(2027, 10, 9), # Dussehra
        Date(2027, 10, 29), # Diwali
        Date(2027, 11, 14), # Guru Nanak Jayanti
        Date(2027, 12, 25), # Christmas
        Date(2028, 1, 26), # Republic Day
        Date(2028, 2, 23), # Maha Shivaratri
        Date(2028, 2, 26), # Eid al-Fitr (estimated)
        Date(2028, 4, 7), # Mahavir Jayanti
        Date(2028, 4, 14), # Good Friday
        Date(2028, 5, 5), # Eid al-Adha (estimated)
        Date(2028, 5, 8), # Buddha Purnima
        Date(2028, 6, 3), # Ashura (estimated)
        Date(2028, 8, 3), # Prophet's Birthday (estimated)
        Date(2028, 8, 13), # Janmashtami
        Date(2028, 8, 15), # Independence Day
        Date(2028, 9, 27), # Dussehra
        Date(2028, 10, 2), # Gandhi Jayanti
        Date(2028, 10, 17), # Diwali
        Date(2028, 11, 2), # Guru Nanak Jayanti
        Date(2028, 12, 25), # Christmas
        Date(2029, 1, 26), # Republic Day
        Date(2029, 2, 11), # Maha Shivaratri
        Date(2029, 2, 14), # Eid al-Fitr (estimated)
        Date(2029, 3, 30), # Good Friday
        Date(2029, 4, 24), # Eid al-Adha (estimated)
        Date(2029, 4, 26), # Mahavir Jayanti
        Date(2029, 5, 23), # Ashura (estimated)
        Date(2029, 5, 27), # Buddha Purnima
        Date(2029, 7, 24), # Prophet's Birthday (estimated)
        Date(2029, 8, 15), # Independence Day
        Date(2029, 9, 1), # Janmashtami
        Date(2029, 10, 2), # Gandhi Jayanti
        Date(2029, 10, 16), # Dussehra
        Date(2029, 11, 5), # Diwali
        Date(2029, 11, 21), # Guru Nanak Jayanti
        Date(2029, 12, 25), # Christmas
        Date(2030, 1, 26), # Republic Day
        Date(2030, 2, 4), # Eid al-Fitr (estimated)
        Date(2030, 3, 2), # Maha Shivaratri
        Date(2030, 4, 13), # Eid al-Adha (estimated)
        Date(2030, 4, 16), # Mahavir Jayanti
        Date(2030, 4, 19), # Good Friday
        Date(2030, 5, 12), # Ashura (estimated)
        Date(2030, 5, 17), # Buddha Purnima
        Date(2030, 7, 13), # Prophet's Birthday (estimated)
        Date(2030, 8, 15), # Independence Day
        Date(2030, 8, 21), # Janmashtami
        Date(2030, 10, 2), # Gandhi Jayanti
        Date(2030, 10, 6), # Dussehra
        Date(2030, 10, 26), # Diwali
        Date(2030, 11, 10), # Guru Nanak Jayanti
        Date(2030, 12, 25), # Christmas
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
