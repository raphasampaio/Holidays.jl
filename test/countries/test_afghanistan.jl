module TestAfghanistan

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Afghanistan" begin
    calendar = Holidays.Afghanistan()

    holidays = Date[
        Date(1970, 2, 15), # Day of Arafah (estimated)
        Date(1970, 2, 16), # Eid al-Adha (estimated)
        Date(1970, 2, 17), # Eid al-Adha (estimated)
        Date(1970, 2, 18), # Eid al-Adha (estimated)
        Date(1970, 3, 18), # Ashura (estimated)
        Date(1970, 3, 21), # Nowruz
        Date(1970, 5, 18), # Prophet's Birthday (estimated)
        Date(1970, 8, 19), # Afghanistan Independence Day
        Date(1970, 11, 1), # First Day of Ramadan (estimated)
        Date(1970, 11, 30), # Eid al-Fitr (estimated)
        Date(1970, 12, 1), # Eid al-Fitr (estimated)
        Date(1970, 12, 2), # Eid al-Fitr (estimated)
        Date(1971, 2, 5), # Day of Arafah (estimated)
        Date(1971, 2, 6), # Eid al-Adha (estimated)
        Date(1971, 2, 7), # Eid al-Adha (estimated)
        Date(1971, 2, 8), # Eid al-Adha (estimated)
        Date(1971, 3, 7), # Ashura (estimated)
        Date(1971, 3, 21), # Nowruz
        Date(1971, 5, 7), # Prophet's Birthday (estimated)
        Date(1971, 8, 19), # Afghanistan Independence Day
        Date(1971, 10, 20), # First Day of Ramadan (estimated)
        Date(1971, 11, 19), # Eid al-Fitr (estimated)
        Date(1971, 11, 20), # Eid al-Fitr (estimated)
        Date(1971, 11, 21), # Eid al-Fitr (estimated)
        Date(1972, 1, 25), # Day of Arafah (estimated)
        Date(1972, 1, 26), # Eid al-Adha (estimated)
        Date(1972, 1, 27), # Eid al-Adha (estimated)
        Date(1972, 1, 28), # Eid al-Adha (estimated)
        Date(1972, 2, 25), # Ashura (estimated)
        Date(1972, 3, 21), # Nowruz
        Date(1972, 4, 25), # Prophet's Birthday (estimated)
        Date(1972, 8, 19), # Afghanistan Independence Day
        Date(1972, 10, 8), # First Day of Ramadan (estimated)
        Date(1972, 11, 7), # Eid al-Fitr (estimated)
        Date(1972, 11, 8), # Eid al-Fitr (estimated)
        Date(1972, 11, 9), # Eid al-Fitr (estimated)
        Date(1973, 1, 13), # Day of Arafah (estimated)
        Date(1973, 1, 14), # Eid al-Adha (estimated)
        Date(1973, 1, 15), # Eid al-Adha (estimated)
        Date(1973, 1, 16), # Eid al-Adha (estimated)
        Date(1973, 2, 13), # Ashura (estimated)
        Date(1973, 3, 21), # Nowruz
        Date(1973, 4, 15), # Prophet's Birthday (estimated)
        Date(1973, 8, 19), # Afghanistan Independence Day
        Date(1973, 9, 27), # First Day of Ramadan (estimated)
        Date(1973, 10, 27), # Eid al-Fitr (estimated)
        Date(1973, 10, 28), # Eid al-Fitr (estimated)
        Date(1973, 10, 29), # Eid al-Fitr (estimated)
        Date(1974, 1, 2), # Day of Arafah (estimated)
        Date(1974, 1, 3), # Eid al-Adha (estimated)
        Date(1974, 1, 4), # Eid al-Adha (estimated)
        Date(1974, 1, 5), # Eid al-Adha (estimated)
        Date(1974, 2, 2), # Ashura (estimated)
        Date(1974, 3, 21), # Nowruz
        Date(1974, 4, 4), # Prophet's Birthday (estimated)
        Date(1974, 5, 1), # International Workers' Day
        Date(1974, 8, 19), # Afghanistan Independence Day
        Date(1974, 9, 17), # First Day of Ramadan (estimated)
        Date(1974, 10, 16), # Eid al-Fitr (estimated)
        Date(1974, 10, 17), # Eid al-Fitr (estimated)
        Date(1974, 10, 18), # Eid al-Fitr (estimated)
        Date(1974, 12, 23), # Day of Arafah (estimated)
        Date(1974, 12, 24), # Eid al-Adha (estimated)
        Date(1974, 12, 25), # Eid al-Adha (estimated)
        Date(1974, 12, 26), # Eid al-Adha (estimated)
        Date(1975, 1, 22), # Ashura (estimated)
        Date(1975, 3, 21), # Nowruz
        Date(1975, 3, 24), # Prophet's Birthday (estimated)
        Date(1975, 5, 1), # International Workers' Day
        Date(1975, 8, 19), # Afghanistan Independence Day
        Date(1975, 9, 6), # First Day of Ramadan (estimated)
        Date(1975, 10, 6), # Eid al-Fitr (estimated)
        Date(1975, 10, 7), # Eid al-Fitr (estimated)
        Date(1975, 10, 8), # Eid al-Fitr (estimated)
        Date(1975, 12, 12), # Day of Arafah (estimated)
        Date(1975, 12, 13), # Eid al-Adha (estimated)
        Date(1975, 12, 14), # Eid al-Adha (estimated)
        Date(1975, 12, 15), # Eid al-Adha (estimated)
        Date(1976, 1, 11), # Ashura (estimated)
        Date(1976, 3, 12), # Prophet's Birthday (estimated)
        Date(1976, 3, 21), # Nowruz
        Date(1976, 5, 1), # International Workers' Day
        Date(1976, 8, 19), # Afghanistan Independence Day
        Date(1976, 8, 26), # First Day of Ramadan (estimated)
        Date(1976, 9, 24), # Eid al-Fitr (estimated)
        Date(1976, 9, 25), # Eid al-Fitr (estimated)
        Date(1976, 9, 26), # Eid al-Fitr (estimated)
        Date(1976, 11, 30), # Day of Arafah (estimated)
        Date(1976, 12, 1), # Eid al-Adha (estimated)
        Date(1976, 12, 2), # Eid al-Adha (estimated)
        Date(1976, 12, 3), # Eid al-Adha (estimated)
        Date(1976, 12, 31), # Ashura (estimated)
        Date(1977, 3, 2), # Prophet's Birthday (estimated)
        Date(1977, 3, 21), # Nowruz
        Date(1977, 5, 1), # International Workers' Day
        Date(1977, 8, 15), # First Day of Ramadan (estimated)
        Date(1977, 8, 19), # Afghanistan Independence Day
        Date(1977, 9, 14), # Eid al-Fitr (estimated)
        Date(1977, 9, 15), # Eid al-Fitr (estimated)
        Date(1977, 9, 16), # Eid al-Fitr (estimated)
        Date(1977, 11, 20), # Day of Arafah (estimated)
        Date(1977, 11, 21), # Eid al-Adha (estimated)
        Date(1977, 11, 22), # Eid al-Adha (estimated)
        Date(1977, 11, 23), # Eid al-Adha (estimated)
        Date(1977, 12, 20), # Ashura (estimated)
        Date(1978, 2, 19), # Prophet's Birthday (estimated)
        Date(1978, 3, 21), # Nowruz
        Date(1978, 5, 1), # International Workers' Day
        Date(1978, 5, 9), # Soviet Victory Day
        Date(1978, 8, 5), # First Day of Ramadan (estimated)
        Date(1978, 8, 19), # Afghanistan Independence Day
        Date(1978, 9, 3), # Eid al-Fitr (estimated)
        Date(1978, 9, 4), # Eid al-Fitr (estimated)
        Date(1978, 9, 5), # Eid al-Fitr (estimated)
        Date(1978, 11, 9), # Day of Arafah (estimated)
        Date(1978, 11, 10), # Eid al-Adha (estimated)
        Date(1978, 11, 11), # Eid al-Adha (estimated)
        Date(1978, 11, 12), # Eid al-Adha (estimated)
        Date(1978, 12, 10), # Ashura (estimated)
        Date(1979, 2, 9), # Prophet's Birthday (estimated)
        Date(1979, 3, 21), # Nowruz
        Date(1979, 5, 1), # International Workers' Day
        Date(1979, 5, 9), # Soviet Victory Day
        Date(1979, 7, 25), # First Day of Ramadan (estimated)
        Date(1979, 8, 19), # Afghanistan Independence Day
        Date(1979, 8, 23), # Eid al-Fitr (estimated)
        Date(1979, 8, 24), # Eid al-Fitr (estimated)
        Date(1979, 8, 25), # Eid al-Fitr (estimated)
        Date(1979, 10, 30), # Day of Arafah (estimated)
        Date(1979, 10, 31), # Eid al-Adha (estimated)
        Date(1979, 11, 1), # Eid al-Adha (estimated)
        Date(1979, 11, 2), # Eid al-Adha (estimated)
        Date(1979, 11, 29), # Ashura (estimated)
        Date(1980, 1, 30), # Prophet's Birthday (estimated)
        Date(1980, 3, 21), # Nowruz
        Date(1980, 5, 1), # International Workers' Day
        Date(1980, 5, 9), # Soviet Victory Day
        Date(1980, 7, 13), # First Day of Ramadan (estimated)
        Date(1980, 8, 12), # Eid al-Fitr (estimated)
        Date(1980, 8, 13), # Eid al-Fitr (estimated)
        Date(1980, 8, 14), # Eid al-Fitr (estimated)
        Date(1980, 8, 19), # Afghanistan Independence Day
        Date(1980, 10, 18), # Day of Arafah (estimated)
        Date(1980, 10, 19), # Eid al-Adha (estimated)
        Date(1980, 10, 20), # Eid al-Adha (estimated)
        Date(1980, 10, 21), # Eid al-Adha (estimated)
        Date(1980, 11, 18), # Ashura (estimated)
        Date(1981, 1, 18), # Prophet's Birthday (estimated)
        Date(1981, 3, 21), # Nowruz
        Date(1981, 5, 1), # International Workers' Day
        Date(1981, 5, 9), # Soviet Victory Day
        Date(1981, 7, 2), # First Day of Ramadan (estimated)
        Date(1981, 8, 1), # Eid al-Fitr (estimated)
        Date(1981, 8, 2), # Eid al-Fitr (estimated)
        Date(1981, 8, 3), # Eid al-Fitr (estimated)
        Date(1981, 8, 19), # Afghanistan Independence Day
        Date(1981, 10, 7), # Day of Arafah (estimated)
        Date(1981, 10, 8), # Eid al-Adha (estimated)
        Date(1981, 10, 9), # Eid al-Adha (estimated)
        Date(1981, 10, 10), # Eid al-Adha (estimated)
        Date(1981, 11, 6), # Ashura (estimated)
        Date(1982, 1, 7), # Prophet's Birthday (estimated)
        Date(1982, 3, 21), # Nowruz
        Date(1982, 5, 1), # International Workers' Day
        Date(1982, 5, 9), # Soviet Victory Day
        Date(1982, 6, 22), # First Day of Ramadan (estimated)
        Date(1982, 7, 21), # Eid al-Fitr (estimated)
        Date(1982, 7, 22), # Eid al-Fitr (estimated)
        Date(1982, 7, 23), # Eid al-Fitr (estimated)
        Date(1982, 8, 19), # Afghanistan Independence Day
        Date(1982, 9, 26), # Day of Arafah (estimated)
        Date(1982, 9, 27), # Eid al-Adha (estimated)
        Date(1982, 9, 28), # Eid al-Adha (estimated)
        Date(1982, 9, 29), # Eid al-Adha (estimated)
        Date(1982, 10, 27), # Ashura (estimated)
        Date(1982, 12, 27), # Prophet's Birthday (estimated)
        Date(1983, 3, 21), # Nowruz
        Date(1983, 5, 1), # International Workers' Day
        Date(1983, 5, 9), # Soviet Victory Day
        Date(1983, 6, 12), # First Day of Ramadan (estimated)
        Date(1983, 7, 11), # Eid al-Fitr (estimated)
        Date(1983, 7, 12), # Eid al-Fitr (estimated)
        Date(1983, 7, 13), # Eid al-Fitr (estimated)
        Date(1983, 8, 19), # Afghanistan Independence Day
        Date(1983, 9, 16), # Day of Arafah (estimated)
        Date(1983, 9, 17), # Eid al-Adha (estimated)
        Date(1983, 9, 18), # Eid al-Adha (estimated)
        Date(1983, 9, 19), # Eid al-Adha (estimated)
        Date(1983, 10, 16), # Ashura (estimated)
        Date(1983, 12, 16), # Prophet's Birthday (estimated)
        Date(1984, 3, 21), # Nowruz
        Date(1984, 5, 1), # International Workers' Day
        Date(1984, 5, 9), # Soviet Victory Day
        Date(1984, 5, 31), # First Day of Ramadan (estimated)
        Date(1984, 6, 30), # Eid al-Fitr (estimated)
        Date(1984, 7, 1), # Eid al-Fitr (estimated)
        Date(1984, 7, 2), # Eid al-Fitr (estimated)
        Date(1984, 8, 19), # Afghanistan Independence Day
        Date(1984, 9, 4), # Day of Arafah (estimated)
        Date(1984, 9, 5), # Eid al-Adha (estimated)
        Date(1984, 9, 6), # Eid al-Adha (estimated)
        Date(1984, 9, 7), # Eid al-Adha (estimated)
        Date(1984, 10, 5), # Ashura (estimated)
        Date(1984, 12, 4), # Prophet's Birthday (estimated)
        Date(1985, 3, 21), # Nowruz
        Date(1985, 5, 1), # International Workers' Day
        Date(1985, 5, 9), # Soviet Victory Day
        Date(1985, 5, 20), # First Day of Ramadan (estimated)
        Date(1985, 6, 19), # Eid al-Fitr (estimated)
        Date(1985, 6, 20), # Eid al-Fitr (estimated)
        Date(1985, 6, 21), # Eid al-Fitr (estimated)
        Date(1985, 8, 19), # Afghanistan Independence Day
        Date(1985, 8, 25), # Day of Arafah (estimated)
        Date(1985, 8, 26), # Eid al-Adha (estimated)
        Date(1985, 8, 27), # Eid al-Adha (estimated)
        Date(1985, 8, 28), # Eid al-Adha (estimated)
        Date(1985, 9, 24), # Ashura (estimated)
        Date(1985, 11, 24), # Prophet's Birthday (estimated)
        Date(1986, 3, 21), # Nowruz
        Date(1986, 5, 1), # International Workers' Day
        Date(1986, 5, 9), # First Day of Ramadan (estimated); Soviet Victory Day
        Date(1986, 6, 8), # Eid al-Fitr (estimated)
        Date(1986, 6, 9), # Eid al-Fitr (estimated)
        Date(1986, 6, 10), # Eid al-Fitr (estimated)
        Date(1986, 8, 14), # Day of Arafah (estimated)
        Date(1986, 8, 15), # Eid al-Adha (estimated)
        Date(1986, 8, 16), # Eid al-Adha (estimated)
        Date(1986, 8, 17), # Eid al-Adha (estimated)
        Date(1986, 8, 19), # Afghanistan Independence Day
        Date(1986, 9, 14), # Ashura (estimated)
        Date(1986, 11, 14), # Prophet's Birthday (estimated)
        Date(1987, 3, 21), # Nowruz
        Date(1987, 4, 29), # First Day of Ramadan (estimated)
        Date(1987, 5, 1), # International Workers' Day
        Date(1987, 5, 9), # Soviet Victory Day
        Date(1987, 5, 28), # Eid al-Fitr (estimated)
        Date(1987, 5, 29), # Eid al-Fitr (estimated)
        Date(1987, 5, 30), # Eid al-Fitr (estimated)
        Date(1987, 8, 3), # Day of Arafah (estimated)
        Date(1987, 8, 4), # Eid al-Adha (estimated)
        Date(1987, 8, 5), # Eid al-Adha (estimated)
        Date(1987, 8, 6), # Eid al-Adha (estimated)
        Date(1987, 8, 19), # Afghanistan Independence Day
        Date(1987, 9, 3), # Ashura (estimated)
        Date(1987, 11, 3), # Prophet's Birthday (estimated)
        Date(1988, 3, 21), # Nowruz
        Date(1988, 4, 17), # First Day of Ramadan (estimated)
        Date(1988, 5, 1), # International Workers' Day
        Date(1988, 5, 9), # Soviet Victory Day
        Date(1988, 5, 16), # Eid al-Fitr (estimated)
        Date(1988, 5, 17), # Eid al-Fitr (estimated)
        Date(1988, 5, 18), # Eid al-Fitr (estimated)
        Date(1988, 7, 22), # Day of Arafah (estimated)
        Date(1988, 7, 23), # Eid al-Adha (estimated)
        Date(1988, 7, 24), # Eid al-Adha (estimated)
        Date(1988, 7, 25), # Eid al-Adha (estimated)
        Date(1988, 8, 19), # Afghanistan Independence Day
        Date(1988, 8, 22), # Ashura (estimated)
        Date(1988, 10, 22), # Prophet's Birthday (estimated)
        Date(1989, 2, 15), # Liberation Day
        Date(1989, 3, 21), # Nowruz
        Date(1989, 4, 7), # First Day of Ramadan (estimated)
        Date(1989, 5, 1), # International Workers' Day
        Date(1989, 5, 6), # Eid al-Fitr (estimated)
        Date(1989, 5, 7), # Eid al-Fitr (estimated)
        Date(1989, 5, 8), # Eid al-Fitr (estimated)
        Date(1989, 7, 12), # Day of Arafah (estimated)
        Date(1989, 7, 13), # Eid al-Adha (estimated)
        Date(1989, 7, 14), # Eid al-Adha (estimated)
        Date(1989, 7, 15), # Eid al-Adha (estimated)
        Date(1989, 8, 11), # Ashura (estimated)
        Date(1989, 8, 19), # Afghanistan Independence Day
        Date(1989, 10, 11), # Prophet's Birthday (estimated)
        Date(1990, 2, 15), # Liberation Day
        Date(1990, 3, 21), # Nowruz
        Date(1990, 3, 27), # First Day of Ramadan (estimated)
        Date(1990, 4, 26), # Eid al-Fitr (estimated)
        Date(1990, 4, 27), # Eid al-Fitr (estimated)
        Date(1990, 4, 28), # Eid al-Fitr (estimated)
        Date(1990, 5, 1), # International Workers' Day
        Date(1990, 7, 1), # Day of Arafah (estimated)
        Date(1990, 7, 2), # Eid al-Adha (estimated)
        Date(1990, 7, 3), # Eid al-Adha (estimated)
        Date(1990, 7, 4), # Eid al-Adha (estimated)
        Date(1990, 8, 1), # Ashura (estimated)
        Date(1990, 8, 19), # Afghanistan Independence Day
        Date(1990, 10, 1), # Prophet's Birthday (estimated)
        Date(1991, 2, 15), # Liberation Day
        Date(1991, 3, 17), # First Day of Ramadan (estimated)
        Date(1991, 3, 21), # Nowruz
        Date(1991, 4, 15), # Eid al-Fitr (estimated)
        Date(1991, 4, 16), # Eid al-Fitr (estimated)
        Date(1991, 4, 17), # Eid al-Fitr (estimated)
        Date(1991, 5, 1), # International Workers' Day
        Date(1991, 6, 21), # Day of Arafah (estimated)
        Date(1991, 6, 22), # Eid al-Adha (estimated)
        Date(1991, 6, 23), # Eid al-Adha (estimated)
        Date(1991, 6, 24), # Eid al-Adha (estimated)
        Date(1991, 7, 21), # Ashura (estimated)
        Date(1991, 8, 19), # Afghanistan Independence Day
        Date(1991, 9, 20), # Prophet's Birthday (estimated)
        Date(1992, 2, 15), # Liberation Day
        Date(1992, 3, 5), # First Day of Ramadan (estimated)
        Date(1992, 3, 21), # Nowruz
        Date(1992, 4, 4), # Eid al-Fitr (estimated)
        Date(1992, 4, 5), # Eid al-Fitr (estimated)
        Date(1992, 4, 6), # Eid al-Fitr (estimated)
        Date(1992, 4, 28), # Mojahedin's Victory Day
        Date(1992, 5, 1), # International Workers' Day
        Date(1992, 6, 10), # Day of Arafah (estimated)
        Date(1992, 6, 11), # Eid al-Adha (estimated)
        Date(1992, 6, 12), # Eid al-Adha (estimated)
        Date(1992, 6, 13), # Eid al-Adha (estimated)
        Date(1992, 7, 10), # Ashura (estimated)
        Date(1992, 8, 19), # Afghanistan Independence Day
        Date(1992, 9, 9), # Prophet's Birthday (estimated)
        Date(1993, 2, 15), # Liberation Day
        Date(1993, 2, 22), # First Day of Ramadan (estimated)
        Date(1993, 3, 21), # Nowruz
        Date(1993, 3, 24), # Eid al-Fitr (estimated)
        Date(1993, 3, 25), # Eid al-Fitr (estimated)
        Date(1993, 3, 26), # Eid al-Fitr (estimated)
        Date(1993, 4, 28), # Mojahedin's Victory Day
        Date(1993, 5, 1), # International Workers' Day
        Date(1993, 5, 30), # Day of Arafah (estimated)
        Date(1993, 5, 31), # Eid al-Adha (estimated)
        Date(1993, 6, 1), # Eid al-Adha (estimated)
        Date(1993, 6, 2), # Eid al-Adha (estimated)
        Date(1993, 6, 30), # Ashura (estimated)
        Date(1993, 8, 19), # Afghanistan Independence Day
        Date(1993, 8, 29), # Prophet's Birthday (estimated)
        Date(1994, 2, 11), # First Day of Ramadan (estimated)
        Date(1994, 2, 15), # Liberation Day
        Date(1994, 3, 13), # Eid al-Fitr (estimated)
        Date(1994, 3, 14), # Eid al-Fitr (estimated)
        Date(1994, 3, 15), # Eid al-Fitr (estimated)
        Date(1994, 3, 21), # Nowruz
        Date(1994, 4, 28), # Mojahedin's Victory Day
        Date(1994, 5, 1), # International Workers' Day
        Date(1994, 5, 19), # Day of Arafah (estimated)
        Date(1994, 5, 20), # Eid al-Adha (estimated)
        Date(1994, 5, 21), # Eid al-Adha (estimated)
        Date(1994, 5, 22), # Eid al-Adha (estimated)
        Date(1994, 6, 19), # Ashura (estimated)
        Date(1994, 8, 19), # Afghanistan Independence Day; Prophet's Birthday (estimated)
        Date(1995, 1, 31), # First Day of Ramadan (estimated)
        Date(1995, 2, 15), # Liberation Day
        Date(1995, 3, 2), # Eid al-Fitr (estimated)
        Date(1995, 3, 3), # Eid al-Fitr (estimated)
        Date(1995, 3, 4), # Eid al-Fitr (estimated)
        Date(1995, 3, 21), # Nowruz
        Date(1995, 4, 28), # Mojahedin's Victory Day
        Date(1995, 5, 1), # International Workers' Day
        Date(1995, 5, 8), # Day of Arafah (estimated)
        Date(1995, 5, 9), # Eid al-Adha (estimated)
        Date(1995, 5, 10), # Eid al-Adha (estimated)
        Date(1995, 5, 11), # Eid al-Adha (estimated)
        Date(1995, 6, 8), # Ashura (estimated)
        Date(1995, 8, 8), # Prophet's Birthday (estimated)
        Date(1995, 8, 19), # Afghanistan Independence Day
        Date(1996, 1, 21), # First Day of Ramadan (estimated)
        Date(1996, 2, 15), # Liberation Day
        Date(1996, 2, 19), # Eid al-Fitr (estimated)
        Date(1996, 2, 20), # Eid al-Fitr (estimated)
        Date(1996, 2, 21), # Eid al-Fitr (estimated)
        Date(1996, 3, 20), # Nowruz
        Date(1996, 4, 26), # Day of Arafah (estimated)
        Date(1996, 4, 27), # Eid al-Adha (estimated)
        Date(1996, 4, 28), # Eid al-Adha (estimated); Mojahedin's Victory Day
        Date(1996, 4, 29), # Eid al-Adha (estimated)
        Date(1996, 5, 1), # International Workers' Day
        Date(1996, 5, 27), # Ashura (estimated)
        Date(1996, 7, 27), # Prophet's Birthday (estimated)
        Date(1996, 8, 19), # Afghanistan Independence Day
        Date(1997, 1, 10), # First Day of Ramadan (estimated)
        Date(1997, 2, 8), # Eid al-Fitr (estimated)
        Date(1997, 2, 9), # Eid al-Fitr (estimated)
        Date(1997, 2, 10), # Eid al-Fitr (estimated)
        Date(1997, 2, 15), # Liberation Day
        Date(1997, 4, 16), # Day of Arafah (estimated)
        Date(1997, 4, 17), # Eid al-Adha (estimated)
        Date(1997, 4, 18), # Eid al-Adha (estimated)
        Date(1997, 4, 19), # Eid al-Adha (estimated)
        Date(1997, 4, 28), # Mojahedin's Victory Day
        Date(1997, 5, 16), # Ashura (estimated)
        Date(1997, 7, 16), # Prophet's Birthday (estimated)
        Date(1997, 8, 19), # Afghanistan Independence Day
        Date(1997, 12, 30), # First Day of Ramadan (estimated)
        Date(1998, 1, 29), # Eid al-Fitr (estimated)
        Date(1998, 1, 30), # Eid al-Fitr (estimated)
        Date(1998, 1, 31), # Eid al-Fitr (estimated)
        Date(1998, 2, 15), # Liberation Day
        Date(1998, 4, 6), # Day of Arafah (estimated)
        Date(1998, 4, 7), # Eid al-Adha (estimated)
        Date(1998, 4, 8), # Eid al-Adha (estimated)
        Date(1998, 4, 9), # Eid al-Adha (estimated)
        Date(1998, 4, 28), # Mojahedin's Victory Day
        Date(1998, 5, 6), # Ashura (estimated)
        Date(1998, 7, 6), # Prophet's Birthday (estimated)
        Date(1998, 8, 19), # Afghanistan Independence Day
        Date(1998, 12, 19), # First Day of Ramadan (estimated)
        Date(1999, 1, 18), # Eid al-Fitr (estimated)
        Date(1999, 1, 19), # Eid al-Fitr (estimated)
        Date(1999, 1, 20), # Eid al-Fitr (estimated)
        Date(1999, 2, 15), # Liberation Day
        Date(1999, 3, 26), # Day of Arafah (estimated)
        Date(1999, 3, 27), # Eid al-Adha (estimated)
        Date(1999, 3, 28), # Eid al-Adha (estimated)
        Date(1999, 3, 29), # Eid al-Adha (estimated)
        Date(1999, 4, 26), # Ashura (estimated)
        Date(1999, 4, 28), # Mojahedin's Victory Day
        Date(1999, 6, 26), # Prophet's Birthday (estimated)
        Date(1999, 8, 19), # Afghanistan Independence Day
        Date(1999, 12, 9), # First Day of Ramadan (estimated)
        Date(2000, 1, 8), # Eid al-Fitr (estimated)
        Date(2000, 1, 9), # Eid al-Fitr (estimated)
        Date(2000, 1, 10), # Eid al-Fitr (estimated)
        Date(2000, 2, 15), # Liberation Day
        Date(2000, 3, 15), # Day of Arafah (estimated)
        Date(2000, 3, 16), # Eid al-Adha (estimated)
        Date(2000, 3, 17), # Eid al-Adha (estimated)
        Date(2000, 3, 18), # Eid al-Adha (estimated)
        Date(2000, 4, 15), # Ashura (estimated)
        Date(2000, 4, 28), # Mojahedin's Victory Day
        Date(2000, 6, 14), # Prophet's Birthday (estimated)
        Date(2000, 8, 19), # Afghanistan Independence Day
        Date(2000, 11, 27), # First Day of Ramadan (estimated)
        Date(2000, 12, 27), # Eid al-Fitr (estimated)
        Date(2000, 12, 28), # Eid al-Fitr (estimated)
        Date(2000, 12, 29), # Eid al-Fitr (estimated)
        Date(2001, 2, 15), # Liberation Day
        Date(2001, 3, 4), # Day of Arafah (estimated)
        Date(2001, 3, 5), # Eid al-Adha (estimated)
        Date(2001, 3, 6), # Eid al-Adha (estimated)
        Date(2001, 3, 7), # Eid al-Adha (estimated)
        Date(2001, 3, 21), # Nowruz
        Date(2001, 4, 4), # Ashura (estimated)
        Date(2001, 4, 28), # Mojahedin's Victory Day
        Date(2001, 6, 4), # Prophet's Birthday (estimated)
        Date(2001, 8, 19), # Afghanistan Independence Day
        Date(2001, 11, 16), # First Day of Ramadan (estimated)
        Date(2001, 12, 16), # Eid al-Fitr (estimated)
        Date(2001, 12, 17), # Eid al-Fitr (estimated)
        Date(2001, 12, 18), # Eid al-Fitr (estimated)
        Date(2002, 2, 15), # Liberation Day
        Date(2002, 2, 21), # Day of Arafah (estimated)
        Date(2002, 2, 22), # Eid al-Adha (estimated)
        Date(2002, 2, 23), # Eid al-Adha (estimated)
        Date(2002, 2, 24), # Eid al-Adha (estimated)
        Date(2002, 3, 21), # Nowruz
        Date(2002, 3, 24), # Ashura (estimated)
        Date(2002, 4, 28), # Mojahedin's Victory Day
        Date(2002, 5, 1), # International Workers' Day
        Date(2002, 5, 24), # Prophet's Birthday (estimated)
        Date(2002, 8, 19), # Afghanistan Independence Day
        Date(2002, 11, 6), # First Day of Ramadan (estimated)
        Date(2002, 12, 5), # Eid al-Fitr (estimated)
        Date(2002, 12, 6), # Eid al-Fitr (estimated)
        Date(2002, 12, 7), # Eid al-Fitr (estimated)
        Date(2003, 2, 10), # Day of Arafah (estimated)
        Date(2003, 2, 11), # Eid al-Adha (estimated)
        Date(2003, 2, 12), # Eid al-Adha (estimated)
        Date(2003, 2, 13), # Eid al-Adha (estimated)
        Date(2003, 2, 15), # Liberation Day
        Date(2003, 3, 13), # Ashura (estimated)
        Date(2003, 3, 21), # Nowruz
        Date(2003, 4, 28), # Mojahedin's Victory Day
        Date(2003, 5, 1), # International Workers' Day
        Date(2003, 5, 13), # Prophet's Birthday (estimated)
        Date(2003, 8, 19), # Afghanistan Independence Day
        Date(2003, 10, 26), # First Day of Ramadan (estimated)
        Date(2003, 11, 25), # Eid al-Fitr (estimated)
        Date(2003, 11, 26), # Eid al-Fitr (estimated)
        Date(2003, 11, 27), # Eid al-Fitr (estimated)
        Date(2004, 1, 31), # Day of Arafah (estimated)
        Date(2004, 2, 1), # Eid al-Adha (estimated)
        Date(2004, 2, 2), # Eid al-Adha (estimated)
        Date(2004, 2, 3), # Eid al-Adha (estimated)
        Date(2004, 2, 15), # Liberation Day
        Date(2004, 3, 1), # Ashura (estimated)
        Date(2004, 3, 20), # Nowruz
        Date(2004, 4, 28), # Mojahedin's Victory Day
        Date(2004, 5, 1), # International Workers' Day; Prophet's Birthday (estimated)
        Date(2004, 8, 19), # Afghanistan Independence Day
        Date(2004, 10, 15), # First Day of Ramadan (estimated)
        Date(2004, 11, 14), # Eid al-Fitr (estimated)
        Date(2004, 11, 15), # Eid al-Fitr (estimated)
        Date(2004, 11, 16), # Eid al-Fitr (estimated)
        Date(2005, 1, 20), # Day of Arafah (estimated)
        Date(2005, 1, 21), # Eid al-Adha (estimated)
        Date(2005, 1, 22), # Eid al-Adha (estimated)
        Date(2005, 1, 23), # Eid al-Adha (estimated)
        Date(2005, 2, 15), # Liberation Day
        Date(2005, 2, 19), # Ashura (estimated)
        Date(2005, 3, 21), # Nowruz
        Date(2005, 4, 21), # Prophet's Birthday (estimated)
        Date(2005, 4, 28), # Mojahedin's Victory Day
        Date(2005, 5, 1), # International Workers' Day
        Date(2005, 8, 19), # Afghanistan Independence Day
        Date(2005, 10, 4), # First Day of Ramadan (estimated)
        Date(2005, 11, 3), # Eid al-Fitr (estimated)
        Date(2005, 11, 4), # Eid al-Fitr (estimated)
        Date(2005, 11, 5), # Eid al-Fitr (estimated)
        Date(2006, 1, 9), # Day of Arafah (estimated)
        Date(2006, 1, 10), # Eid al-Adha (estimated)
        Date(2006, 1, 11), # Eid al-Adha (estimated)
        Date(2006, 1, 12), # Eid al-Adha (estimated)
        Date(2006, 2, 9), # Ashura (estimated)
        Date(2006, 2, 15), # Liberation Day
        Date(2006, 3, 21), # Nowruz
        Date(2006, 4, 10), # Prophet's Birthday (estimated)
        Date(2006, 4, 28), # Mojahedin's Victory Day
        Date(2006, 5, 1), # International Workers' Day
        Date(2006, 8, 19), # Afghanistan Independence Day
        Date(2006, 9, 24), # First Day of Ramadan (estimated)
        Date(2006, 10, 23), # Eid al-Fitr (estimated)
        Date(2006, 10, 24), # Eid al-Fitr (estimated)
        Date(2006, 10, 25), # Eid al-Fitr (estimated)
        Date(2006, 12, 30), # Day of Arafah (estimated)
        Date(2006, 12, 31), # Eid al-Adha (estimated)
        Date(2007, 1, 1), # Eid al-Adha (estimated)
        Date(2007, 1, 2), # Eid al-Adha (estimated)
        Date(2007, 1, 29), # Ashura (estimated)
        Date(2007, 2, 15), # Liberation Day
        Date(2007, 3, 21), # Nowruz
        Date(2007, 3, 31), # Prophet's Birthday (estimated)
        Date(2007, 4, 28), # Mojahedin's Victory Day
        Date(2007, 5, 1), # International Workers' Day
        Date(2007, 8, 19), # Afghanistan Independence Day
        Date(2007, 9, 13), # First Day of Ramadan (estimated)
        Date(2007, 10, 13), # Eid al-Fitr (estimated)
        Date(2007, 10, 14), # Eid al-Fitr (estimated)
        Date(2007, 10, 15), # Eid al-Fitr (estimated)
        Date(2007, 12, 19), # Day of Arafah (estimated)
        Date(2007, 12, 20), # Eid al-Adha (estimated)
        Date(2007, 12, 21), # Eid al-Adha (estimated)
        Date(2007, 12, 22), # Eid al-Adha (estimated)
        Date(2008, 1, 19), # Ashura (estimated)
        Date(2008, 2, 15), # Liberation Day
        Date(2008, 3, 20), # Nowruz; Prophet's Birthday (estimated)
        Date(2008, 4, 28), # Mojahedin's Victory Day
        Date(2008, 5, 1), # International Workers' Day
        Date(2008, 8, 19), # Afghanistan Independence Day
        Date(2008, 9, 1), # First Day of Ramadan (estimated)
        Date(2008, 10, 1), # Eid al-Fitr (estimated)
        Date(2008, 10, 2), # Eid al-Fitr (estimated)
        Date(2008, 10, 3), # Eid al-Fitr (estimated)
        Date(2008, 12, 7), # Day of Arafah (estimated)
        Date(2008, 12, 8), # Eid al-Adha (estimated)
        Date(2008, 12, 9), # Eid al-Adha (estimated)
        Date(2008, 12, 10), # Eid al-Adha (estimated)
        Date(2009, 1, 7), # Ashura (estimated)
        Date(2009, 2, 15), # Liberation Day
        Date(2009, 3, 9), # Prophet's Birthday (estimated)
        Date(2009, 3, 21), # Nowruz
        Date(2009, 4, 28), # Mojahedin's Victory Day
        Date(2009, 5, 1), # International Workers' Day
        Date(2009, 8, 19), # Afghanistan Independence Day
        Date(2009, 8, 22), # First Day of Ramadan (estimated)
        Date(2009, 9, 20), # Eid al-Fitr (estimated)
        Date(2009, 9, 21), # Eid al-Fitr (estimated)
        Date(2009, 9, 22), # Eid al-Fitr (estimated)
        Date(2009, 11, 26), # Day of Arafah (estimated)
        Date(2009, 11, 27), # Eid al-Adha (estimated)
        Date(2009, 11, 28), # Eid al-Adha (estimated)
        Date(2009, 11, 29), # Eid al-Adha (estimated)
        Date(2009, 12, 27), # Ashura (estimated)
        Date(2010, 2, 15), # Liberation Day
        Date(2010, 2, 26), # Prophet's Birthday (estimated)
        Date(2010, 3, 21), # Nowruz
        Date(2010, 4, 28), # Mojahedin's Victory Day
        Date(2010, 5, 1), # International Workers' Day
        Date(2010, 8, 11), # First Day of Ramadan (estimated)
        Date(2010, 8, 19), # Afghanistan Independence Day
        Date(2010, 9, 10), # Eid al-Fitr (estimated)
        Date(2010, 9, 11), # Eid al-Fitr (estimated)
        Date(2010, 9, 12), # Eid al-Fitr (estimated)
        Date(2010, 11, 15), # Day of Arafah (estimated)
        Date(2010, 11, 16), # Eid al-Adha (estimated)
        Date(2010, 11, 17), # Eid al-Adha (estimated)
        Date(2010, 11, 18), # Eid al-Adha (estimated)
        Date(2010, 12, 16), # Ashura (estimated)
        Date(2011, 2, 15), # Liberation Day; Prophet's Birthday (estimated)
        Date(2011, 3, 21), # Nowruz
        Date(2011, 4, 28), # Mojahedin's Victory Day
        Date(2011, 5, 1), # International Workers' Day
        Date(2011, 8, 1), # First Day of Ramadan (estimated)
        Date(2011, 8, 19), # Afghanistan Independence Day
        Date(2011, 8, 30), # Eid al-Fitr (estimated)
        Date(2011, 8, 31), # Eid al-Fitr (estimated)
        Date(2011, 9, 1), # Eid al-Fitr (estimated)
        Date(2011, 11, 5), # Day of Arafah (estimated)
        Date(2011, 11, 6), # Eid al-Adha (estimated)
        Date(2011, 11, 7), # Eid al-Adha (estimated)
        Date(2011, 11, 8), # Eid al-Adha (estimated)
        Date(2011, 12, 5), # Ashura (estimated)
        Date(2012, 2, 4), # Prophet's Birthday (estimated)
        Date(2012, 2, 15), # Liberation Day
        Date(2012, 3, 20), # Nowruz
        Date(2012, 4, 28), # Mojahedin's Victory Day
        Date(2012, 5, 1), # International Workers' Day
        Date(2012, 7, 20), # First Day of Ramadan (estimated)
        Date(2012, 8, 19), # Afghanistan Independence Day; Eid al-Fitr (estimated)
        Date(2012, 8, 20), # Eid al-Fitr (estimated)
        Date(2012, 8, 21), # Eid al-Fitr (estimated)
        Date(2012, 9, 9), # Martyrs' Day
        Date(2012, 10, 25), # Day of Arafah (estimated)
        Date(2012, 10, 26), # Eid al-Adha (estimated)
        Date(2012, 10, 27), # Eid al-Adha (estimated)
        Date(2012, 10, 28), # Eid al-Adha (estimated)
        Date(2012, 11, 24), # Ashura (estimated)
        Date(2013, 1, 24), # Prophet's Birthday (estimated)
        Date(2013, 2, 15), # Liberation Day
        Date(2013, 3, 21), # Nowruz
        Date(2013, 4, 28), # Mojahedin's Victory Day
        Date(2013, 5, 1), # International Workers' Day
        Date(2013, 7, 9), # First Day of Ramadan (estimated)
        Date(2013, 8, 8), # Eid al-Fitr (estimated)
        Date(2013, 8, 9), # Eid al-Fitr (estimated)
        Date(2013, 8, 10), # Eid al-Fitr (estimated)
        Date(2013, 8, 19), # Afghanistan Independence Day
        Date(2013, 9, 9), # Martyrs' Day
        Date(2013, 10, 14), # Day of Arafah (estimated)
        Date(2013, 10, 15), # Eid al-Adha (estimated)
        Date(2013, 10, 16), # Eid al-Adha (estimated)
        Date(2013, 10, 17), # Eid al-Adha (estimated)
        Date(2013, 11, 13), # Ashura (estimated)
        Date(2014, 1, 14), # Prophet's Birthday
        Date(2014, 2, 15), # Liberation Day
        Date(2014, 3, 21), # Nowruz
        Date(2014, 4, 28), # Mojahedin's Victory Day
        Date(2014, 5, 1), # International Workers' Day
        Date(2014, 6, 29), # First Day of Ramadan
        Date(2014, 7, 29), # Eid al-Fitr
        Date(2014, 7, 30), # Eid al-Fitr
        Date(2014, 7, 31), # Eid al-Fitr
        Date(2014, 8, 19), # Afghanistan Independence Day
        Date(2014, 9, 9), # Martyrs' Day
        Date(2014, 10, 4), # Day of Arafah
        Date(2014, 10, 5), # Eid al-Adha
        Date(2014, 10, 6), # Eid al-Adha
        Date(2014, 10, 7), # Eid al-Adha
        Date(2014, 11, 3), # Ashura
        Date(2015, 1, 3), # Prophet's Birthday
        Date(2015, 2, 15), # Liberation Day
        Date(2015, 3, 21), # Nowruz
        Date(2015, 4, 28), # Mojahedin's Victory Day
        Date(2015, 5, 1), # International Workers' Day
        Date(2015, 6, 18), # First Day of Ramadan
        Date(2015, 7, 18), # Eid al-Fitr
        Date(2015, 7, 19), # Eid al-Fitr
        Date(2015, 7, 20), # Eid al-Fitr
        Date(2015, 8, 19), # Afghanistan Independence Day
        Date(2015, 9, 9), # Martyrs' Day
        Date(2015, 9, 22), # Day of Arafah
        Date(2015, 9, 23), # Eid al-Adha
        Date(2015, 9, 24), # Eid al-Adha
        Date(2015, 9, 25), # Eid al-Adha
        Date(2015, 10, 24), # Ashura
        Date(2015, 12, 24), # Prophet's Birthday
        Date(2016, 2, 15), # Liberation Day
        Date(2016, 3, 20), # Nowruz
        Date(2016, 4, 28), # Mojahedin's Victory Day
        Date(2016, 5, 1), # International Workers' Day
        Date(2016, 6, 7), # First Day of Ramadan
        Date(2016, 7, 7), # Eid al-Fitr
        Date(2016, 7, 8), # Eid al-Fitr
        Date(2016, 7, 9), # Eid al-Fitr
        Date(2016, 8, 19), # Afghanistan Independence Day
        Date(2016, 9, 9), # Martyrs' Day
        Date(2016, 9, 12), # Day of Arafah
        Date(2016, 9, 13), # Eid al-Adha
        Date(2016, 9, 14), # Eid al-Adha
        Date(2016, 9, 15), # Eid al-Adha
        Date(2016, 10, 12), # Ashura
        Date(2016, 12, 12), # Prophet's Birthday
        Date(2017, 2, 15), # Liberation Day
        Date(2017, 3, 21), # Nowruz
        Date(2017, 4, 28), # Mojahedin's Victory Day
        Date(2017, 5, 1), # International Workers' Day
        Date(2017, 5, 27), # First Day of Ramadan
        Date(2017, 6, 26), # Eid al-Fitr
        Date(2017, 6, 27), # Eid al-Fitr
        Date(2017, 6, 28), # Eid al-Fitr
        Date(2017, 8, 19), # Afghanistan Independence Day
        Date(2017, 9, 1), # Day of Arafah
        Date(2017, 9, 2), # Eid al-Adha
        Date(2017, 9, 3), # Eid al-Adha
        Date(2017, 9, 4), # Eid al-Adha
        Date(2017, 9, 9), # Martyrs' Day
        Date(2017, 10, 1), # Ashura
        Date(2017, 12, 1), # Prophet's Birthday
        Date(2018, 2, 15), # Liberation Day
        Date(2018, 3, 21), # Nowruz
        Date(2018, 4, 28), # Mojahedin's Victory Day
        Date(2018, 5, 1), # International Workers' Day
        Date(2018, 5, 16), # First Day of Ramadan
        Date(2018, 6, 15), # Eid al-Fitr
        Date(2018, 6, 16), # Eid al-Fitr
        Date(2018, 6, 17), # Eid al-Fitr
        Date(2018, 8, 19), # Afghanistan Independence Day
        Date(2018, 8, 21), # Day of Arafah
        Date(2018, 8, 22), # Eid al-Adha
        Date(2018, 8, 23), # Eid al-Adha
        Date(2018, 8, 24), # Eid al-Adha
        Date(2018, 9, 9), # Martyrs' Day
        Date(2018, 9, 21), # Ashura
        Date(2018, 11, 21), # Prophet's Birthday
        Date(2019, 2, 15), # Liberation Day
        Date(2019, 3, 21), # Nowruz
        Date(2019, 4, 28), # Mojahedin's Victory Day
        Date(2019, 5, 1), # International Workers' Day
        Date(2019, 5, 6), # First Day of Ramadan
        Date(2019, 6, 4), # Eid al-Fitr
        Date(2019, 6, 5), # Eid al-Fitr
        Date(2019, 6, 6), # Eid al-Fitr
        Date(2019, 8, 10), # Day of Arafah
        Date(2019, 8, 11), # Eid al-Adha
        Date(2019, 8, 12), # Eid al-Adha
        Date(2019, 8, 13), # Eid al-Adha
        Date(2019, 8, 19), # Afghanistan Independence Day
        Date(2019, 9, 9), # Martyrs' Day
        Date(2019, 9, 10), # Ashura
        Date(2019, 11, 10), # Prophet's Birthday
        Date(2020, 2, 15), # Liberation Day
        Date(2020, 3, 20), # Nowruz
        Date(2020, 4, 24), # First Day of Ramadan
        Date(2020, 4, 28), # Mojahedin's Victory Day
        Date(2020, 5, 1), # International Workers' Day
        Date(2020, 5, 24), # Eid al-Fitr
        Date(2020, 5, 25), # Eid al-Fitr
        Date(2020, 5, 26), # Eid al-Fitr
        Date(2020, 7, 30), # Day of Arafah
        Date(2020, 7, 31), # Eid al-Adha
        Date(2020, 8, 1), # Eid al-Adha
        Date(2020, 8, 2), # Eid al-Adha
        Date(2020, 8, 19), # Afghanistan Independence Day
        Date(2020, 8, 30), # Ashura
        Date(2020, 9, 9), # Martyrs' Day
        Date(2020, 10, 29), # Prophet's Birthday
        Date(2021, 2, 15), # Liberation Day
        Date(2021, 4, 13), # First Day of Ramadan
        Date(2021, 4, 28), # Mojahedin's Victory Day
        Date(2021, 5, 1), # International Workers' Day
        Date(2021, 5, 13), # Eid al-Fitr
        Date(2021, 5, 14), # Eid al-Fitr
        Date(2021, 5, 15), # Eid al-Fitr
        Date(2021, 7, 19), # Day of Arafah
        Date(2021, 7, 20), # Eid al-Adha
        Date(2021, 7, 21), # Eid al-Adha
        Date(2021, 7, 22), # Eid al-Adha
        Date(2021, 8, 19), # Afghanistan Independence Day; Ashura
        Date(2021, 10, 19), # Prophet's Birthday
        Date(2022, 2, 15), # Liberation Day
        Date(2022, 4, 2), # First Day of Ramadan
        Date(2022, 4, 28), # Mojahedin's Victory Day
        Date(2022, 5, 1), # Eid al-Fitr
        Date(2022, 5, 2), # Eid al-Fitr
        Date(2022, 5, 3), # Eid al-Fitr
        Date(2022, 7, 8), # Day of Arafah
        Date(2022, 7, 9), # Eid al-Adha
        Date(2022, 7, 10), # Eid al-Adha
        Date(2022, 7, 11), # Eid al-Adha
        Date(2022, 8, 15), # Islamic Emirate Victory Day
        Date(2022, 8, 19), # Afghanistan Independence Day
        Date(2022, 8, 31), # American Withdrawal Day
        Date(2022, 10, 8), # Prophet's Birthday
        Date(2023, 2, 15), # Liberation Day
        Date(2023, 3, 23), # First Day of Ramadan
        Date(2023, 4, 22), # Eid al-Fitr
        Date(2023, 4, 23), # Eid al-Fitr
        Date(2023, 4, 24), # Eid al-Fitr
        Date(2023, 4, 28), # Mojahedin's Victory Day
        Date(2023, 6, 27), # Day of Arafah
        Date(2023, 6, 28), # Eid al-Adha
        Date(2023, 6, 29), # Eid al-Adha
        Date(2023, 6, 30), # Eid al-Adha
        Date(2023, 8, 15), # Islamic Emirate Victory Day
        Date(2023, 8, 19), # Afghanistan Independence Day
        Date(2023, 8, 31), # American Withdrawal Day
        Date(2023, 9, 27), # Prophet's Birthday
        Date(2024, 2, 15), # Liberation Day
        Date(2024, 3, 11), # First Day of Ramadan
        Date(2024, 4, 10), # Eid al-Fitr
        Date(2024, 4, 11), # Eid al-Fitr
        Date(2024, 4, 12), # Eid al-Fitr
        Date(2024, 4, 28), # Mojahedin's Victory Day
        Date(2024, 6, 16), # Day of Arafah
        Date(2024, 6, 17), # Eid al-Adha
        Date(2024, 6, 18), # Eid al-Adha
        Date(2024, 6, 19), # Eid al-Adha
        Date(2024, 8, 14), # Islamic Emirate Victory Day
        Date(2024, 8, 19), # Afghanistan Independence Day
        Date(2024, 8, 31), # American Withdrawal Day
        Date(2024, 9, 16), # Prophet's Birthday
        Date(2025, 2, 15), # Liberation Day
        Date(2025, 3, 1), # First Day of Ramadan (estimated)
        Date(2025, 3, 30), # Eid al-Fitr (estimated)
        Date(2025, 3, 31), # Eid al-Fitr (estimated)
        Date(2025, 4, 1), # Eid al-Fitr (estimated)
        Date(2025, 4, 28), # Mojahedin's Victory Day
        Date(2025, 6, 5), # Day of Arafah (estimated)
        Date(2025, 6, 6), # Eid al-Adha (estimated)
        Date(2025, 6, 7), # Eid al-Adha (estimated)
        Date(2025, 6, 8), # Eid al-Adha (estimated)
        Date(2025, 8, 15), # Islamic Emirate Victory Day
        Date(2025, 8, 19), # Afghanistan Independence Day
        Date(2025, 8, 31), # American Withdrawal Day
        Date(2025, 9, 4), # Prophet's Birthday (estimated)
        Date(2026, 2, 15), # Liberation Day
        Date(2026, 2, 18), # First Day of Ramadan (estimated)
        Date(2026, 3, 20), # Eid al-Fitr (estimated)
        Date(2026, 3, 21), # Eid al-Fitr (estimated)
        Date(2026, 3, 22), # Eid al-Fitr (estimated)
        Date(2026, 4, 28), # Mojahedin's Victory Day
        Date(2026, 5, 26), # Day of Arafah (estimated)
        Date(2026, 5, 27), # Eid al-Adha (estimated)
        Date(2026, 5, 28), # Eid al-Adha (estimated)
        Date(2026, 5, 29), # Eid al-Adha (estimated)
        Date(2026, 8, 15), # Islamic Emirate Victory Day
        Date(2026, 8, 19), # Afghanistan Independence Day
        Date(2026, 8, 25), # Prophet's Birthday (estimated)
        Date(2026, 8, 31), # American Withdrawal Day
        Date(2027, 2, 8), # First Day of Ramadan (estimated)
        Date(2027, 2, 15), # Liberation Day
        Date(2027, 3, 9), # Eid al-Fitr (estimated)
        Date(2027, 3, 10), # Eid al-Fitr (estimated)
        Date(2027, 3, 11), # Eid al-Fitr (estimated)
        Date(2027, 4, 28), # Mojahedin's Victory Day
        Date(2027, 5, 15), # Day of Arafah (estimated)
        Date(2027, 5, 16), # Eid al-Adha (estimated)
        Date(2027, 5, 17), # Eid al-Adha (estimated)
        Date(2027, 5, 18), # Eid al-Adha (estimated)
        Date(2027, 8, 14), # Prophet's Birthday (estimated)
        Date(2027, 8, 15), # Islamic Emirate Victory Day
        Date(2027, 8, 19), # Afghanistan Independence Day
        Date(2027, 8, 31), # American Withdrawal Day
        Date(2028, 1, 28), # First Day of Ramadan (estimated)
        Date(2028, 2, 15), # Liberation Day
        Date(2028, 2, 26), # Eid al-Fitr (estimated)
        Date(2028, 2, 27), # Eid al-Fitr (estimated)
        Date(2028, 2, 28), # Eid al-Fitr (estimated)
        Date(2028, 4, 28), # Mojahedin's Victory Day
        Date(2028, 5, 4), # Day of Arafah (estimated)
        Date(2028, 5, 5), # Eid al-Adha (estimated)
        Date(2028, 5, 6), # Eid al-Adha (estimated)
        Date(2028, 5, 7), # Eid al-Adha (estimated)
        Date(2028, 8, 3), # Prophet's Birthday (estimated)
        Date(2028, 8, 14), # Islamic Emirate Victory Day
        Date(2028, 8, 19), # Afghanistan Independence Day
        Date(2028, 8, 31), # American Withdrawal Day
        Date(2029, 1, 16), # First Day of Ramadan (estimated)
        Date(2029, 2, 14), # Eid al-Fitr (estimated)
        Date(2029, 2, 15), # Eid al-Fitr (estimated); Liberation Day
        Date(2029, 2, 16), # Eid al-Fitr (estimated)
        Date(2029, 4, 23), # Day of Arafah (estimated)
        Date(2029, 4, 24), # Eid al-Adha (estimated)
        Date(2029, 4, 25), # Eid al-Adha (estimated)
        Date(2029, 4, 26), # Eid al-Adha (estimated)
        Date(2029, 4, 28), # Mojahedin's Victory Day
        Date(2029, 7, 24), # Prophet's Birthday (estimated)
        Date(2029, 8, 14), # Islamic Emirate Victory Day
        Date(2029, 8, 19), # Afghanistan Independence Day
        Date(2029, 8, 31), # American Withdrawal Day
        Date(2030, 1, 5), # First Day of Ramadan (estimated)
        Date(2030, 2, 4), # Eid al-Fitr (estimated)
        Date(2030, 2, 5), # Eid al-Fitr (estimated)
        Date(2030, 2, 6), # Eid al-Fitr (estimated)
        Date(2030, 2, 15), # Liberation Day
        Date(2030, 4, 12), # Day of Arafah (estimated)
        Date(2030, 4, 13), # Eid al-Adha (estimated)
        Date(2030, 4, 14), # Eid al-Adha (estimated)
        Date(2030, 4, 15), # Eid al-Adha (estimated)
        Date(2030, 4, 28), # Mojahedin's Victory Day
        Date(2030, 7, 13), # Prophet's Birthday (estimated)
        Date(2030, 8, 15), # Islamic Emirate Victory Day
        Date(2030, 8, 19), # Afghanistan Independence Day
        Date(2030, 8, 31), # American Withdrawal Day
        Date(2030, 12, 26), # First Day of Ramadan (estimated)
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
