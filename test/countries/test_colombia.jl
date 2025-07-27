module TestColombia

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Colombia" begin
    calendar = Holidays.Colombia()

    holidays = Date[
        Date(1970, 1, 1), # New Year's Day
        Date(1970, 1, 6), # Epiphany
        Date(1970, 3, 19), # Saint Joseph's Day
        Date(1970, 3, 26), # Maundy Thursday
        Date(1970, 3, 27), # Good Friday
        Date(1970, 5, 1), # Labor Day
        Date(1970, 5, 7), # Ascension Day
        Date(1970, 5, 28), # Corpus Christi
        Date(1970, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1970, 7, 20), # Independence Day
        Date(1970, 8, 7), # Battle of Boyacá
        Date(1970, 8, 15), # Assumption Day
        Date(1970, 10, 12), # Columbus Day
        Date(1970, 11, 1), # All Saints' Day
        Date(1970, 11, 11), # Independence of Cartagena
        Date(1970, 12, 8), # Immaculate Conception
        Date(1970, 12, 25), # Christmas Day
        Date(1971, 1, 1), # New Year's Day
        Date(1971, 1, 6), # Epiphany
        Date(1971, 3, 19), # Saint Joseph's Day
        Date(1971, 4, 8), # Maundy Thursday
        Date(1971, 4, 9), # Good Friday
        Date(1971, 5, 1), # Labor Day
        Date(1971, 5, 20), # Ascension Day
        Date(1971, 6, 10), # Corpus Christi
        Date(1971, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1971, 7, 20), # Independence Day
        Date(1971, 8, 7), # Battle of Boyacá
        Date(1971, 8, 15), # Assumption Day
        Date(1971, 10, 12), # Columbus Day
        Date(1971, 11, 1), # All Saints' Day
        Date(1971, 11, 11), # Independence of Cartagena
        Date(1971, 12, 8), # Immaculate Conception
        Date(1971, 12, 25), # Christmas Day
        Date(1972, 1, 1), # New Year's Day
        Date(1972, 1, 6), # Epiphany
        Date(1972, 3, 19), # Saint Joseph's Day
        Date(1972, 3, 30), # Maundy Thursday
        Date(1972, 3, 31), # Good Friday
        Date(1972, 5, 1), # Labor Day
        Date(1972, 5, 11), # Ascension Day
        Date(1972, 6, 1), # Corpus Christi
        Date(1972, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1972, 7, 20), # Independence Day
        Date(1972, 8, 7), # Battle of Boyacá
        Date(1972, 8, 15), # Assumption Day
        Date(1972, 10, 12), # Columbus Day
        Date(1972, 11, 1), # All Saints' Day
        Date(1972, 11, 11), # Independence of Cartagena
        Date(1972, 12, 8), # Immaculate Conception
        Date(1972, 12, 25), # Christmas Day
        Date(1973, 1, 1), # New Year's Day
        Date(1973, 1, 6), # Epiphany
        Date(1973, 3, 19), # Saint Joseph's Day
        Date(1973, 4, 19), # Maundy Thursday
        Date(1973, 4, 20), # Good Friday
        Date(1973, 5, 1), # Labor Day
        Date(1973, 5, 31), # Ascension Day
        Date(1973, 6, 21), # Corpus Christi
        Date(1973, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1973, 7, 20), # Independence Day
        Date(1973, 8, 7), # Battle of Boyacá
        Date(1973, 8, 15), # Assumption Day
        Date(1973, 10, 12), # Columbus Day
        Date(1973, 11, 1), # All Saints' Day
        Date(1973, 11, 11), # Independence of Cartagena
        Date(1973, 12, 8), # Immaculate Conception
        Date(1973, 12, 25), # Christmas Day
        Date(1974, 1, 1), # New Year's Day
        Date(1974, 1, 6), # Epiphany
        Date(1974, 3, 19), # Saint Joseph's Day
        Date(1974, 4, 11), # Maundy Thursday
        Date(1974, 4, 12), # Good Friday
        Date(1974, 5, 1), # Labor Day
        Date(1974, 5, 23), # Ascension Day
        Date(1974, 6, 13), # Corpus Christi
        Date(1974, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1974, 7, 20), # Independence Day
        Date(1974, 8, 7), # Battle of Boyacá
        Date(1974, 8, 15), # Assumption Day
        Date(1974, 10, 12), # Columbus Day
        Date(1974, 11, 1), # All Saints' Day
        Date(1974, 11, 11), # Independence of Cartagena
        Date(1974, 12, 8), # Immaculate Conception
        Date(1974, 12, 25), # Christmas Day
        Date(1975, 1, 1), # New Year's Day
        Date(1975, 1, 6), # Epiphany
        Date(1975, 3, 19), # Saint Joseph's Day
        Date(1975, 3, 27), # Maundy Thursday
        Date(1975, 3, 28), # Good Friday
        Date(1975, 5, 1), # Labor Day
        Date(1975, 5, 8), # Ascension Day
        Date(1975, 5, 29), # Corpus Christi
        Date(1975, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1975, 7, 20), # Independence Day
        Date(1975, 8, 7), # Battle of Boyacá
        Date(1975, 8, 15), # Assumption Day
        Date(1975, 10, 12), # Columbus Day
        Date(1975, 11, 1), # All Saints' Day
        Date(1975, 11, 11), # Independence of Cartagena
        Date(1975, 12, 8), # Immaculate Conception
        Date(1975, 12, 25), # Christmas Day
        Date(1976, 1, 1), # New Year's Day
        Date(1976, 1, 6), # Epiphany
        Date(1976, 3, 19), # Saint Joseph's Day
        Date(1976, 4, 15), # Maundy Thursday
        Date(1976, 4, 16), # Good Friday
        Date(1976, 5, 1), # Labor Day
        Date(1976, 5, 27), # Ascension Day
        Date(1976, 6, 17), # Corpus Christi
        Date(1976, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1976, 7, 20), # Independence Day
        Date(1976, 8, 7), # Battle of Boyacá
        Date(1976, 8, 15), # Assumption Day
        Date(1976, 10, 12), # Columbus Day
        Date(1976, 11, 1), # All Saints' Day
        Date(1976, 11, 11), # Independence of Cartagena
        Date(1976, 12, 8), # Immaculate Conception
        Date(1976, 12, 25), # Christmas Day
        Date(1977, 1, 1), # New Year's Day
        Date(1977, 1, 6), # Epiphany
        Date(1977, 3, 19), # Saint Joseph's Day
        Date(1977, 4, 7), # Maundy Thursday
        Date(1977, 4, 8), # Good Friday
        Date(1977, 5, 1), # Labor Day
        Date(1977, 5, 19), # Ascension Day
        Date(1977, 6, 9), # Corpus Christi
        Date(1977, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1977, 7, 20), # Independence Day
        Date(1977, 8, 7), # Battle of Boyacá
        Date(1977, 8, 15), # Assumption Day
        Date(1977, 10, 12), # Columbus Day
        Date(1977, 11, 1), # All Saints' Day
        Date(1977, 11, 11), # Independence of Cartagena
        Date(1977, 12, 8), # Immaculate Conception
        Date(1977, 12, 25), # Christmas Day
        Date(1978, 1, 1), # New Year's Day
        Date(1978, 1, 6), # Epiphany
        Date(1978, 3, 19), # Saint Joseph's Day
        Date(1978, 3, 23), # Maundy Thursday
        Date(1978, 3, 24), # Good Friday
        Date(1978, 5, 1), # Labor Day
        Date(1978, 5, 4), # Ascension Day
        Date(1978, 5, 25), # Corpus Christi
        Date(1978, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1978, 7, 20), # Independence Day
        Date(1978, 8, 7), # Battle of Boyacá
        Date(1978, 8, 15), # Assumption Day
        Date(1978, 10, 12), # Columbus Day
        Date(1978, 11, 1), # All Saints' Day
        Date(1978, 11, 11), # Independence of Cartagena
        Date(1978, 12, 8), # Immaculate Conception
        Date(1978, 12, 25), # Christmas Day
        Date(1979, 1, 1), # New Year's Day
        Date(1979, 1, 6), # Epiphany
        Date(1979, 3, 19), # Saint Joseph's Day
        Date(1979, 4, 12), # Maundy Thursday
        Date(1979, 4, 13), # Good Friday
        Date(1979, 5, 1), # Labor Day
        Date(1979, 5, 24), # Ascension Day
        Date(1979, 6, 14), # Corpus Christi
        Date(1979, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1979, 7, 20), # Independence Day
        Date(1979, 8, 7), # Battle of Boyacá
        Date(1979, 8, 15), # Assumption Day
        Date(1979, 10, 12), # Columbus Day
        Date(1979, 11, 1), # All Saints' Day
        Date(1979, 11, 11), # Independence of Cartagena
        Date(1979, 12, 8), # Immaculate Conception
        Date(1979, 12, 25), # Christmas Day
        Date(1980, 1, 1), # New Year's Day
        Date(1980, 1, 6), # Epiphany
        Date(1980, 3, 19), # Saint Joseph's Day
        Date(1980, 4, 3), # Maundy Thursday
        Date(1980, 4, 4), # Good Friday
        Date(1980, 5, 1), # Labor Day
        Date(1980, 5, 15), # Ascension Day
        Date(1980, 6, 5), # Corpus Christi
        Date(1980, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1980, 7, 20), # Independence Day
        Date(1980, 8, 7), # Battle of Boyacá
        Date(1980, 8, 15), # Assumption Day
        Date(1980, 10, 12), # Columbus Day
        Date(1980, 11, 1), # All Saints' Day
        Date(1980, 11, 11), # Independence of Cartagena
        Date(1980, 12, 8), # Immaculate Conception
        Date(1980, 12, 25), # Christmas Day
        Date(1981, 1, 1), # New Year's Day
        Date(1981, 1, 6), # Epiphany
        Date(1981, 3, 19), # Saint Joseph's Day
        Date(1981, 4, 16), # Maundy Thursday
        Date(1981, 4, 17), # Good Friday
        Date(1981, 5, 1), # Labor Day
        Date(1981, 5, 28), # Ascension Day
        Date(1981, 6, 18), # Corpus Christi
        Date(1981, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1981, 7, 20), # Independence Day
        Date(1981, 8, 7), # Battle of Boyacá
        Date(1981, 8, 15), # Assumption Day
        Date(1981, 10, 12), # Columbus Day
        Date(1981, 11, 1), # All Saints' Day
        Date(1981, 11, 11), # Independence of Cartagena
        Date(1981, 12, 8), # Immaculate Conception
        Date(1981, 12, 25), # Christmas Day
        Date(1982, 1, 1), # New Year's Day
        Date(1982, 1, 6), # Epiphany
        Date(1982, 3, 19), # Saint Joseph's Day
        Date(1982, 4, 8), # Maundy Thursday
        Date(1982, 4, 9), # Good Friday
        Date(1982, 5, 1), # Labor Day
        Date(1982, 5, 20), # Ascension Day
        Date(1982, 6, 10), # Corpus Christi
        Date(1982, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1982, 7, 20), # Independence Day
        Date(1982, 8, 7), # Battle of Boyacá
        Date(1982, 8, 15), # Assumption Day
        Date(1982, 10, 12), # Columbus Day
        Date(1982, 11, 1), # All Saints' Day
        Date(1982, 11, 11), # Independence of Cartagena
        Date(1982, 12, 8), # Immaculate Conception
        Date(1982, 12, 25), # Christmas Day
        Date(1983, 1, 1), # New Year's Day
        Date(1983, 1, 6), # Epiphany
        Date(1983, 3, 19), # Saint Joseph's Day
        Date(1983, 3, 31), # Maundy Thursday
        Date(1983, 4, 1), # Good Friday
        Date(1983, 5, 1), # Labor Day
        Date(1983, 5, 12), # Ascension Day
        Date(1983, 6, 2), # Corpus Christi
        Date(1983, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1983, 7, 20), # Independence Day
        Date(1983, 8, 7), # Battle of Boyacá
        Date(1983, 8, 15), # Assumption Day
        Date(1983, 10, 12), # Columbus Day
        Date(1983, 11, 1), # All Saints' Day
        Date(1983, 11, 11), # Independence of Cartagena
        Date(1983, 12, 8), # Immaculate Conception
        Date(1983, 12, 25), # Christmas Day
        Date(1984, 1, 1), # New Year's Day
        Date(1984, 1, 9), # Epiphany (observed)
        Date(1984, 3, 19), # Saint Joseph's Day
        Date(1984, 4, 19), # Maundy Thursday
        Date(1984, 4, 20), # Good Friday
        Date(1984, 5, 1), # Labor Day
        Date(1984, 6, 4), # Ascension Day (observed)
        Date(1984, 6, 25), # Corpus Christi (observed)
        Date(1984, 7, 2), # Sacred Heart (observed); Saint Peter and Saint Paul's Day (observed)
        Date(1984, 7, 20), # Independence Day
        Date(1984, 8, 7), # Battle of Boyacá
        Date(1984, 8, 20), # Assumption Day (observed)
        Date(1984, 10, 15), # Columbus Day (observed)
        Date(1984, 11, 5), # All Saints' Day (observed)
        Date(1984, 11, 12), # Independence of Cartagena (observed)
        Date(1984, 12, 8), # Immaculate Conception
        Date(1984, 12, 25), # Christmas Day
        Date(1985, 1, 1), # New Year's Day
        Date(1985, 1, 7), # Epiphany (observed)
        Date(1985, 3, 25), # Saint Joseph's Day (observed)
        Date(1985, 4, 4), # Maundy Thursday
        Date(1985, 4, 5), # Good Friday
        Date(1985, 5, 1), # Labor Day
        Date(1985, 5, 20), # Ascension Day (observed)
        Date(1985, 6, 10), # Corpus Christi (observed)
        Date(1985, 6, 17), # Sacred Heart (observed)
        Date(1985, 7, 1), # Saint Peter and Saint Paul's Day (observed)
        Date(1985, 7, 20), # Independence Day
        Date(1985, 8, 7), # Battle of Boyacá
        Date(1985, 8, 19), # Assumption Day (observed)
        Date(1985, 10, 14), # Columbus Day (observed)
        Date(1985, 11, 4), # All Saints' Day (observed)
        Date(1985, 11, 11), # Independence of Cartagena
        Date(1985, 12, 8), # Immaculate Conception
        Date(1985, 12, 25), # Christmas Day
        Date(1986, 1, 1), # New Year's Day
        Date(1986, 1, 6), # Epiphany
        Date(1986, 3, 24), # Saint Joseph's Day (observed)
        Date(1986, 3, 27), # Maundy Thursday
        Date(1986, 3, 28), # Good Friday
        Date(1986, 5, 1), # Labor Day
        Date(1986, 5, 12), # Ascension Day (observed)
        Date(1986, 6, 2), # Corpus Christi (observed)
        Date(1986, 6, 9), # Sacred Heart (observed)
        Date(1986, 6, 30), # Saint Peter and Saint Paul's Day (observed)
        Date(1986, 7, 20), # Independence Day
        Date(1986, 8, 7), # Battle of Boyacá
        Date(1986, 8, 18), # Assumption Day (observed)
        Date(1986, 10, 13), # Columbus Day (observed)
        Date(1986, 11, 3), # All Saints' Day (observed)
        Date(1986, 11, 17), # Independence of Cartagena (observed)
        Date(1986, 12, 8), # Immaculate Conception
        Date(1986, 12, 25), # Christmas Day
        Date(1987, 1, 1), # New Year's Day
        Date(1987, 1, 12), # Epiphany (observed)
        Date(1987, 3, 23), # Saint Joseph's Day (observed)
        Date(1987, 4, 16), # Maundy Thursday
        Date(1987, 4, 17), # Good Friday
        Date(1987, 5, 1), # Labor Day
        Date(1987, 6, 1), # Ascension Day (observed)
        Date(1987, 6, 22), # Corpus Christi (observed)
        Date(1987, 6, 29), # Sacred Heart (observed); Saint Peter and Saint Paul's Day
        Date(1987, 7, 20), # Independence Day
        Date(1987, 8, 7), # Battle of Boyacá
        Date(1987, 8, 17), # Assumption Day (observed)
        Date(1987, 10, 12), # Columbus Day
        Date(1987, 11, 2), # All Saints' Day (observed)
        Date(1987, 11, 16), # Independence of Cartagena (observed)
        Date(1987, 12, 8), # Immaculate Conception
        Date(1987, 12, 25), # Christmas Day
        Date(1988, 1, 1), # New Year's Day
        Date(1988, 1, 11), # Epiphany (observed)
        Date(1988, 3, 21), # Saint Joseph's Day (observed)
        Date(1988, 3, 31), # Maundy Thursday
        Date(1988, 4, 1), # Good Friday
        Date(1988, 5, 1), # Labor Day
        Date(1988, 5, 16), # Ascension Day (observed)
        Date(1988, 6, 6), # Corpus Christi (observed)
        Date(1988, 6, 13), # Sacred Heart (observed)
        Date(1988, 7, 4), # Saint Peter and Saint Paul's Day (observed)
        Date(1988, 7, 20), # Independence Day
        Date(1988, 8, 7), # Battle of Boyacá
        Date(1988, 8, 15), # Assumption Day
        Date(1988, 10, 17), # Columbus Day (observed)
        Date(1988, 11, 7), # All Saints' Day (observed)
        Date(1988, 11, 14), # Independence of Cartagena (observed)
        Date(1988, 12, 8), # Immaculate Conception
        Date(1988, 12, 25), # Christmas Day
        Date(1989, 1, 1), # New Year's Day
        Date(1989, 1, 9), # Epiphany (observed)
        Date(1989, 3, 20), # Saint Joseph's Day (observed)
        Date(1989, 3, 23), # Maundy Thursday
        Date(1989, 3, 24), # Good Friday
        Date(1989, 5, 1), # Labor Day
        Date(1989, 5, 8), # Ascension Day (observed)
        Date(1989, 5, 29), # Corpus Christi (observed)
        Date(1989, 6, 5), # Sacred Heart (observed)
        Date(1989, 7, 3), # Saint Peter and Saint Paul's Day (observed)
        Date(1989, 7, 20), # Independence Day
        Date(1989, 8, 7), # Battle of Boyacá
        Date(1989, 8, 21), # Assumption Day (observed)
        Date(1989, 10, 16), # Columbus Day (observed)
        Date(1989, 11, 6), # All Saints' Day (observed)
        Date(1989, 11, 13), # Independence of Cartagena (observed)
        Date(1989, 12, 8), # Immaculate Conception
        Date(1989, 12, 25), # Christmas Day
        Date(1990, 1, 1), # New Year's Day
        Date(1990, 1, 8), # Epiphany (observed)
        Date(1990, 3, 19), # Saint Joseph's Day
        Date(1990, 4, 12), # Maundy Thursday
        Date(1990, 4, 13), # Good Friday
        Date(1990, 5, 1), # Labor Day
        Date(1990, 5, 28), # Ascension Day (observed)
        Date(1990, 6, 18), # Corpus Christi (observed)
        Date(1990, 6, 25), # Sacred Heart (observed)
        Date(1990, 7, 2), # Saint Peter and Saint Paul's Day (observed)
        Date(1990, 7, 20), # Independence Day
        Date(1990, 8, 7), # Battle of Boyacá
        Date(1990, 8, 20), # Assumption Day (observed)
        Date(1990, 10, 15), # Columbus Day (observed)
        Date(1990, 11, 5), # All Saints' Day (observed)
        Date(1990, 11, 12), # Independence of Cartagena (observed)
        Date(1990, 12, 8), # Immaculate Conception
        Date(1990, 12, 25), # Christmas Day
        Date(1991, 1, 1), # New Year's Day
        Date(1991, 1, 7), # Epiphany (observed)
        Date(1991, 3, 25), # Saint Joseph's Day (observed)
        Date(1991, 3, 28), # Maundy Thursday
        Date(1991, 3, 29), # Good Friday
        Date(1991, 5, 1), # Labor Day
        Date(1991, 5, 13), # Ascension Day (observed)
        Date(1991, 6, 3), # Corpus Christi (observed)
        Date(1991, 6, 10), # Sacred Heart (observed)
        Date(1991, 7, 1), # Saint Peter and Saint Paul's Day (observed)
        Date(1991, 7, 20), # Independence Day
        Date(1991, 8, 7), # Battle of Boyacá
        Date(1991, 8, 19), # Assumption Day (observed)
        Date(1991, 10, 14), # Columbus Day (observed)
        Date(1991, 11, 4), # All Saints' Day (observed)
        Date(1991, 11, 11), # Independence of Cartagena
        Date(1991, 12, 8), # Immaculate Conception
        Date(1991, 12, 25), # Christmas Day
        Date(1992, 1, 1), # New Year's Day
        Date(1992, 1, 6), # Epiphany
        Date(1992, 3, 23), # Saint Joseph's Day (observed)
        Date(1992, 4, 16), # Maundy Thursday
        Date(1992, 4, 17), # Good Friday
        Date(1992, 5, 1), # Labor Day
        Date(1992, 6, 1), # Ascension Day (observed)
        Date(1992, 6, 22), # Corpus Christi (observed)
        Date(1992, 6, 29), # Sacred Heart (observed); Saint Peter and Saint Paul's Day
        Date(1992, 7, 20), # Independence Day
        Date(1992, 8, 7), # Battle of Boyacá
        Date(1992, 8, 17), # Assumption Day (observed)
        Date(1992, 10, 12), # Columbus Day
        Date(1992, 11, 2), # All Saints' Day (observed)
        Date(1992, 11, 16), # Independence of Cartagena (observed)
        Date(1992, 12, 8), # Immaculate Conception
        Date(1992, 12, 25), # Christmas Day
        Date(1993, 1, 1), # New Year's Day
        Date(1993, 1, 11), # Epiphany (observed)
        Date(1993, 3, 22), # Saint Joseph's Day (observed)
        Date(1993, 4, 8), # Maundy Thursday
        Date(1993, 4, 9), # Good Friday
        Date(1993, 5, 1), # Labor Day
        Date(1993, 5, 24), # Ascension Day (observed)
        Date(1993, 6, 14), # Corpus Christi (observed)
        Date(1993, 6, 21), # Sacred Heart (observed)
        Date(1993, 7, 5), # Saint Peter and Saint Paul's Day (observed)
        Date(1993, 7, 20), # Independence Day
        Date(1993, 8, 7), # Battle of Boyacá
        Date(1993, 8, 16), # Assumption Day (observed)
        Date(1993, 10, 18), # Columbus Day (observed)
        Date(1993, 11, 1), # All Saints' Day
        Date(1993, 11, 15), # Independence of Cartagena (observed)
        Date(1993, 12, 8), # Immaculate Conception
        Date(1993, 12, 25), # Christmas Day
        Date(1994, 1, 1), # New Year's Day
        Date(1994, 1, 10), # Epiphany (observed)
        Date(1994, 3, 21), # Saint Joseph's Day (observed)
        Date(1994, 3, 31), # Maundy Thursday
        Date(1994, 4, 1), # Good Friday
        Date(1994, 5, 1), # Labor Day
        Date(1994, 5, 16), # Ascension Day (observed)
        Date(1994, 6, 6), # Corpus Christi (observed)
        Date(1994, 6, 13), # Sacred Heart (observed)
        Date(1994, 7, 4), # Saint Peter and Saint Paul's Day (observed)
        Date(1994, 7, 20), # Independence Day
        Date(1994, 8, 7), # Battle of Boyacá
        Date(1994, 8, 15), # Assumption Day
        Date(1994, 10, 17), # Columbus Day (observed)
        Date(1994, 11, 7), # All Saints' Day (observed)
        Date(1994, 11, 14), # Independence of Cartagena (observed)
        Date(1994, 12, 8), # Immaculate Conception
        Date(1994, 12, 25), # Christmas Day
        Date(1995, 1, 1), # New Year's Day
        Date(1995, 1, 9), # Epiphany (observed)
        Date(1995, 3, 20), # Saint Joseph's Day (observed)
        Date(1995, 4, 13), # Maundy Thursday
        Date(1995, 4, 14), # Good Friday
        Date(1995, 5, 1), # Labor Day
        Date(1995, 5, 29), # Ascension Day (observed)
        Date(1995, 6, 19), # Corpus Christi (observed)
        Date(1995, 6, 26), # Sacred Heart (observed)
        Date(1995, 7, 3), # Saint Peter and Saint Paul's Day (observed)
        Date(1995, 7, 20), # Independence Day
        Date(1995, 8, 7), # Battle of Boyacá
        Date(1995, 8, 21), # Assumption Day (observed)
        Date(1995, 10, 16), # Columbus Day (observed)
        Date(1995, 11, 6), # All Saints' Day (observed)
        Date(1995, 11, 13), # Independence of Cartagena (observed)
        Date(1995, 12, 8), # Immaculate Conception
        Date(1995, 12, 25), # Christmas Day
        Date(1996, 1, 1), # New Year's Day
        Date(1996, 1, 8), # Epiphany (observed)
        Date(1996, 3, 25), # Saint Joseph's Day (observed)
        Date(1996, 4, 4), # Maundy Thursday
        Date(1996, 4, 5), # Good Friday
        Date(1996, 5, 1), # Labor Day
        Date(1996, 5, 20), # Ascension Day (observed)
        Date(1996, 6, 10), # Corpus Christi (observed)
        Date(1996, 6, 17), # Sacred Heart (observed)
        Date(1996, 7, 1), # Saint Peter and Saint Paul's Day (observed)
        Date(1996, 7, 20), # Independence Day
        Date(1996, 8, 7), # Battle of Boyacá
        Date(1996, 8, 19), # Assumption Day (observed)
        Date(1996, 10, 14), # Columbus Day (observed)
        Date(1996, 11, 4), # All Saints' Day (observed)
        Date(1996, 11, 11), # Independence of Cartagena
        Date(1996, 12, 8), # Immaculate Conception
        Date(1996, 12, 25), # Christmas Day
        Date(1997, 1, 1), # New Year's Day
        Date(1997, 1, 6), # Epiphany
        Date(1997, 3, 24), # Saint Joseph's Day (observed)
        Date(1997, 3, 27), # Maundy Thursday
        Date(1997, 3, 28), # Good Friday
        Date(1997, 5, 1), # Labor Day
        Date(1997, 5, 12), # Ascension Day (observed)
        Date(1997, 6, 2), # Corpus Christi (observed)
        Date(1997, 6, 9), # Sacred Heart (observed)
        Date(1997, 6, 30), # Saint Peter and Saint Paul's Day (observed)
        Date(1997, 7, 20), # Independence Day
        Date(1997, 8, 7), # Battle of Boyacá
        Date(1997, 8, 18), # Assumption Day (observed)
        Date(1997, 10, 13), # Columbus Day (observed)
        Date(1997, 11, 3), # All Saints' Day (observed)
        Date(1997, 11, 17), # Independence of Cartagena (observed)
        Date(1997, 12, 8), # Immaculate Conception
        Date(1997, 12, 25), # Christmas Day
        Date(1998, 1, 1), # New Year's Day
        Date(1998, 1, 12), # Epiphany (observed)
        Date(1998, 3, 23), # Saint Joseph's Day (observed)
        Date(1998, 4, 9), # Maundy Thursday
        Date(1998, 4, 10), # Good Friday
        Date(1998, 5, 1), # Labor Day
        Date(1998, 5, 25), # Ascension Day (observed)
        Date(1998, 6, 15), # Corpus Christi (observed)
        Date(1998, 6, 22), # Sacred Heart (observed)
        Date(1998, 6, 29), # Saint Peter and Saint Paul's Day
        Date(1998, 7, 20), # Independence Day
        Date(1998, 8, 7), # Battle of Boyacá
        Date(1998, 8, 17), # Assumption Day (observed)
        Date(1998, 10, 12), # Columbus Day
        Date(1998, 11, 2), # All Saints' Day (observed)
        Date(1998, 11, 16), # Independence of Cartagena (observed)
        Date(1998, 12, 8), # Immaculate Conception
        Date(1998, 12, 25), # Christmas Day
        Date(1999, 1, 1), # New Year's Day
        Date(1999, 1, 11), # Epiphany (observed)
        Date(1999, 3, 22), # Saint Joseph's Day (observed)
        Date(1999, 4, 1), # Maundy Thursday
        Date(1999, 4, 2), # Good Friday
        Date(1999, 5, 1), # Labor Day
        Date(1999, 5, 17), # Ascension Day (observed)
        Date(1999, 6, 7), # Corpus Christi (observed)
        Date(1999, 6, 14), # Sacred Heart (observed)
        Date(1999, 7, 5), # Saint Peter and Saint Paul's Day (observed)
        Date(1999, 7, 20), # Independence Day
        Date(1999, 8, 7), # Battle of Boyacá
        Date(1999, 8, 16), # Assumption Day (observed)
        Date(1999, 10, 18), # Columbus Day (observed)
        Date(1999, 11, 1), # All Saints' Day
        Date(1999, 11, 15), # Independence of Cartagena (observed)
        Date(1999, 12, 8), # Immaculate Conception
        Date(1999, 12, 25), # Christmas Day
        Date(2000, 1, 1), # New Year's Day
        Date(2000, 1, 10), # Epiphany (observed)
        Date(2000, 3, 20), # Saint Joseph's Day (observed)
        Date(2000, 4, 20), # Maundy Thursday
        Date(2000, 4, 21), # Good Friday
        Date(2000, 5, 1), # Labor Day
        Date(2000, 6, 5), # Ascension Day (observed)
        Date(2000, 6, 26), # Corpus Christi (observed)
        Date(2000, 7, 3), # Sacred Heart (observed); Saint Peter and Saint Paul's Day (observed)
        Date(2000, 7, 20), # Independence Day
        Date(2000, 8, 7), # Battle of Boyacá
        Date(2000, 8, 21), # Assumption Day (observed)
        Date(2000, 10, 16), # Columbus Day (observed)
        Date(2000, 11, 6), # All Saints' Day (observed)
        Date(2000, 11, 13), # Independence of Cartagena (observed)
        Date(2000, 12, 8), # Immaculate Conception
        Date(2000, 12, 25), # Christmas Day
        Date(2001, 1, 1), # New Year's Day
        Date(2001, 1, 8), # Epiphany (observed)
        Date(2001, 3, 19), # Saint Joseph's Day
        Date(2001, 4, 12), # Maundy Thursday
        Date(2001, 4, 13), # Good Friday
        Date(2001, 5, 1), # Labor Day
        Date(2001, 5, 28), # Ascension Day (observed)
        Date(2001, 6, 18), # Corpus Christi (observed)
        Date(2001, 6, 25), # Sacred Heart (observed)
        Date(2001, 7, 2), # Saint Peter and Saint Paul's Day (observed)
        Date(2001, 7, 20), # Independence Day
        Date(2001, 8, 7), # Battle of Boyacá
        Date(2001, 8, 20), # Assumption Day (observed)
        Date(2001, 10, 15), # Columbus Day (observed)
        Date(2001, 11, 5), # All Saints' Day (observed)
        Date(2001, 11, 12), # Independence of Cartagena (observed)
        Date(2001, 12, 8), # Immaculate Conception
        Date(2001, 12, 25), # Christmas Day
        Date(2002, 1, 1), # New Year's Day
        Date(2002, 1, 7), # Epiphany (observed)
        Date(2002, 3, 25), # Saint Joseph's Day (observed)
        Date(2002, 3, 28), # Maundy Thursday
        Date(2002, 3, 29), # Good Friday
        Date(2002, 5, 1), # Labor Day
        Date(2002, 5, 13), # Ascension Day (observed)
        Date(2002, 6, 3), # Corpus Christi (observed)
        Date(2002, 6, 10), # Sacred Heart (observed)
        Date(2002, 7, 1), # Saint Peter and Saint Paul's Day (observed)
        Date(2002, 7, 20), # Independence Day
        Date(2002, 8, 7), # Battle of Boyacá
        Date(2002, 8, 19), # Assumption Day (observed)
        Date(2002, 10, 14), # Columbus Day (observed)
        Date(2002, 11, 4), # All Saints' Day (observed)
        Date(2002, 11, 11), # Independence of Cartagena
        Date(2002, 12, 8), # Immaculate Conception
        Date(2002, 12, 25), # Christmas Day
        Date(2003, 1, 1), # New Year's Day
        Date(2003, 1, 6), # Epiphany
        Date(2003, 3, 24), # Saint Joseph's Day (observed)
        Date(2003, 4, 17), # Maundy Thursday
        Date(2003, 4, 18), # Good Friday
        Date(2003, 5, 1), # Labor Day
        Date(2003, 6, 2), # Ascension Day (observed)
        Date(2003, 6, 23), # Corpus Christi (observed)
        Date(2003, 6, 30), # Sacred Heart (observed); Saint Peter and Saint Paul's Day (observed)
        Date(2003, 7, 20), # Independence Day
        Date(2003, 8, 7), # Battle of Boyacá
        Date(2003, 8, 18), # Assumption Day (observed)
        Date(2003, 10, 13), # Columbus Day (observed)
        Date(2003, 11, 3), # All Saints' Day (observed)
        Date(2003, 11, 17), # Independence of Cartagena (observed)
        Date(2003, 12, 8), # Immaculate Conception
        Date(2003, 12, 25), # Christmas Day
        Date(2004, 1, 1), # New Year's Day
        Date(2004, 1, 12), # Epiphany (observed)
        Date(2004, 3, 22), # Saint Joseph's Day (observed)
        Date(2004, 4, 8), # Maundy Thursday
        Date(2004, 4, 9), # Good Friday
        Date(2004, 5, 1), # Labor Day
        Date(2004, 5, 24), # Ascension Day (observed)
        Date(2004, 6, 14), # Corpus Christi (observed)
        Date(2004, 6, 21), # Sacred Heart (observed)
        Date(2004, 7, 5), # Saint Peter and Saint Paul's Day (observed)
        Date(2004, 7, 20), # Independence Day
        Date(2004, 8, 7), # Battle of Boyacá
        Date(2004, 8, 16), # Assumption Day (observed)
        Date(2004, 10, 18), # Columbus Day (observed)
        Date(2004, 11, 1), # All Saints' Day
        Date(2004, 11, 15), # Independence of Cartagena (observed)
        Date(2004, 12, 8), # Immaculate Conception
        Date(2004, 12, 25), # Christmas Day
        Date(2005, 1, 1), # New Year's Day
        Date(2005, 1, 10), # Epiphany (observed)
        Date(2005, 3, 21), # Saint Joseph's Day (observed)
        Date(2005, 3, 24), # Maundy Thursday
        Date(2005, 3, 25), # Good Friday
        Date(2005, 5, 1), # Labor Day
        Date(2005, 5, 9), # Ascension Day (observed)
        Date(2005, 5, 30), # Corpus Christi (observed)
        Date(2005, 6, 6), # Sacred Heart (observed)
        Date(2005, 7, 4), # Saint Peter and Saint Paul's Day (observed)
        Date(2005, 7, 20), # Independence Day
        Date(2005, 8, 7), # Battle of Boyacá
        Date(2005, 8, 15), # Assumption Day
        Date(2005, 10, 17), # Columbus Day (observed)
        Date(2005, 11, 7), # All Saints' Day (observed)
        Date(2005, 11, 14), # Independence of Cartagena (observed)
        Date(2005, 12, 8), # Immaculate Conception
        Date(2005, 12, 25), # Christmas Day
        Date(2006, 1, 1), # New Year's Day
        Date(2006, 1, 9), # Epiphany (observed)
        Date(2006, 3, 20), # Saint Joseph's Day (observed)
        Date(2006, 4, 13), # Maundy Thursday
        Date(2006, 4, 14), # Good Friday
        Date(2006, 5, 1), # Labor Day
        Date(2006, 5, 29), # Ascension Day (observed)
        Date(2006, 6, 19), # Corpus Christi (observed)
        Date(2006, 6, 26), # Sacred Heart (observed)
        Date(2006, 7, 3), # Saint Peter and Saint Paul's Day (observed)
        Date(2006, 7, 20), # Independence Day
        Date(2006, 8, 7), # Battle of Boyacá
        Date(2006, 8, 21), # Assumption Day (observed)
        Date(2006, 10, 16), # Columbus Day (observed)
        Date(2006, 11, 6), # All Saints' Day (observed)
        Date(2006, 11, 13), # Independence of Cartagena (observed)
        Date(2006, 12, 8), # Immaculate Conception
        Date(2006, 12, 25), # Christmas Day
        Date(2007, 1, 1), # New Year's Day
        Date(2007, 1, 8), # Epiphany (observed)
        Date(2007, 3, 19), # Saint Joseph's Day
        Date(2007, 4, 5), # Maundy Thursday
        Date(2007, 4, 6), # Good Friday
        Date(2007, 5, 1), # Labor Day
        Date(2007, 5, 21), # Ascension Day (observed)
        Date(2007, 6, 11), # Corpus Christi (observed)
        Date(2007, 6, 18), # Sacred Heart (observed)
        Date(2007, 7, 2), # Saint Peter and Saint Paul's Day (observed)
        Date(2007, 7, 20), # Independence Day
        Date(2007, 8, 7), # Battle of Boyacá
        Date(2007, 8, 20), # Assumption Day (observed)
        Date(2007, 10, 15), # Columbus Day (observed)
        Date(2007, 11, 5), # All Saints' Day (observed)
        Date(2007, 11, 12), # Independence of Cartagena (observed)
        Date(2007, 12, 8), # Immaculate Conception
        Date(2007, 12, 25), # Christmas Day
        Date(2008, 1, 1), # New Year's Day
        Date(2008, 1, 7), # Epiphany (observed)
        Date(2008, 3, 20), # Maundy Thursday
        Date(2008, 3, 21), # Good Friday
        Date(2008, 3, 24), # Saint Joseph's Day (observed)
        Date(2008, 5, 1), # Labor Day
        Date(2008, 5, 5), # Ascension Day (observed)
        Date(2008, 5, 26), # Corpus Christi (observed)
        Date(2008, 6, 2), # Sacred Heart (observed)
        Date(2008, 6, 30), # Saint Peter and Saint Paul's Day (observed)
        Date(2008, 7, 20), # Independence Day
        Date(2008, 8, 7), # Battle of Boyacá
        Date(2008, 8, 18), # Assumption Day (observed)
        Date(2008, 10, 13), # Columbus Day (observed)
        Date(2008, 11, 3), # All Saints' Day (observed)
        Date(2008, 11, 17), # Independence of Cartagena (observed)
        Date(2008, 12, 8), # Immaculate Conception
        Date(2008, 12, 25), # Christmas Day
        Date(2009, 1, 1), # New Year's Day
        Date(2009, 1, 12), # Epiphany (observed)
        Date(2009, 3, 23), # Saint Joseph's Day (observed)
        Date(2009, 4, 9), # Maundy Thursday
        Date(2009, 4, 10), # Good Friday
        Date(2009, 5, 1), # Labor Day
        Date(2009, 5, 25), # Ascension Day (observed)
        Date(2009, 6, 15), # Corpus Christi (observed)
        Date(2009, 6, 22), # Sacred Heart (observed)
        Date(2009, 6, 29), # Saint Peter and Saint Paul's Day
        Date(2009, 7, 20), # Independence Day
        Date(2009, 8, 7), # Battle of Boyacá
        Date(2009, 8, 17), # Assumption Day (observed)
        Date(2009, 10, 12), # Columbus Day
        Date(2009, 11, 2), # All Saints' Day (observed)
        Date(2009, 11, 16), # Independence of Cartagena (observed)
        Date(2009, 12, 8), # Immaculate Conception
        Date(2009, 12, 25), # Christmas Day
        Date(2010, 1, 1), # New Year's Day
        Date(2010, 1, 11), # Epiphany (observed)
        Date(2010, 3, 22), # Saint Joseph's Day (observed)
        Date(2010, 4, 1), # Maundy Thursday
        Date(2010, 4, 2), # Good Friday
        Date(2010, 5, 1), # Labor Day
        Date(2010, 5, 17), # Ascension Day (observed)
        Date(2010, 6, 7), # Corpus Christi (observed)
        Date(2010, 6, 14), # Sacred Heart (observed)
        Date(2010, 7, 5), # Saint Peter and Saint Paul's Day (observed)
        Date(2010, 7, 20), # Independence Day
        Date(2010, 8, 7), # Battle of Boyacá
        Date(2010, 8, 16), # Assumption Day (observed)
        Date(2010, 10, 18), # Columbus Day (observed)
        Date(2010, 11, 1), # All Saints' Day
        Date(2010, 11, 15), # Independence of Cartagena (observed)
        Date(2010, 12, 8), # Immaculate Conception
        Date(2010, 12, 25), # Christmas Day
        Date(2011, 1, 1), # New Year's Day
        Date(2011, 1, 10), # Epiphany (observed)
        Date(2011, 3, 21), # Saint Joseph's Day (observed)
        Date(2011, 4, 21), # Maundy Thursday
        Date(2011, 4, 22), # Good Friday
        Date(2011, 5, 1), # Labor Day
        Date(2011, 6, 6), # Ascension Day (observed)
        Date(2011, 6, 27), # Corpus Christi (observed)
        Date(2011, 7, 4), # Sacred Heart (observed); Saint Peter and Saint Paul's Day (observed)
        Date(2011, 7, 20), # Independence Day
        Date(2011, 8, 7), # Battle of Boyacá
        Date(2011, 8, 15), # Assumption Day
        Date(2011, 10, 17), # Columbus Day (observed)
        Date(2011, 11, 7), # All Saints' Day (observed)
        Date(2011, 11, 14), # Independence of Cartagena (observed)
        Date(2011, 12, 8), # Immaculate Conception
        Date(2011, 12, 25), # Christmas Day
        Date(2012, 1, 1), # New Year's Day
        Date(2012, 1, 9), # Epiphany (observed)
        Date(2012, 3, 19), # Saint Joseph's Day
        Date(2012, 4, 5), # Maundy Thursday
        Date(2012, 4, 6), # Good Friday
        Date(2012, 5, 1), # Labor Day
        Date(2012, 5, 21), # Ascension Day (observed)
        Date(2012, 6, 11), # Corpus Christi (observed)
        Date(2012, 6, 18), # Sacred Heart (observed)
        Date(2012, 7, 2), # Saint Peter and Saint Paul's Day (observed)
        Date(2012, 7, 20), # Independence Day
        Date(2012, 8, 7), # Battle of Boyacá
        Date(2012, 8, 20), # Assumption Day (observed)
        Date(2012, 10, 15), # Columbus Day (observed)
        Date(2012, 11, 5), # All Saints' Day (observed)
        Date(2012, 11, 12), # Independence of Cartagena (observed)
        Date(2012, 12, 8), # Immaculate Conception
        Date(2012, 12, 25), # Christmas Day
        Date(2013, 1, 1), # New Year's Day
        Date(2013, 1, 7), # Epiphany (observed)
        Date(2013, 3, 25), # Saint Joseph's Day (observed)
        Date(2013, 3, 28), # Maundy Thursday
        Date(2013, 3, 29), # Good Friday
        Date(2013, 5, 1), # Labor Day
        Date(2013, 5, 13), # Ascension Day (observed)
        Date(2013, 6, 3), # Corpus Christi (observed)
        Date(2013, 6, 10), # Sacred Heart (observed)
        Date(2013, 7, 1), # Saint Peter and Saint Paul's Day (observed)
        Date(2013, 7, 20), # Independence Day
        Date(2013, 8, 7), # Battle of Boyacá
        Date(2013, 8, 19), # Assumption Day (observed)
        Date(2013, 10, 14), # Columbus Day (observed)
        Date(2013, 11, 4), # All Saints' Day (observed)
        Date(2013, 11, 11), # Independence of Cartagena
        Date(2013, 12, 8), # Immaculate Conception
        Date(2013, 12, 25), # Christmas Day
        Date(2014, 1, 1), # New Year's Day
        Date(2014, 1, 6), # Epiphany
        Date(2014, 3, 24), # Saint Joseph's Day (observed)
        Date(2014, 4, 17), # Maundy Thursday
        Date(2014, 4, 18), # Good Friday
        Date(2014, 5, 1), # Labor Day
        Date(2014, 6, 2), # Ascension Day (observed)
        Date(2014, 6, 23), # Corpus Christi (observed)
        Date(2014, 6, 30), # Sacred Heart (observed); Saint Peter and Saint Paul's Day (observed)
        Date(2014, 7, 20), # Independence Day
        Date(2014, 8, 7), # Battle of Boyacá
        Date(2014, 8, 18), # Assumption Day (observed)
        Date(2014, 10, 13), # Columbus Day (observed)
        Date(2014, 11, 3), # All Saints' Day (observed)
        Date(2014, 11, 17), # Independence of Cartagena (observed)
        Date(2014, 12, 8), # Immaculate Conception
        Date(2014, 12, 25), # Christmas Day
        Date(2015, 1, 1), # New Year's Day
        Date(2015, 1, 12), # Epiphany (observed)
        Date(2015, 3, 23), # Saint Joseph's Day (observed)
        Date(2015, 4, 2), # Maundy Thursday
        Date(2015, 4, 3), # Good Friday
        Date(2015, 5, 1), # Labor Day
        Date(2015, 5, 18), # Ascension Day (observed)
        Date(2015, 6, 8), # Corpus Christi (observed)
        Date(2015, 6, 15), # Sacred Heart (observed)
        Date(2015, 6, 29), # Saint Peter and Saint Paul's Day
        Date(2015, 7, 20), # Independence Day
        Date(2015, 8, 7), # Battle of Boyacá
        Date(2015, 8, 17), # Assumption Day (observed)
        Date(2015, 10, 12), # Columbus Day
        Date(2015, 11, 2), # All Saints' Day (observed)
        Date(2015, 11, 16), # Independence of Cartagena (observed)
        Date(2015, 12, 8), # Immaculate Conception
        Date(2015, 12, 25), # Christmas Day
        Date(2016, 1, 1), # New Year's Day
        Date(2016, 1, 11), # Epiphany (observed)
        Date(2016, 3, 21), # Saint Joseph's Day (observed)
        Date(2016, 3, 24), # Maundy Thursday
        Date(2016, 3, 25), # Good Friday
        Date(2016, 5, 1), # Labor Day
        Date(2016, 5, 9), # Ascension Day (observed)
        Date(2016, 5, 30), # Corpus Christi (observed)
        Date(2016, 6, 6), # Sacred Heart (observed)
        Date(2016, 7, 4), # Saint Peter and Saint Paul's Day (observed)
        Date(2016, 7, 20), # Independence Day
        Date(2016, 8, 7), # Battle of Boyacá
        Date(2016, 8, 15), # Assumption Day
        Date(2016, 10, 17), # Columbus Day (observed)
        Date(2016, 11, 7), # All Saints' Day (observed)
        Date(2016, 11, 14), # Independence of Cartagena (observed)
        Date(2016, 12, 8), # Immaculate Conception
        Date(2016, 12, 25), # Christmas Day
        Date(2017, 1, 1), # New Year's Day
        Date(2017, 1, 9), # Epiphany (observed)
        Date(2017, 3, 20), # Saint Joseph's Day (observed)
        Date(2017, 4, 13), # Maundy Thursday
        Date(2017, 4, 14), # Good Friday
        Date(2017, 5, 1), # Labor Day
        Date(2017, 5, 29), # Ascension Day (observed)
        Date(2017, 6, 19), # Corpus Christi (observed)
        Date(2017, 6, 26), # Sacred Heart (observed)
        Date(2017, 7, 3), # Saint Peter and Saint Paul's Day (observed)
        Date(2017, 7, 20), # Independence Day
        Date(2017, 8, 7), # Battle of Boyacá
        Date(2017, 8, 21), # Assumption Day (observed)
        Date(2017, 10, 16), # Columbus Day (observed)
        Date(2017, 11, 6), # All Saints' Day (observed)
        Date(2017, 11, 13), # Independence of Cartagena (observed)
        Date(2017, 12, 8), # Immaculate Conception
        Date(2017, 12, 25), # Christmas Day
        Date(2018, 1, 1), # New Year's Day
        Date(2018, 1, 8), # Epiphany (observed)
        Date(2018, 3, 19), # Saint Joseph's Day
        Date(2018, 3, 29), # Maundy Thursday
        Date(2018, 3, 30), # Good Friday
        Date(2018, 5, 1), # Labor Day
        Date(2018, 5, 14), # Ascension Day (observed)
        Date(2018, 6, 4), # Corpus Christi (observed)
        Date(2018, 6, 11), # Sacred Heart (observed)
        Date(2018, 7, 2), # Saint Peter and Saint Paul's Day (observed)
        Date(2018, 7, 20), # Independence Day
        Date(2018, 8, 7), # Battle of Boyacá
        Date(2018, 8, 20), # Assumption Day (observed)
        Date(2018, 10, 15), # Columbus Day (observed)
        Date(2018, 11, 5), # All Saints' Day (observed)
        Date(2018, 11, 12), # Independence of Cartagena (observed)
        Date(2018, 12, 8), # Immaculate Conception
        Date(2018, 12, 25), # Christmas Day
        Date(2019, 1, 1), # New Year's Day
        Date(2019, 1, 7), # Epiphany (observed)
        Date(2019, 3, 25), # Saint Joseph's Day (observed)
        Date(2019, 4, 18), # Maundy Thursday
        Date(2019, 4, 19), # Good Friday
        Date(2019, 5, 1), # Labor Day
        Date(2019, 6, 3), # Ascension Day (observed)
        Date(2019, 6, 24), # Corpus Christi (observed)
        Date(2019, 7, 1), # Sacred Heart (observed); Saint Peter and Saint Paul's Day (observed)
        Date(2019, 7, 20), # Independence Day
        Date(2019, 8, 7), # Battle of Boyacá
        Date(2019, 8, 19), # Assumption Day (observed)
        Date(2019, 10, 14), # Columbus Day (observed)
        Date(2019, 11, 4), # All Saints' Day (observed)
        Date(2019, 11, 11), # Independence of Cartagena
        Date(2019, 12, 8), # Immaculate Conception
        Date(2019, 12, 25), # Christmas Day
        Date(2020, 1, 1), # New Year's Day
        Date(2020, 1, 6), # Epiphany
        Date(2020, 3, 23), # Saint Joseph's Day (observed)
        Date(2020, 4, 9), # Maundy Thursday
        Date(2020, 4, 10), # Good Friday
        Date(2020, 5, 1), # Labor Day
        Date(2020, 5, 25), # Ascension Day (observed)
        Date(2020, 6, 15), # Corpus Christi (observed)
        Date(2020, 6, 22), # Sacred Heart (observed)
        Date(2020, 6, 29), # Saint Peter and Saint Paul's Day
        Date(2020, 7, 20), # Independence Day
        Date(2020, 8, 7), # Battle of Boyacá
        Date(2020, 8, 17), # Assumption Day (observed)
        Date(2020, 10, 12), # Columbus Day
        Date(2020, 11, 2), # All Saints' Day (observed)
        Date(2020, 11, 16), # Independence of Cartagena (observed)
        Date(2020, 12, 8), # Immaculate Conception
        Date(2020, 12, 25), # Christmas Day
        Date(2021, 1, 1), # New Year's Day
        Date(2021, 1, 11), # Epiphany (observed)
        Date(2021, 3, 22), # Saint Joseph's Day (observed)
        Date(2021, 4, 1), # Maundy Thursday
        Date(2021, 4, 2), # Good Friday
        Date(2021, 5, 1), # Labor Day
        Date(2021, 5, 17), # Ascension Day (observed)
        Date(2021, 6, 7), # Corpus Christi (observed)
        Date(2021, 6, 14), # Sacred Heart (observed)
        Date(2021, 7, 5), # Saint Peter and Saint Paul's Day (observed)
        Date(2021, 7, 20), # Independence Day
        Date(2021, 8, 7), # Battle of Boyacá
        Date(2021, 8, 16), # Assumption Day (observed)
        Date(2021, 10, 18), # Columbus Day (observed)
        Date(2021, 11, 1), # All Saints' Day
        Date(2021, 11, 15), # Independence of Cartagena (observed)
        Date(2021, 12, 8), # Immaculate Conception
        Date(2021, 12, 25), # Christmas Day
        Date(2022, 1, 1), # New Year's Day
        Date(2022, 1, 10), # Epiphany (observed)
        Date(2022, 3, 21), # Saint Joseph's Day (observed)
        Date(2022, 4, 14), # Maundy Thursday
        Date(2022, 4, 15), # Good Friday
        Date(2022, 5, 1), # Labor Day
        Date(2022, 5, 30), # Ascension Day (observed)
        Date(2022, 6, 20), # Corpus Christi (observed)
        Date(2022, 6, 27), # Sacred Heart (observed)
        Date(2022, 7, 4), # Saint Peter and Saint Paul's Day (observed)
        Date(2022, 7, 20), # Independence Day
        Date(2022, 8, 7), # Battle of Boyacá
        Date(2022, 8, 15), # Assumption Day
        Date(2022, 10, 17), # Columbus Day (observed)
        Date(2022, 11, 7), # All Saints' Day (observed)
        Date(2022, 11, 14), # Independence of Cartagena (observed)
        Date(2022, 12, 8), # Immaculate Conception
        Date(2022, 12, 25), # Christmas Day
        Date(2023, 1, 1), # New Year's Day
        Date(2023, 1, 9), # Epiphany (observed)
        Date(2023, 3, 20), # Saint Joseph's Day (observed)
        Date(2023, 4, 6), # Maundy Thursday
        Date(2023, 4, 7), # Good Friday
        Date(2023, 5, 1), # Labor Day
        Date(2023, 5, 22), # Ascension Day (observed)
        Date(2023, 6, 12), # Corpus Christi (observed)
        Date(2023, 6, 19), # Sacred Heart (observed)
        Date(2023, 7, 3), # Saint Peter and Saint Paul's Day (observed)
        Date(2023, 7, 20), # Independence Day
        Date(2023, 8, 7), # Battle of Boyacá
        Date(2023, 8, 21), # Assumption Day (observed)
        Date(2023, 10, 16), # Columbus Day (observed)
        Date(2023, 11, 6), # All Saints' Day (observed)
        Date(2023, 11, 13), # Independence of Cartagena (observed)
        Date(2023, 12, 8), # Immaculate Conception
        Date(2023, 12, 25), # Christmas Day
        Date(2024, 1, 1), # New Year's Day
        Date(2024, 1, 8), # Epiphany (observed)
        Date(2024, 3, 25), # Saint Joseph's Day (observed)
        Date(2024, 3, 28), # Maundy Thursday
        Date(2024, 3, 29), # Good Friday
        Date(2024, 5, 1), # Labor Day
        Date(2024, 5, 13), # Ascension Day (observed)
        Date(2024, 6, 3), # Corpus Christi (observed)
        Date(2024, 6, 10), # Sacred Heart (observed)
        Date(2024, 7, 1), # Saint Peter and Saint Paul's Day (observed)
        Date(2024, 7, 20), # Independence Day
        Date(2024, 8, 7), # Battle of Boyacá
        Date(2024, 8, 19), # Assumption Day (observed)
        Date(2024, 10, 14), # Columbus Day (observed)
        Date(2024, 11, 4), # All Saints' Day (observed)
        Date(2024, 11, 11), # Independence of Cartagena
        Date(2024, 12, 8), # Immaculate Conception
        Date(2024, 12, 25), # Christmas Day
        Date(2025, 1, 1), # New Year's Day
        Date(2025, 1, 6), # Epiphany
        Date(2025, 3, 24), # Saint Joseph's Day (observed)
        Date(2025, 4, 17), # Maundy Thursday
        Date(2025, 4, 18), # Good Friday
        Date(2025, 5, 1), # Labor Day
        Date(2025, 6, 2), # Ascension Day (observed)
        Date(2025, 6, 23), # Corpus Christi (observed)
        Date(2025, 6, 30), # Sacred Heart (observed); Saint Peter and Saint Paul's Day (observed)
        Date(2025, 7, 20), # Independence Day
        Date(2025, 8, 7), # Battle of Boyacá
        Date(2025, 8, 18), # Assumption Day (observed)
        Date(2025, 10, 13), # Columbus Day (observed)
        Date(2025, 11, 3), # All Saints' Day (observed)
        Date(2025, 11, 17), # Independence of Cartagena (observed)
        Date(2025, 12, 8), # Immaculate Conception
        Date(2025, 12, 25), # Christmas Day
        Date(2026, 1, 1), # New Year's Day
        Date(2026, 1, 12), # Epiphany (observed)
        Date(2026, 3, 23), # Saint Joseph's Day (observed)
        Date(2026, 4, 2), # Maundy Thursday
        Date(2026, 4, 3), # Good Friday
        Date(2026, 5, 1), # Labor Day
        Date(2026, 5, 18), # Ascension Day (observed)
        Date(2026, 6, 8), # Corpus Christi (observed)
        Date(2026, 6, 15), # Sacred Heart (observed)
        Date(2026, 6, 29), # Saint Peter and Saint Paul's Day
        Date(2026, 7, 20), # Independence Day
        Date(2026, 8, 7), # Battle of Boyacá
        Date(2026, 8, 17), # Assumption Day (observed)
        Date(2026, 10, 12), # Columbus Day
        Date(2026, 11, 2), # All Saints' Day (observed)
        Date(2026, 11, 16), # Independence of Cartagena (observed)
        Date(2026, 12, 8), # Immaculate Conception
        Date(2026, 12, 25), # Christmas Day
        Date(2027, 1, 1), # New Year's Day
        Date(2027, 1, 11), # Epiphany (observed)
        Date(2027, 3, 22), # Saint Joseph's Day (observed)
        Date(2027, 3, 25), # Maundy Thursday
        Date(2027, 3, 26), # Good Friday
        Date(2027, 5, 1), # Labor Day
        Date(2027, 5, 10), # Ascension Day (observed)
        Date(2027, 5, 31), # Corpus Christi (observed)
        Date(2027, 6, 7), # Sacred Heart (observed)
        Date(2027, 7, 5), # Saint Peter and Saint Paul's Day (observed)
        Date(2027, 7, 20), # Independence Day
        Date(2027, 8, 7), # Battle of Boyacá
        Date(2027, 8, 16), # Assumption Day (observed)
        Date(2027, 10, 18), # Columbus Day (observed)
        Date(2027, 11, 1), # All Saints' Day
        Date(2027, 11, 15), # Independence of Cartagena (observed)
        Date(2027, 12, 8), # Immaculate Conception
        Date(2027, 12, 25), # Christmas Day
        Date(2028, 1, 1), # New Year's Day
        Date(2028, 1, 10), # Epiphany (observed)
        Date(2028, 3, 20), # Saint Joseph's Day (observed)
        Date(2028, 4, 13), # Maundy Thursday
        Date(2028, 4, 14), # Good Friday
        Date(2028, 5, 1), # Labor Day
        Date(2028, 5, 29), # Ascension Day (observed)
        Date(2028, 6, 19), # Corpus Christi (observed)
        Date(2028, 6, 26), # Sacred Heart (observed)
        Date(2028, 7, 3), # Saint Peter and Saint Paul's Day (observed)
        Date(2028, 7, 20), # Independence Day
        Date(2028, 8, 7), # Battle of Boyacá
        Date(2028, 8, 21), # Assumption Day (observed)
        Date(2028, 10, 16), # Columbus Day (observed)
        Date(2028, 11, 6), # All Saints' Day (observed)
        Date(2028, 11, 13), # Independence of Cartagena (observed)
        Date(2028, 12, 8), # Immaculate Conception
        Date(2028, 12, 25), # Christmas Day
        Date(2029, 1, 1), # New Year's Day
        Date(2029, 1, 8), # Epiphany (observed)
        Date(2029, 3, 19), # Saint Joseph's Day
        Date(2029, 3, 29), # Maundy Thursday
        Date(2029, 3, 30), # Good Friday
        Date(2029, 5, 1), # Labor Day
        Date(2029, 5, 14), # Ascension Day (observed)
        Date(2029, 6, 4), # Corpus Christi (observed)
        Date(2029, 6, 11), # Sacred Heart (observed)
        Date(2029, 7, 2), # Saint Peter and Saint Paul's Day (observed)
        Date(2029, 7, 20), # Independence Day
        Date(2029, 8, 7), # Battle of Boyacá
        Date(2029, 8, 20), # Assumption Day (observed)
        Date(2029, 10, 15), # Columbus Day (observed)
        Date(2029, 11, 5), # All Saints' Day (observed)
        Date(2029, 11, 12), # Independence of Cartagena (observed)
        Date(2029, 12, 8), # Immaculate Conception
        Date(2029, 12, 25), # Christmas Day
        Date(2030, 1, 1), # New Year's Day
        Date(2030, 1, 7), # Epiphany (observed)
        Date(2030, 3, 25), # Saint Joseph's Day (observed)
        Date(2030, 4, 18), # Maundy Thursday
        Date(2030, 4, 19), # Good Friday
        Date(2030, 5, 1), # Labor Day
        Date(2030, 6, 3), # Ascension Day (observed)
        Date(2030, 6, 24), # Corpus Christi (observed)
        Date(2030, 7, 1), # Sacred Heart (observed); Saint Peter and Saint Paul's Day (observed)
        Date(2030, 7, 20), # Independence Day
        Date(2030, 8, 7), # Battle of Boyacá
        Date(2030, 8, 19), # Assumption Day (observed)
        Date(2030, 10, 14), # Columbus Day (observed)
        Date(2030, 11, 4), # All Saints' Day (observed)
        Date(2030, 11, 11), # Independence of Cartagena
        Date(2030, 12, 8), # Immaculate Conception
        Date(2030, 12, 25), # Christmas Day
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
