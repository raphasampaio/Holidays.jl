module TestChile

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Chile" begin
    calendar = Holidays.Chile()

    holidays = [
        Date(1970, 1, 1), # New Year's Day
        Date(1970, 3, 27), # Good Friday
        Date(1970, 3, 28), # Holy Saturday
        Date(1970, 5, 1), # Labor Day
        Date(1970, 5, 21), # Navy Day
        Date(1970, 8, 15), # Assumption Day
        Date(1970, 9, 18), # Independence Day
        Date(1970, 9, 19), # Army Day
        Date(1970, 10, 12), # Columbus Day
        Date(1970, 11, 1), # All Saints' Day
        Date(1970, 12, 8), # Immaculate Conception
        Date(1970, 12, 24), # Christmas Eve
        Date(1970, 12, 25), # Christmas Day
        Date(1971, 1, 1), # New Year's Day
        Date(1971, 4, 9), # Good Friday
        Date(1971, 4, 10), # Holy Saturday
        Date(1971, 5, 1), # Labor Day
        Date(1971, 5, 21), # Navy Day
        Date(1971, 8, 15), # Assumption Day
        Date(1971, 9, 18), # Independence Day
        Date(1971, 9, 19), # Army Day
        Date(1971, 10, 12), # Columbus Day
        Date(1971, 11, 1), # All Saints' Day
        Date(1971, 12, 8), # Immaculate Conception
        Date(1971, 12, 24), # Christmas Eve
        Date(1971, 12, 25), # Christmas Day
        Date(1972, 1, 1), # New Year's Day
        Date(1972, 3, 31), # Good Friday
        Date(1972, 4, 1), # Holy Saturday
        Date(1972, 5, 1), # Labor Day
        Date(1972, 5, 21), # Navy Day
        Date(1972, 8, 15), # Assumption Day
        Date(1972, 9, 18), # Independence Day
        Date(1972, 9, 19), # Army Day
        Date(1972, 10, 12), # Columbus Day
        Date(1972, 11, 1), # All Saints' Day
        Date(1972, 12, 8), # Immaculate Conception
        Date(1972, 12, 24), # Christmas Eve
        Date(1972, 12, 25), # Christmas Day
        Date(1973, 1, 1), # New Year's Day
        Date(1973, 4, 20), # Good Friday
        Date(1973, 4, 21), # Holy Saturday
        Date(1973, 5, 1), # Labor Day
        Date(1973, 5, 21), # Navy Day
        Date(1973, 8, 15), # Assumption Day
        Date(1973, 9, 18), # Independence Day
        Date(1973, 9, 19), # Army Day
        Date(1973, 11, 1), # All Saints' Day
        Date(1973, 12, 8), # Immaculate Conception
        Date(1973, 12, 24), # Christmas Eve
        Date(1973, 12, 25), # Christmas Day
        Date(1974, 1, 1), # New Year's Day
        Date(1974, 4, 12), # Good Friday
        Date(1974, 4, 13), # Holy Saturday
        Date(1974, 5, 1), # Labor Day
        Date(1974, 5, 21), # Navy Day
        Date(1974, 8, 15), # Assumption Day
        Date(1974, 9, 18), # Independence Day
        Date(1974, 9, 19), # Army Day
        Date(1974, 10, 12), # Columbus Day
        Date(1974, 11, 1), # All Saints' Day
        Date(1974, 12, 8), # Immaculate Conception
        Date(1974, 12, 24), # Christmas Eve
        Date(1974, 12, 25), # Christmas Day
        Date(1975, 1, 1), # New Year's Day
        Date(1975, 3, 28), # Good Friday
        Date(1975, 3, 29), # Holy Saturday
        Date(1975, 5, 1), # Labor Day
        Date(1975, 5, 21), # Navy Day
        Date(1975, 8, 15), # Assumption Day
        Date(1975, 9, 18), # Independence Day
        Date(1975, 9, 19), # Army Day
        Date(1975, 10, 12), # Columbus Day
        Date(1975, 11, 1), # All Saints' Day
        Date(1975, 12, 8), # Immaculate Conception
        Date(1975, 12, 24), # Christmas Eve
        Date(1975, 12, 25), # Christmas Day
        Date(1976, 1, 1), # New Year's Day
        Date(1976, 4, 16), # Good Friday
        Date(1976, 4, 17), # Holy Saturday
        Date(1976, 5, 1), # Labor Day
        Date(1976, 5, 21), # Navy Day
        Date(1976, 8, 15), # Assumption Day
        Date(1976, 9, 18), # Independence Day
        Date(1976, 9, 19), # Army Day
        Date(1976, 10, 12), # Columbus Day
        Date(1976, 11, 1), # All Saints' Day
        Date(1976, 12, 8), # Immaculate Conception
        Date(1976, 12, 24), # Christmas Eve
        Date(1976, 12, 25), # Christmas Day
        Date(1977, 1, 1), # New Year's Day
        Date(1977, 4, 8), # Good Friday
        Date(1977, 4, 9), # Holy Saturday
        Date(1977, 5, 1), # Labor Day
        Date(1977, 5, 21), # Navy Day
        Date(1977, 8, 15), # Assumption Day
        Date(1977, 9, 18), # Independence Day
        Date(1977, 9, 19), # Army Day
        Date(1977, 10, 12), # Columbus Day
        Date(1977, 11, 1), # All Saints' Day
        Date(1977, 12, 8), # Immaculate Conception
        Date(1977, 12, 24), # Christmas Eve
        Date(1977, 12, 25), # Christmas Day
        Date(1978, 1, 1), # New Year's Day
        Date(1978, 3, 24), # Good Friday
        Date(1978, 3, 25), # Holy Saturday
        Date(1978, 5, 1), # Labor Day
        Date(1978, 5, 21), # Navy Day
        Date(1978, 8, 15), # Assumption Day
        Date(1978, 9, 18), # Independence Day
        Date(1978, 9, 19), # Army Day
        Date(1978, 10, 12), # Columbus Day
        Date(1978, 11, 1), # All Saints' Day
        Date(1978, 12, 8), # Immaculate Conception
        Date(1978, 12, 24), # Christmas Eve
        Date(1978, 12, 25), # Christmas Day
        Date(1979, 1, 1), # New Year's Day
        Date(1979, 4, 13), # Good Friday
        Date(1979, 4, 14), # Holy Saturday
        Date(1979, 5, 1), # Labor Day
        Date(1979, 5, 21), # Navy Day
        Date(1979, 8, 15), # Assumption Day
        Date(1979, 9, 18), # Independence Day
        Date(1979, 9, 19), # Army Day
        Date(1979, 10, 12), # Columbus Day
        Date(1979, 11, 1), # All Saints' Day
        Date(1979, 12, 8), # Immaculate Conception
        Date(1979, 12, 24), # Christmas Eve
        Date(1979, 12, 25), # Christmas Day
        Date(1980, 1, 1), # New Year's Day
        Date(1980, 4, 4), # Good Friday
        Date(1980, 4, 5), # Holy Saturday
        Date(1980, 5, 1), # Labor Day
        Date(1980, 5, 21), # Navy Day
        Date(1980, 8, 15), # Assumption Day
        Date(1980, 9, 18), # Independence Day
        Date(1980, 9, 19), # Army Day
        Date(1980, 10, 12), # Columbus Day
        Date(1980, 11, 1), # All Saints' Day
        Date(1980, 12, 8), # Immaculate Conception
        Date(1980, 12, 24), # Christmas Eve
        Date(1980, 12, 25), # Christmas Day
        Date(1981, 1, 1), # New Year's Day
        Date(1981, 4, 17), # Good Friday
        Date(1981, 4, 18), # Holy Saturday
        Date(1981, 5, 1), # Labor Day
        Date(1981, 5, 21), # Navy Day
        Date(1981, 8, 15), # Assumption Day
        Date(1981, 9, 11), # Day of National Liberation
        Date(1981, 9, 18), # Independence Day
        Date(1981, 9, 19), # Army Day
        Date(1981, 10, 12), # Columbus Day
        Date(1981, 11, 1), # All Saints' Day
        Date(1981, 12, 8), # Immaculate Conception
        Date(1981, 12, 24), # Christmas Eve
        Date(1981, 12, 25), # Christmas Day
        Date(1982, 1, 1), # New Year's Day
        Date(1982, 4, 9), # Good Friday
        Date(1982, 4, 10), # Holy Saturday
        Date(1982, 5, 1), # Labor Day
        Date(1982, 5, 21), # Navy Day
        Date(1982, 8, 15), # Assumption Day
        Date(1982, 9, 11), # Day of National Liberation
        Date(1982, 9, 18), # Independence Day
        Date(1982, 9, 19), # Army Day
        Date(1982, 10, 12), # Columbus Day
        Date(1982, 11, 1), # All Saints' Day
        Date(1982, 12, 8), # Immaculate Conception
        Date(1982, 12, 24), # Christmas Eve
        Date(1982, 12, 25), # Christmas Day
        Date(1983, 1, 1), # New Year's Day
        Date(1983, 4, 1), # Good Friday
        Date(1983, 4, 2), # Holy Saturday
        Date(1983, 5, 1), # Labor Day
        Date(1983, 5, 21), # Navy Day
        Date(1983, 8, 15), # Assumption Day
        Date(1983, 9, 11), # Day of National Liberation
        Date(1983, 9, 18), # Independence Day
        Date(1983, 9, 19), # Army Day
        Date(1983, 10, 12), # Columbus Day
        Date(1983, 11, 1), # All Saints' Day
        Date(1983, 12, 8), # Immaculate Conception
        Date(1983, 12, 24), # Christmas Eve
        Date(1983, 12, 25), # Christmas Day
        Date(1984, 1, 1), # New Year's Day
        Date(1984, 4, 20), # Good Friday
        Date(1984, 4, 21), # Holy Saturday
        Date(1984, 5, 1), # Labor Day
        Date(1984, 5, 21), # Navy Day
        Date(1984, 8, 15), # Assumption Day
        Date(1984, 9, 11), # Day of National Liberation
        Date(1984, 9, 18), # Independence Day
        Date(1984, 9, 19), # Army Day
        Date(1984, 10, 12), # Columbus Day
        Date(1984, 11, 1), # All Saints' Day
        Date(1984, 12, 8), # Immaculate Conception
        Date(1984, 12, 24), # Christmas Eve
        Date(1984, 12, 25), # Christmas Day
        Date(1985, 1, 1), # New Year's Day
        Date(1985, 4, 5), # Good Friday
        Date(1985, 4, 6), # Holy Saturday
        Date(1985, 5, 1), # Labor Day
        Date(1985, 5, 21), # Navy Day
        Date(1985, 8, 15), # Assumption Day
        Date(1985, 9, 11), # Day of National Liberation
        Date(1985, 9, 18), # Independence Day
        Date(1985, 9, 19), # Army Day
        Date(1985, 10, 12), # Columbus Day
        Date(1985, 11, 1), # All Saints' Day
        Date(1985, 12, 8), # Immaculate Conception
        Date(1985, 12, 24), # Christmas Eve
        Date(1985, 12, 25), # Christmas Day
        Date(1986, 1, 1), # New Year's Day
        Date(1986, 3, 28), # Good Friday
        Date(1986, 3, 29), # Holy Saturday
        Date(1986, 5, 1), # Labor Day
        Date(1986, 5, 21), # Navy Day
        Date(1986, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1986, 8, 15), # Assumption Day
        Date(1986, 9, 11), # Day of National Liberation
        Date(1986, 9, 18), # Independence Day
        Date(1986, 9, 19), # Army Day
        Date(1986, 10, 12), # Columbus Day
        Date(1986, 11, 1), # All Saints' Day
        Date(1986, 12, 8), # Immaculate Conception
        Date(1986, 12, 24), # Christmas Eve
        Date(1986, 12, 25), # Christmas Day
        Date(1987, 1, 1), # New Year's Day
        Date(1987, 4, 17), # Good Friday
        Date(1987, 4, 18), # Holy Saturday
        Date(1987, 5, 1), # Labor Day
        Date(1987, 5, 21), # Navy Day
        Date(1987, 6, 18), # Corpus Christi
        Date(1987, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1987, 8, 15), # Assumption Day
        Date(1987, 9, 11), # Day of National Liberation
        Date(1987, 9, 18), # Independence Day
        Date(1987, 9, 19), # Army Day
        Date(1987, 10, 12), # Columbus Day
        Date(1987, 11, 1), # All Saints' Day
        Date(1987, 12, 8), # Immaculate Conception
        Date(1987, 12, 24), # Christmas Eve
        Date(1987, 12, 25), # Christmas Day
        Date(1988, 1, 1), # New Year's Day
        Date(1988, 4, 1), # Good Friday
        Date(1988, 4, 2), # Holy Saturday
        Date(1988, 5, 1), # Labor Day
        Date(1988, 5, 21), # Navy Day
        Date(1988, 6, 2), # Corpus Christi
        Date(1988, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1988, 8, 15), # Assumption Day
        Date(1988, 9, 11), # Day of National Liberation
        Date(1988, 9, 18), # Independence Day
        Date(1988, 9, 19), # Army Day
        Date(1988, 10, 12), # Columbus Day
        Date(1988, 11, 1), # All Saints' Day
        Date(1988, 12, 8), # Immaculate Conception
        Date(1988, 12, 24), # Christmas Eve
        Date(1988, 12, 25), # Christmas Day
        Date(1989, 1, 1), # New Year's Day
        Date(1989, 3, 24), # Good Friday
        Date(1989, 3, 25), # Holy Saturday
        Date(1989, 5, 1), # Labor Day
        Date(1989, 5, 21), # Navy Day
        Date(1989, 5, 25), # Corpus Christi
        Date(1989, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1989, 8, 15), # Assumption Day
        Date(1989, 9, 11), # Day of National Liberation
        Date(1989, 9, 18), # Independence Day
        Date(1989, 9, 19), # Army Day
        Date(1989, 10, 12), # Columbus Day
        Date(1989, 11, 1), # All Saints' Day
        Date(1989, 12, 8), # Immaculate Conception
        Date(1989, 12, 25), # Christmas Day
        Date(1990, 1, 1), # New Year's Day
        Date(1990, 4, 13), # Good Friday
        Date(1990, 4, 14), # Holy Saturday
        Date(1990, 5, 1), # Labor Day
        Date(1990, 5, 21), # Navy Day
        Date(1990, 6, 14), # Corpus Christi
        Date(1990, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1990, 8, 15), # Assumption Day
        Date(1990, 9, 11), # Day of National Liberation
        Date(1990, 9, 18), # Independence Day
        Date(1990, 9, 19), # Army Day
        Date(1990, 10, 12), # Columbus Day
        Date(1990, 11, 1), # All Saints' Day
        Date(1990, 12, 8), # Immaculate Conception
        Date(1990, 12, 25), # Christmas Day
        Date(1991, 1, 1), # New Year's Day
        Date(1991, 3, 29), # Good Friday
        Date(1991, 3, 30), # Holy Saturday
        Date(1991, 5, 1), # Labor Day
        Date(1991, 5, 21), # Navy Day
        Date(1991, 5, 30), # Corpus Christi
        Date(1991, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1991, 8, 15), # Assumption Day
        Date(1991, 9, 11), # Day of National Liberation
        Date(1991, 9, 18), # Independence Day
        Date(1991, 9, 19), # Army Day
        Date(1991, 10, 12), # Columbus Day
        Date(1991, 11, 1), # All Saints' Day
        Date(1991, 12, 8), # Immaculate Conception
        Date(1991, 12, 25), # Christmas Day
        Date(1992, 1, 1), # New Year's Day
        Date(1992, 4, 17), # Good Friday
        Date(1992, 4, 18), # Holy Saturday
        Date(1992, 5, 1), # Labor Day
        Date(1992, 5, 21), # Navy Day
        Date(1992, 6, 18), # Corpus Christi
        Date(1992, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1992, 8, 15), # Assumption Day
        Date(1992, 9, 11), # Day of National Liberation
        Date(1992, 9, 18), # Independence Day
        Date(1992, 9, 19), # Army Day
        Date(1992, 10, 12), # Columbus Day
        Date(1992, 11, 1), # All Saints' Day
        Date(1992, 12, 8), # Immaculate Conception
        Date(1992, 12, 25), # Christmas Day
        Date(1993, 1, 1), # New Year's Day
        Date(1993, 4, 9), # Good Friday
        Date(1993, 4, 10), # Holy Saturday
        Date(1993, 5, 1), # Labor Day
        Date(1993, 5, 21), # Navy Day
        Date(1993, 6, 10), # Corpus Christi
        Date(1993, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1993, 8, 15), # Assumption Day
        Date(1993, 9, 11), # Day of National Liberation
        Date(1993, 9, 18), # Independence Day
        Date(1993, 9, 19), # Army Day
        Date(1993, 10, 12), # Columbus Day
        Date(1993, 11, 1), # All Saints' Day
        Date(1993, 12, 8), # Immaculate Conception
        Date(1993, 12, 25), # Christmas Day
        Date(1994, 1, 1), # New Year's Day
        Date(1994, 4, 1), # Good Friday
        Date(1994, 4, 2), # Holy Saturday
        Date(1994, 5, 1), # Labor Day
        Date(1994, 5, 21), # Navy Day
        Date(1994, 6, 2), # Corpus Christi
        Date(1994, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1994, 8, 15), # Assumption Day
        Date(1994, 9, 11), # Day of National Liberation
        Date(1994, 9, 18), # Independence Day
        Date(1994, 9, 19), # Army Day
        Date(1994, 10, 12), # Columbus Day
        Date(1994, 11, 1), # All Saints' Day
        Date(1994, 12, 8), # Immaculate Conception
        Date(1994, 12, 25), # Christmas Day
        Date(1995, 1, 1), # New Year's Day
        Date(1995, 4, 14), # Good Friday
        Date(1995, 4, 15), # Holy Saturday
        Date(1995, 5, 1), # Labor Day
        Date(1995, 5, 21), # Navy Day
        Date(1995, 6, 15), # Corpus Christi
        Date(1995, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1995, 8, 15), # Assumption Day
        Date(1995, 9, 11), # Day of National Liberation
        Date(1995, 9, 18), # Independence Day
        Date(1995, 9, 19), # Army Day
        Date(1995, 10, 12), # Columbus Day
        Date(1995, 11, 1), # All Saints' Day
        Date(1995, 12, 8), # Immaculate Conception
        Date(1995, 12, 25), # Christmas Day
        Date(1996, 1, 1), # New Year's Day
        Date(1996, 4, 5), # Good Friday
        Date(1996, 4, 6), # Holy Saturday
        Date(1996, 5, 1), # Labor Day
        Date(1996, 5, 21), # Navy Day
        Date(1996, 6, 6), # Corpus Christi
        Date(1996, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1996, 8, 15), # Assumption Day
        Date(1996, 9, 11), # Day of National Liberation
        Date(1996, 9, 18), # Independence Day
        Date(1996, 9, 19), # Army Day
        Date(1996, 10, 12), # Columbus Day
        Date(1996, 11, 1), # All Saints' Day
        Date(1996, 12, 8), # Immaculate Conception
        Date(1996, 12, 25), # Christmas Day
        Date(1997, 1, 1), # New Year's Day
        Date(1997, 3, 28), # Good Friday
        Date(1997, 3, 29), # Holy Saturday
        Date(1997, 5, 1), # Labor Day
        Date(1997, 5, 21), # Navy Day
        Date(1997, 5, 29), # Corpus Christi
        Date(1997, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1997, 8, 15), # Assumption Day
        Date(1997, 9, 11), # Day of National Liberation
        Date(1997, 9, 18), # Independence Day
        Date(1997, 9, 19), # Army Day
        Date(1997, 10, 12), # Columbus Day
        Date(1997, 11, 1), # All Saints' Day
        Date(1997, 12, 8), # Immaculate Conception
        Date(1997, 12, 25), # Christmas Day
        Date(1998, 1, 1), # New Year's Day
        Date(1998, 4, 10), # Good Friday
        Date(1998, 4, 11), # Holy Saturday
        Date(1998, 5, 1), # Labor Day
        Date(1998, 5, 21), # Navy Day
        Date(1998, 6, 11), # Corpus Christi
        Date(1998, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1998, 8, 15), # Assumption Day
        Date(1998, 9, 11), # Day of National Liberation
        Date(1998, 9, 18), # Independence Day
        Date(1998, 9, 19), # Army Day
        Date(1998, 10, 12), # Columbus Day
        Date(1998, 11, 1), # All Saints' Day
        Date(1998, 12, 8), # Immaculate Conception
        Date(1998, 12, 25), # Christmas Day
        Date(1999, 1, 1), # New Year's Day
        Date(1999, 4, 2), # Good Friday
        Date(1999, 4, 3), # Holy Saturday
        Date(1999, 5, 1), # Labor Day
        Date(1999, 5, 21), # Navy Day
        Date(1999, 6, 3), # Corpus Christi
        Date(1999, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1999, 8, 15), # Assumption Day
        Date(1999, 9, 6), # Day of National Unity
        Date(1999, 9, 18), # Independence Day
        Date(1999, 9, 19), # Army Day
        Date(1999, 10, 12), # Columbus Day
        Date(1999, 11, 1), # All Saints' Day
        Date(1999, 12, 8), # Immaculate Conception
        Date(1999, 12, 25), # Christmas Day
        Date(1999, 12, 31), # National Holiday
        Date(2000, 1, 1), # New Year's Day
        Date(2000, 4, 21), # Good Friday
        Date(2000, 4, 22), # Holy Saturday
        Date(2000, 5, 1), # Labor Day
        Date(2000, 5, 21), # Navy Day
        Date(2000, 6, 19), # Corpus Christi
        Date(2000, 6, 26), # Saint Peter and Saint Paul's Day
        Date(2000, 8, 15), # Assumption Day
        Date(2000, 9, 4), # Day of National Unity
        Date(2000, 9, 18), # Independence Day
        Date(2000, 9, 19), # Army Day
        Date(2000, 10, 9), # Meeting of Two Worlds' Day
        Date(2000, 11, 1), # All Saints' Day
        Date(2000, 12, 8), # Immaculate Conception
        Date(2000, 12, 25), # Christmas Day
        Date(2001, 1, 1), # New Year's Day
        Date(2001, 4, 13), # Good Friday
        Date(2001, 4, 14), # Holy Saturday
        Date(2001, 5, 1), # Labor Day
        Date(2001, 5, 21), # Navy Day
        Date(2001, 6, 11), # Corpus Christi
        Date(2001, 7, 2), # Saint Peter and Saint Paul's Day
        Date(2001, 8, 15), # Assumption Day
        Date(2001, 9, 3), # Day of National Unity
        Date(2001, 9, 18), # Independence Day
        Date(2001, 9, 19), # Army Day
        Date(2001, 10, 15), # Meeting of Two Worlds' Day
        Date(2001, 11, 1), # All Saints' Day
        Date(2001, 12, 8), # Immaculate Conception
        Date(2001, 12, 25), # Christmas Day
        Date(2002, 1, 1), # New Year's Day
        Date(2002, 3, 29), # Good Friday
        Date(2002, 3, 30), # Holy Saturday
        Date(2002, 5, 1), # Labor Day
        Date(2002, 5, 21), # Navy Day
        Date(2002, 5, 27), # Corpus Christi
        Date(2002, 6, 29), # Saint Peter and Saint Paul's Day
        Date(2002, 8, 15), # Assumption Day
        Date(2002, 9, 18), # Independence Day
        Date(2002, 9, 19), # Army Day
        Date(2002, 10, 12), # Meeting of Two Worlds' Day
        Date(2002, 11, 1), # All Saints' Day
        Date(2002, 12, 8), # Immaculate Conception
        Date(2002, 12, 25), # Christmas Day
        Date(2003, 1, 1), # New Year's Day
        Date(2003, 4, 18), # Good Friday
        Date(2003, 4, 19), # Holy Saturday
        Date(2003, 5, 1), # Labor Day
        Date(2003, 5, 21), # Navy Day
        Date(2003, 6, 16), # Corpus Christi
        Date(2003, 6, 29), # Saint Peter and Saint Paul's Day
        Date(2003, 8, 15), # Assumption Day
        Date(2003, 9, 18), # Independence Day
        Date(2003, 9, 19), # Army Day
        Date(2003, 10, 12), # Meeting of Two Worlds' Day
        Date(2003, 11, 1), # All Saints' Day
        Date(2003, 12, 8), # Immaculate Conception
        Date(2003, 12, 25), # Christmas Day
        Date(2004, 1, 1), # New Year's Day
        Date(2004, 4, 9), # Good Friday
        Date(2004, 4, 10), # Holy Saturday
        Date(2004, 5, 1), # Labor Day
        Date(2004, 5, 21), # Navy Day
        Date(2004, 6, 7), # Corpus Christi
        Date(2004, 6, 28), # Saint Peter and Saint Paul's Day
        Date(2004, 8, 15), # Assumption Day
        Date(2004, 9, 18), # Independence Day
        Date(2004, 9, 19), # Army Day
        Date(2004, 10, 11), # Meeting of Two Worlds' Day
        Date(2004, 11, 1), # All Saints' Day
        Date(2004, 12, 8), # Immaculate Conception
        Date(2004, 12, 25), # Christmas Day
        Date(2005, 1, 1), # New Year's Day
        Date(2005, 3, 25), # Good Friday
        Date(2005, 3, 26), # Holy Saturday
        Date(2005, 5, 1), # Labor Day
        Date(2005, 5, 21), # Navy Day
        Date(2005, 5, 23), # Corpus Christi
        Date(2005, 6, 27), # Saint Peter and Saint Paul's Day
        Date(2005, 8, 15), # Assumption Day
        Date(2005, 9, 18), # Independence Day
        Date(2005, 9, 19), # Army Day
        Date(2005, 10, 10), # Meeting of Two Worlds' Day
        Date(2005, 11, 1), # All Saints' Day
        Date(2005, 12, 8), # Immaculate Conception
        Date(2005, 12, 25), # Christmas Day
        Date(2006, 1, 1), # New Year's Day
        Date(2006, 4, 14), # Good Friday
        Date(2006, 4, 15), # Holy Saturday
        Date(2006, 5, 1), # Labor Day
        Date(2006, 5, 21), # Navy Day
        Date(2006, 6, 12), # Corpus Christi
        Date(2006, 6, 26), # Saint Peter and Saint Paul's Day
        Date(2006, 8, 15), # Assumption Day
        Date(2006, 9, 18), # Independence Day
        Date(2006, 9, 19), # Army Day
        Date(2006, 10, 9), # Meeting of Two Worlds' Day
        Date(2006, 11, 1), # All Saints' Day
        Date(2006, 12, 8), # Immaculate Conception
        Date(2006, 12, 25), # Christmas Day
        Date(2007, 1, 1), # New Year's Day
        Date(2007, 4, 6), # Good Friday
        Date(2007, 4, 7), # Holy Saturday
        Date(2007, 5, 1), # Labor Day
        Date(2007, 5, 21), # Navy Day
        Date(2007, 7, 2), # Saint Peter and Saint Paul's Day
        Date(2007, 7, 16), # Our Lady of Mount Carmel
        Date(2007, 8, 15), # Assumption Day
        Date(2007, 9, 17), # National Holiday
        Date(2007, 9, 18), # Independence Day
        Date(2007, 9, 19), # Army Day
        Date(2007, 10, 15), # Meeting of Two Worlds' Day
        Date(2007, 11, 1), # All Saints' Day
        Date(2007, 12, 8), # Immaculate Conception
        Date(2007, 12, 25), # Christmas Day
        Date(2008, 1, 1), # New Year's Day
        Date(2008, 3, 21), # Good Friday
        Date(2008, 3, 22), # Holy Saturday
        Date(2008, 5, 1), # Labor Day
        Date(2008, 5, 21), # Navy Day
        Date(2008, 6, 29), # Saint Peter and Saint Paul's Day
        Date(2008, 7, 16), # Our Lady of Mount Carmel
        Date(2008, 8, 15), # Assumption Day
        Date(2008, 9, 18), # Independence Day
        Date(2008, 9, 19), # Army Day
        Date(2008, 10, 12), # Meeting of Two Worlds' Day
        Date(2008, 10, 31), # Reformation Day
        Date(2008, 11, 1), # All Saints' Day
        Date(2008, 12, 8), # Immaculate Conception
        Date(2008, 12, 25), # Christmas Day
        Date(2009, 1, 1), # New Year's Day
        Date(2009, 4, 10), # Good Friday
        Date(2009, 4, 11), # Holy Saturday
        Date(2009, 5, 1), # Labor Day
        Date(2009, 5, 21), # Navy Day
        Date(2009, 6, 29), # Saint Peter and Saint Paul's Day
        Date(2009, 7, 16), # Our Lady of Mount Carmel
        Date(2009, 8, 15), # Assumption Day
        Date(2009, 9, 18), # Independence Day
        Date(2009, 9, 19), # Army Day
        Date(2009, 10, 12), # Meeting of Two Worlds' Day
        Date(2009, 10, 31), # Reformation Day
        Date(2009, 11, 1), # All Saints' Day
        Date(2009, 12, 8), # Immaculate Conception
        Date(2009, 12, 25), # Christmas Day
        Date(2010, 1, 1), # New Year's Day
        Date(2010, 4, 2), # Good Friday
        Date(2010, 4, 3), # Holy Saturday
        Date(2010, 5, 1), # Labor Day
        Date(2010, 5, 21), # Navy Day
        Date(2010, 6, 28), # Saint Peter and Saint Paul's Day
        Date(2010, 7, 16), # Our Lady of Mount Carmel
        Date(2010, 8, 15), # Assumption Day
        Date(2010, 9, 18), # Independence Day
        Date(2010, 9, 19), # Army Day
        Date(2010, 10, 11), # Meeting of Two Worlds' Day
        Date(2010, 10, 31), # Reformation Day
        Date(2010, 11, 1), # All Saints' Day
        Date(2010, 12, 8), # Immaculate Conception
        Date(2010, 12, 25), # Christmas Day
        Date(2011, 1, 1), # New Year's Day
        Date(2011, 4, 22), # Good Friday
        Date(2011, 4, 23), # Holy Saturday
        Date(2011, 5, 1), # Labor Day
        Date(2011, 5, 21), # Navy Day
        Date(2011, 6, 27), # Saint Peter and Saint Paul's Day
        Date(2011, 7, 16), # Our Lady of Mount Carmel
        Date(2011, 8, 15), # Assumption Day
        Date(2011, 9, 18), # Independence Day
        Date(2011, 9, 19), # Army Day
        Date(2011, 10, 10), # Meeting of Two Worlds' Day
        Date(2011, 10, 31), # Reformation Day
        Date(2011, 11, 1), # All Saints' Day
        Date(2011, 12, 8), # Immaculate Conception
        Date(2011, 12, 25), # Christmas Day
        Date(2012, 1, 1), # New Year's Day
        Date(2012, 4, 6), # Good Friday
        Date(2012, 4, 7), # Holy Saturday
        Date(2012, 5, 1), # Labor Day
        Date(2012, 5, 21), # Navy Day
        Date(2012, 7, 2), # Saint Peter and Saint Paul's Day
        Date(2012, 7, 16), # Our Lady of Mount Carmel
        Date(2012, 8, 15), # Assumption Day
        Date(2012, 9, 17), # National Holiday
        Date(2012, 9, 18), # Independence Day
        Date(2012, 9, 19), # Army Day
        Date(2012, 10, 15), # Meeting of Two Worlds' Day
        Date(2012, 11, 1), # All Saints' Day
        Date(2012, 11, 2), # Reformation Day
        Date(2012, 12, 8), # Immaculate Conception
        Date(2012, 12, 25), # Christmas Day
        Date(2013, 1, 1), # New Year's Day
        Date(2013, 3, 29), # Good Friday
        Date(2013, 3, 30), # Holy Saturday
        Date(2013, 5, 1), # Labor Day
        Date(2013, 5, 21), # Navy Day
        Date(2013, 6, 29), # Saint Peter and Saint Paul's Day
        Date(2013, 7, 16), # Our Lady of Mount Carmel
        Date(2013, 8, 15), # Assumption Day
        Date(2013, 9, 18), # Independence Day
        Date(2013, 9, 19), # Army Day
        Date(2013, 9, 20), # National Holiday
        Date(2013, 10, 12), # Meeting of Two Worlds' Day
        Date(2013, 10, 31), # Reformation Day
        Date(2013, 11, 1), # All Saints' Day
        Date(2013, 12, 8), # Immaculate Conception
        Date(2013, 12, 25), # Christmas Day
        Date(2014, 1, 1), # New Year's Day
        Date(2014, 4, 18), # Good Friday
        Date(2014, 4, 19), # Holy Saturday
        Date(2014, 5, 1), # Labor Day
        Date(2014, 5, 21), # Navy Day
        Date(2014, 6, 29), # Saint Peter and Saint Paul's Day
        Date(2014, 7, 16), # Our Lady of Mount Carmel
        Date(2014, 8, 15), # Assumption Day
        Date(2014, 9, 18), # Independence Day
        Date(2014, 9, 19), # Army Day
        Date(2014, 10, 12), # Meeting of Two Worlds' Day
        Date(2014, 10, 31), # Reformation Day
        Date(2014, 11, 1), # All Saints' Day
        Date(2014, 12, 8), # Immaculate Conception
        Date(2014, 12, 25), # Christmas Day
        Date(2015, 1, 1), # New Year's Day
        Date(2015, 4, 3), # Good Friday
        Date(2015, 4, 4), # Holy Saturday
        Date(2015, 5, 1), # Labor Day
        Date(2015, 5, 21), # Navy Day
        Date(2015, 6, 29), # Saint Peter and Saint Paul's Day
        Date(2015, 7, 16), # Our Lady of Mount Carmel
        Date(2015, 8, 15), # Assumption Day
        Date(2015, 9, 18), # Independence Day
        Date(2015, 9, 19), # Army Day
        Date(2015, 10, 12), # Meeting of Two Worlds' Day
        Date(2015, 10, 31), # Reformation Day
        Date(2015, 11, 1), # All Saints' Day
        Date(2015, 12, 8), # Immaculate Conception
        Date(2015, 12, 25), # Christmas Day
        Date(2016, 1, 1), # New Year's Day
        Date(2016, 3, 25), # Good Friday
        Date(2016, 3, 26), # Holy Saturday
        Date(2016, 5, 1), # Labor Day
        Date(2016, 5, 21), # Navy Day
        Date(2016, 6, 27), # Saint Peter and Saint Paul's Day
        Date(2016, 7, 16), # Our Lady of Mount Carmel
        Date(2016, 8, 15), # Assumption Day
        Date(2016, 9, 18), # Independence Day
        Date(2016, 9, 19), # Army Day
        Date(2016, 10, 10), # Meeting of Two Worlds' Day
        Date(2016, 10, 31), # Reformation Day
        Date(2016, 11, 1), # All Saints' Day
        Date(2016, 12, 8), # Immaculate Conception
        Date(2016, 12, 25), # Christmas Day
        Date(2017, 1, 1), # New Year's Day
        Date(2017, 1, 2), # National Holiday
        Date(2017, 4, 14), # Good Friday
        Date(2017, 4, 15), # Holy Saturday
        Date(2017, 5, 1), # Labor Day
        Date(2017, 5, 21), # Navy Day
        Date(2017, 6, 26), # Saint Peter and Saint Paul's Day
        Date(2017, 7, 16), # Our Lady of Mount Carmel
        Date(2017, 8, 15), # Assumption Day
        Date(2017, 9, 18), # Independence Day
        Date(2017, 9, 19), # Army Day
        Date(2017, 10, 9), # Meeting of Two Worlds' Day
        Date(2017, 10, 27), # Reformation Day
        Date(2017, 11, 1), # All Saints' Day
        Date(2017, 12, 8), # Immaculate Conception
        Date(2017, 12, 25), # Christmas Day
        Date(2018, 1, 1), # New Year's Day
        Date(2018, 3, 30), # Good Friday
        Date(2018, 3, 31), # Holy Saturday
        Date(2018, 5, 1), # Labor Day
        Date(2018, 5, 21), # Navy Day
        Date(2018, 7, 2), # Saint Peter and Saint Paul's Day
        Date(2018, 7, 16), # Our Lady of Mount Carmel
        Date(2018, 8, 15), # Assumption Day
        Date(2018, 9, 17), # National Holiday
        Date(2018, 9, 18), # Independence Day
        Date(2018, 9, 19), # Army Day
        Date(2018, 10, 15), # Meeting of Two Worlds' Day
        Date(2018, 11, 1), # All Saints' Day
        Date(2018, 11, 2), # Reformation Day
        Date(2018, 12, 8), # Immaculate Conception
        Date(2018, 12, 25), # Christmas Day
        Date(2019, 1, 1), # New Year's Day
        Date(2019, 4, 19), # Good Friday
        Date(2019, 4, 20), # Holy Saturday
        Date(2019, 5, 1), # Labor Day
        Date(2019, 5, 21), # Navy Day
        Date(2019, 6, 29), # Saint Peter and Saint Paul's Day
        Date(2019, 7, 16), # Our Lady of Mount Carmel
        Date(2019, 8, 15), # Assumption Day
        Date(2019, 9, 18), # Independence Day
        Date(2019, 9, 19), # Army Day
        Date(2019, 9, 20), # National Holiday
        Date(2019, 10, 12), # Meeting of Two Worlds' Day
        Date(2019, 10, 31), # Reformation Day
        Date(2019, 11, 1), # All Saints' Day
        Date(2019, 12, 8), # Immaculate Conception
        Date(2019, 12, 25), # Christmas Day
        Date(2020, 1, 1), # New Year's Day
        Date(2020, 4, 10), # Good Friday
        Date(2020, 4, 11), # Holy Saturday
        Date(2020, 5, 1), # Labor Day
        Date(2020, 5, 21), # Navy Day
        Date(2020, 6, 29), # Saint Peter and Saint Paul's Day
        Date(2020, 7, 16), # Our Lady of Mount Carmel
        Date(2020, 8, 15), # Assumption Day
        Date(2020, 9, 18), # Independence Day
        Date(2020, 9, 19), # Army Day
        Date(2020, 10, 12), # Meeting of Two Worlds' Day
        Date(2020, 10, 31), # Reformation Day
        Date(2020, 11, 1), # All Saints' Day
        Date(2020, 12, 8), # Immaculate Conception
        Date(2020, 12, 25), # Christmas Day
        Date(2021, 1, 1), # New Year's Day
        Date(2021, 4, 2), # Good Friday
        Date(2021, 4, 3), # Holy Saturday
        Date(2021, 5, 1), # Labor Day
        Date(2021, 5, 21), # Navy Day
        Date(2021, 6, 21), # National Day of Indigenous Peoples
        Date(2021, 6, 28), # Saint Peter and Saint Paul's Day
        Date(2021, 7, 16), # Our Lady of Mount Carmel
        Date(2021, 8, 15), # Assumption Day
        Date(2021, 9, 17), # National Holiday
        Date(2021, 9, 18), # Independence Day
        Date(2021, 9, 19), # Army Day
        Date(2021, 10, 11), # Meeting of Two Worlds' Day
        Date(2021, 10, 31), # Reformation Day
        Date(2021, 11, 1), # All Saints' Day
        Date(2021, 12, 8), # Immaculate Conception
        Date(2021, 12, 25), # Christmas Day
        Date(2022, 1, 1), # New Year's Day
        Date(2022, 4, 15), # Good Friday
        Date(2022, 4, 16), # Holy Saturday
        Date(2022, 5, 1), # Labor Day
        Date(2022, 5, 21), # Navy Day
        Date(2022, 6, 21), # National Day of Indigenous Peoples
        Date(2022, 6, 27), # Saint Peter and Saint Paul's Day
        Date(2022, 7, 16), # Our Lady of Mount Carmel
        Date(2022, 8, 15), # Assumption Day
        Date(2022, 9, 16), # National Holiday
        Date(2022, 9, 18), # Independence Day
        Date(2022, 9, 19), # Army Day
        Date(2022, 10, 10), # Meeting of Two Worlds' Day
        Date(2022, 10, 31), # Reformation Day
        Date(2022, 11, 1), # All Saints' Day
        Date(2022, 12, 8), # Immaculate Conception
        Date(2022, 12, 25), # Christmas Day
        Date(2023, 1, 1), # New Year's Day
        Date(2023, 1, 2), # National Holiday
        Date(2023, 4, 7), # Good Friday
        Date(2023, 4, 8), # Holy Saturday
        Date(2023, 5, 1), # Labor Day
        Date(2023, 5, 21), # Navy Day
        Date(2023, 6, 21), # National Day of Indigenous Peoples
        Date(2023, 6, 26), # Saint Peter and Saint Paul's Day
        Date(2023, 7, 16), # Our Lady of Mount Carmel
        Date(2023, 8, 15), # Assumption Day
        Date(2023, 9, 18), # Independence Day
        Date(2023, 9, 19), # Army Day
        Date(2023, 10, 9), # Meeting of Two Worlds' Day
        Date(2023, 10, 27), # Reformation Day
        Date(2023, 11, 1), # All Saints' Day
        Date(2023, 12, 8), # Immaculate Conception
        Date(2023, 12, 25), # Christmas Day
        Date(2024, 1, 1), # New Year's Day
        Date(2024, 3, 29), # Good Friday
        Date(2024, 3, 30), # Holy Saturday
        Date(2024, 5, 1), # Labor Day
        Date(2024, 5, 21), # Navy Day
        Date(2024, 6, 20), # National Day of Indigenous Peoples
        Date(2024, 6, 29), # Saint Peter and Saint Paul's Day
        Date(2024, 7, 16), # Our Lady of Mount Carmel
        Date(2024, 8, 15), # Assumption Day
        Date(2024, 9, 18), # Independence Day
        Date(2024, 9, 19), # Army Day
        Date(2024, 9, 20), # National Holiday
        Date(2024, 10, 12), # Meeting of Two Worlds' Day
        Date(2024, 10, 31), # Reformation Day
        Date(2024, 11, 1), # All Saints' Day
        Date(2024, 12, 8), # Immaculate Conception
        Date(2024, 12, 25), # Christmas Day
        Date(2025, 1, 1), # New Year's Day
        Date(2025, 4, 18), # Good Friday
        Date(2025, 4, 19), # Holy Saturday
        Date(2025, 5, 1), # Labor Day
        Date(2025, 5, 21), # Navy Day
        Date(2025, 6, 20), # National Day of Indigenous Peoples
        Date(2025, 6, 29), # Saint Peter and Saint Paul's Day
        Date(2025, 7, 16), # Our Lady of Mount Carmel
        Date(2025, 8, 15), # Assumption Day
        Date(2025, 9, 18), # Independence Day
        Date(2025, 9, 19), # Army Day
        Date(2025, 10, 12), # Meeting of Two Worlds' Day
        Date(2025, 10, 31), # Reformation Day
        Date(2025, 11, 1), # All Saints' Day
        Date(2025, 12, 8), # Immaculate Conception
        Date(2025, 12, 25), # Christmas Day
        Date(2026, 1, 1), # New Year's Day
        Date(2026, 4, 3), # Good Friday
        Date(2026, 4, 4), # Holy Saturday
        Date(2026, 5, 1), # Labor Day
        Date(2026, 5, 21), # Navy Day
        Date(2026, 6, 21), # National Day of Indigenous Peoples
        Date(2026, 6, 29), # Saint Peter and Saint Paul's Day
        Date(2026, 7, 16), # Our Lady of Mount Carmel
        Date(2026, 8, 15), # Assumption Day
        Date(2026, 9, 18), # Independence Day
        Date(2026, 9, 19), # Army Day
        Date(2026, 10, 12), # Meeting of Two Worlds' Day
        Date(2026, 10, 31), # Reformation Day
        Date(2026, 11, 1), # All Saints' Day
        Date(2026, 12, 8), # Immaculate Conception
        Date(2026, 12, 25), # Christmas Day
        Date(2027, 1, 1), # New Year's Day
        Date(2027, 3, 26), # Good Friday
        Date(2027, 3, 27), # Holy Saturday
        Date(2027, 5, 1), # Labor Day
        Date(2027, 5, 21), # Navy Day
        Date(2027, 6, 21), # National Day of Indigenous Peoples
        Date(2027, 6, 28), # Saint Peter and Saint Paul's Day
        Date(2027, 7, 16), # Our Lady of Mount Carmel
        Date(2027, 8, 15), # Assumption Day
        Date(2027, 9, 17), # National Holiday
        Date(2027, 9, 18), # Independence Day
        Date(2027, 9, 19), # Army Day
        Date(2027, 10, 11), # Meeting of Two Worlds' Day
        Date(2027, 10, 31), # Reformation Day
        Date(2027, 11, 1), # All Saints' Day
        Date(2027, 12, 8), # Immaculate Conception
        Date(2027, 12, 25), # Christmas Day
        Date(2028, 1, 1), # New Year's Day
        Date(2028, 4, 14), # Good Friday
        Date(2028, 4, 15), # Holy Saturday
        Date(2028, 5, 1), # Labor Day
        Date(2028, 5, 21), # Navy Day
        Date(2028, 6, 20), # National Day of Indigenous Peoples
        Date(2028, 6, 26), # Saint Peter and Saint Paul's Day
        Date(2028, 7, 16), # Our Lady of Mount Carmel
        Date(2028, 8, 15), # Assumption Day
        Date(2028, 9, 18), # Independence Day
        Date(2028, 9, 19), # Army Day
        Date(2028, 10, 9), # Meeting of Two Worlds' Day
        Date(2028, 10, 27), # Reformation Day
        Date(2028, 11, 1), # All Saints' Day
        Date(2028, 12, 8), # Immaculate Conception
        Date(2028, 12, 25), # Christmas Day
        Date(2029, 1, 1), # New Year's Day
        Date(2029, 3, 30), # Good Friday
        Date(2029, 3, 31), # Holy Saturday
        Date(2029, 5, 1), # Labor Day
        Date(2029, 5, 21), # Navy Day
        Date(2029, 6, 20), # National Day of Indigenous Peoples
        Date(2029, 7, 2), # Saint Peter and Saint Paul's Day
        Date(2029, 7, 16), # Our Lady of Mount Carmel
        Date(2029, 8, 15), # Assumption Day
        Date(2029, 9, 17), # National Holiday
        Date(2029, 9, 18), # Independence Day
        Date(2029, 9, 19), # Army Day
        Date(2029, 10, 15), # Meeting of Two Worlds' Day
        Date(2029, 11, 1), # All Saints' Day
        Date(2029, 11, 2), # Reformation Day
        Date(2029, 12, 8), # Immaculate Conception
        Date(2029, 12, 25), # Christmas Day
        Date(2030, 1, 1), # New Year's Day
        Date(2030, 4, 19), # Good Friday
        Date(2030, 4, 20), # Holy Saturday
        Date(2030, 5, 1), # Labor Day
        Date(2030, 5, 21), # Navy Day
        Date(2030, 6, 21), # National Day of Indigenous Peoples
        Date(2030, 6, 29), # Saint Peter and Saint Paul's Day
        Date(2030, 7, 16), # Our Lady of Mount Carmel
        Date(2030, 8, 15), # Assumption Day
        Date(2030, 9, 18), # Independence Day
        Date(2030, 9, 19), # Army Day
        Date(2030, 9, 20), # National Holiday
        Date(2030, 10, 12), # Meeting of Two Worlds' Day
        Date(2030, 10, 31), # Reformation Day
        Date(2030, 11, 1), # All Saints' Day
        Date(2030, 12, 8), # Immaculate Conception
        Date(2030, 12, 25), # Christmas Day
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
