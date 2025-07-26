module TestEcuador

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Ecuador" begin
    calendar = Holidays.Ecuador()

    holidays = [
        Date(1970, 1, 1), # New Year's Day
        Date(1970, 2, 9), # Carnival
        Date(1970, 2, 10), # Carnival
        Date(1970, 3, 27), # Good Friday
        Date(1970, 5, 1), # Labor Day
        Date(1970, 5, 24), # The Battle of Pichincha
        Date(1970, 8, 10), # Declaration of Independence of Quito
        Date(1970, 10, 9), # Independence of Guayaquil
        Date(1970, 11, 2), # All Souls' Day
        Date(1970, 11, 3), # Independence of Cuenca
        Date(1970, 12, 25), # Christmas Day
        Date(1971, 1, 1), # New Year's Day
        Date(1971, 2, 22), # Carnival
        Date(1971, 2, 23), # Carnival
        Date(1971, 4, 9), # Good Friday
        Date(1971, 5, 1), # Labor Day
        Date(1971, 5, 24), # The Battle of Pichincha
        Date(1971, 8, 10), # Declaration of Independence of Quito
        Date(1971, 10, 9), # Independence of Guayaquil
        Date(1971, 11, 2), # All Souls' Day
        Date(1971, 11, 3), # Independence of Cuenca
        Date(1971, 12, 25), # Christmas Day
        Date(1972, 1, 1), # New Year's Day
        Date(1972, 2, 14), # Carnival
        Date(1972, 2, 15), # Carnival
        Date(1972, 3, 31), # Good Friday
        Date(1972, 5, 1), # Labor Day
        Date(1972, 5, 24), # The Battle of Pichincha
        Date(1972, 8, 10), # Declaration of Independence of Quito
        Date(1972, 10, 9), # Independence of Guayaquil
        Date(1972, 11, 2), # All Souls' Day
        Date(1972, 11, 3), # Independence of Cuenca
        Date(1972, 12, 25), # Christmas Day
        Date(1973, 1, 1), # New Year's Day
        Date(1973, 3, 5), # Carnival
        Date(1973, 3, 6), # Carnival
        Date(1973, 4, 20), # Good Friday
        Date(1973, 5, 1), # Labor Day
        Date(1973, 5, 24), # The Battle of Pichincha
        Date(1973, 8, 10), # Declaration of Independence of Quito
        Date(1973, 10, 9), # Independence of Guayaquil
        Date(1973, 11, 2), # All Souls' Day
        Date(1973, 11, 3), # Independence of Cuenca
        Date(1973, 12, 25), # Christmas Day
        Date(1974, 1, 1), # New Year's Day
        Date(1974, 2, 25), # Carnival
        Date(1974, 2, 26), # Carnival
        Date(1974, 4, 12), # Good Friday
        Date(1974, 5, 1), # Labor Day
        Date(1974, 5, 24), # The Battle of Pichincha
        Date(1974, 8, 10), # Declaration of Independence of Quito
        Date(1974, 10, 9), # Independence of Guayaquil
        Date(1974, 11, 2), # All Souls' Day
        Date(1974, 11, 3), # Independence of Cuenca
        Date(1974, 12, 25), # Christmas Day
        Date(1975, 1, 1), # New Year's Day
        Date(1975, 2, 10), # Carnival
        Date(1975, 2, 11), # Carnival
        Date(1975, 3, 28), # Good Friday
        Date(1975, 5, 1), # Labor Day
        Date(1975, 5, 24), # The Battle of Pichincha
        Date(1975, 8, 10), # Declaration of Independence of Quito
        Date(1975, 10, 9), # Independence of Guayaquil
        Date(1975, 11, 2), # All Souls' Day
        Date(1975, 11, 3), # Independence of Cuenca
        Date(1975, 12, 25), # Christmas Day
        Date(1976, 1, 1), # New Year's Day
        Date(1976, 3, 1), # Carnival
        Date(1976, 3, 2), # Carnival
        Date(1976, 4, 16), # Good Friday
        Date(1976, 5, 1), # Labor Day
        Date(1976, 5, 24), # The Battle of Pichincha
        Date(1976, 8, 10), # Declaration of Independence of Quito
        Date(1976, 10, 9), # Independence of Guayaquil
        Date(1976, 11, 2), # All Souls' Day
        Date(1976, 11, 3), # Independence of Cuenca
        Date(1976, 12, 25), # Christmas Day
        Date(1977, 1, 1), # New Year's Day
        Date(1977, 2, 21), # Carnival
        Date(1977, 2, 22), # Carnival
        Date(1977, 4, 8), # Good Friday
        Date(1977, 5, 1), # Labor Day
        Date(1977, 5, 24), # The Battle of Pichincha
        Date(1977, 8, 10), # Declaration of Independence of Quito
        Date(1977, 10, 9), # Independence of Guayaquil
        Date(1977, 11, 2), # All Souls' Day
        Date(1977, 11, 3), # Independence of Cuenca
        Date(1977, 12, 25), # Christmas Day
        Date(1978, 1, 1), # New Year's Day
        Date(1978, 2, 6), # Carnival
        Date(1978, 2, 7), # Carnival
        Date(1978, 3, 24), # Good Friday
        Date(1978, 5, 1), # Labor Day
        Date(1978, 5, 24), # The Battle of Pichincha
        Date(1978, 8, 10), # Declaration of Independence of Quito
        Date(1978, 10, 9), # Independence of Guayaquil
        Date(1978, 11, 2), # All Souls' Day
        Date(1978, 11, 3), # Independence of Cuenca
        Date(1978, 12, 25), # Christmas Day
        Date(1979, 1, 1), # New Year's Day
        Date(1979, 2, 26), # Carnival
        Date(1979, 2, 27), # Carnival
        Date(1979, 4, 13), # Good Friday
        Date(1979, 5, 1), # Labor Day
        Date(1979, 5, 24), # The Battle of Pichincha
        Date(1979, 8, 10), # Declaration of Independence of Quito
        Date(1979, 10, 9), # Independence of Guayaquil
        Date(1979, 11, 2), # All Souls' Day
        Date(1979, 11, 3), # Independence of Cuenca
        Date(1979, 12, 25), # Christmas Day
        Date(1980, 1, 1), # New Year's Day
        Date(1980, 2, 18), # Carnival
        Date(1980, 2, 19), # Carnival
        Date(1980, 4, 4), # Good Friday
        Date(1980, 5, 1), # Labor Day
        Date(1980, 5, 24), # The Battle of Pichincha
        Date(1980, 8, 10), # Declaration of Independence of Quito
        Date(1980, 10, 9), # Independence of Guayaquil
        Date(1980, 11, 2), # All Souls' Day
        Date(1980, 11, 3), # Independence of Cuenca
        Date(1980, 12, 25), # Christmas Day
        Date(1981, 1, 1), # New Year's Day
        Date(1981, 3, 2), # Carnival
        Date(1981, 3, 3), # Carnival
        Date(1981, 4, 17), # Good Friday
        Date(1981, 5, 1), # Labor Day
        Date(1981, 5, 24), # The Battle of Pichincha
        Date(1981, 8, 10), # Declaration of Independence of Quito
        Date(1981, 10, 9), # Independence of Guayaquil
        Date(1981, 11, 2), # All Souls' Day
        Date(1981, 11, 3), # Independence of Cuenca
        Date(1981, 12, 25), # Christmas Day
        Date(1982, 1, 1), # New Year's Day
        Date(1982, 2, 22), # Carnival
        Date(1982, 2, 23), # Carnival
        Date(1982, 4, 9), # Good Friday
        Date(1982, 5, 1), # Labor Day
        Date(1982, 5, 24), # The Battle of Pichincha
        Date(1982, 8, 10), # Declaration of Independence of Quito
        Date(1982, 10, 9), # Independence of Guayaquil
        Date(1982, 11, 2), # All Souls' Day
        Date(1982, 11, 3), # Independence of Cuenca
        Date(1982, 12, 25), # Christmas Day
        Date(1983, 1, 1), # New Year's Day
        Date(1983, 2, 14), # Carnival
        Date(1983, 2, 15), # Carnival
        Date(1983, 4, 1), # Good Friday
        Date(1983, 5, 1), # Labor Day
        Date(1983, 5, 24), # The Battle of Pichincha
        Date(1983, 8, 10), # Declaration of Independence of Quito
        Date(1983, 10, 9), # Independence of Guayaquil
        Date(1983, 11, 2), # All Souls' Day
        Date(1983, 11, 3), # Independence of Cuenca
        Date(1983, 12, 25), # Christmas Day
        Date(1984, 1, 1), # New Year's Day
        Date(1984, 3, 5), # Carnival
        Date(1984, 3, 6), # Carnival
        Date(1984, 4, 20), # Good Friday
        Date(1984, 5, 1), # Labor Day
        Date(1984, 5, 24), # The Battle of Pichincha
        Date(1984, 8, 10), # Declaration of Independence of Quito
        Date(1984, 10, 9), # Independence of Guayaquil
        Date(1984, 11, 2), # All Souls' Day
        Date(1984, 11, 3), # Independence of Cuenca
        Date(1984, 12, 25), # Christmas Day
        Date(1985, 1, 1), # New Year's Day
        Date(1985, 2, 18), # Carnival
        Date(1985, 2, 19), # Carnival
        Date(1985, 4, 5), # Good Friday
        Date(1985, 5, 1), # Labor Day
        Date(1985, 5, 24), # The Battle of Pichincha
        Date(1985, 8, 10), # Declaration of Independence of Quito
        Date(1985, 10, 9), # Independence of Guayaquil
        Date(1985, 11, 2), # All Souls' Day
        Date(1985, 11, 3), # Independence of Cuenca
        Date(1985, 12, 25), # Christmas Day
        Date(1986, 1, 1), # New Year's Day
        Date(1986, 2, 10), # Carnival
        Date(1986, 2, 11), # Carnival
        Date(1986, 3, 28), # Good Friday
        Date(1986, 5, 1), # Labor Day
        Date(1986, 5, 24), # The Battle of Pichincha
        Date(1986, 8, 10), # Declaration of Independence of Quito
        Date(1986, 10, 9), # Independence of Guayaquil
        Date(1986, 11, 2), # All Souls' Day
        Date(1986, 11, 3), # Independence of Cuenca
        Date(1986, 12, 25), # Christmas Day
        Date(1987, 1, 1), # New Year's Day
        Date(1987, 3, 2), # Carnival
        Date(1987, 3, 3), # Carnival
        Date(1987, 4, 17), # Good Friday
        Date(1987, 5, 1), # Labor Day
        Date(1987, 5, 24), # The Battle of Pichincha
        Date(1987, 8, 10), # Declaration of Independence of Quito
        Date(1987, 10, 9), # Independence of Guayaquil
        Date(1987, 11, 2), # All Souls' Day
        Date(1987, 11, 3), # Independence of Cuenca
        Date(1987, 12, 25), # Christmas Day
        Date(1988, 1, 1), # New Year's Day
        Date(1988, 2, 15), # Carnival
        Date(1988, 2, 16), # Carnival
        Date(1988, 4, 1), # Good Friday
        Date(1988, 5, 1), # Labor Day
        Date(1988, 5, 24), # The Battle of Pichincha
        Date(1988, 8, 10), # Declaration of Independence of Quito
        Date(1988, 10, 9), # Independence of Guayaquil
        Date(1988, 11, 2), # All Souls' Day
        Date(1988, 11, 3), # Independence of Cuenca
        Date(1988, 12, 25), # Christmas Day
        Date(1989, 1, 1), # New Year's Day
        Date(1989, 2, 6), # Carnival
        Date(1989, 2, 7), # Carnival
        Date(1989, 3, 24), # Good Friday
        Date(1989, 5, 1), # Labor Day
        Date(1989, 5, 24), # The Battle of Pichincha
        Date(1989, 8, 10), # Declaration of Independence of Quito
        Date(1989, 10, 9), # Independence of Guayaquil
        Date(1989, 11, 2), # All Souls' Day
        Date(1989, 11, 3), # Independence of Cuenca
        Date(1989, 12, 25), # Christmas Day
        Date(1990, 1, 1), # New Year's Day
        Date(1990, 2, 26), # Carnival
        Date(1990, 2, 27), # Carnival
        Date(1990, 4, 13), # Good Friday
        Date(1990, 5, 1), # Labor Day
        Date(1990, 5, 24), # The Battle of Pichincha
        Date(1990, 8, 10), # Declaration of Independence of Quito
        Date(1990, 10, 9), # Independence of Guayaquil
        Date(1990, 11, 2), # All Souls' Day
        Date(1990, 11, 3), # Independence of Cuenca
        Date(1990, 12, 25), # Christmas Day
        Date(1991, 1, 1), # New Year's Day
        Date(1991, 2, 11), # Carnival
        Date(1991, 2, 12), # Carnival
        Date(1991, 3, 29), # Good Friday
        Date(1991, 5, 1), # Labor Day
        Date(1991, 5, 24), # The Battle of Pichincha
        Date(1991, 8, 10), # Declaration of Independence of Quito
        Date(1991, 10, 9), # Independence of Guayaquil
        Date(1991, 11, 2), # All Souls' Day
        Date(1991, 11, 3), # Independence of Cuenca
        Date(1991, 12, 25), # Christmas Day
        Date(1992, 1, 1), # New Year's Day
        Date(1992, 3, 2), # Carnival
        Date(1992, 3, 3), # Carnival
        Date(1992, 4, 17), # Good Friday
        Date(1992, 5, 1), # Labor Day
        Date(1992, 5, 24), # The Battle of Pichincha
        Date(1992, 8, 10), # Declaration of Independence of Quito
        Date(1992, 10, 9), # Independence of Guayaquil
        Date(1992, 11, 2), # All Souls' Day
        Date(1992, 11, 3), # Independence of Cuenca
        Date(1992, 12, 25), # Christmas Day
        Date(1993, 1, 1), # New Year's Day
        Date(1993, 2, 22), # Carnival
        Date(1993, 2, 23), # Carnival
        Date(1993, 4, 9), # Good Friday
        Date(1993, 5, 1), # Labor Day
        Date(1993, 5, 24), # The Battle of Pichincha
        Date(1993, 8, 10), # Declaration of Independence of Quito
        Date(1993, 10, 9), # Independence of Guayaquil
        Date(1993, 11, 2), # All Souls' Day
        Date(1993, 11, 3), # Independence of Cuenca
        Date(1993, 12, 25), # Christmas Day
        Date(1994, 1, 1), # New Year's Day
        Date(1994, 2, 14), # Carnival
        Date(1994, 2, 15), # Carnival
        Date(1994, 4, 1), # Good Friday
        Date(1994, 5, 1), # Labor Day
        Date(1994, 5, 24), # The Battle of Pichincha
        Date(1994, 8, 10), # Declaration of Independence of Quito
        Date(1994, 10, 9), # Independence of Guayaquil
        Date(1994, 11, 2), # All Souls' Day
        Date(1994, 11, 3), # Independence of Cuenca
        Date(1994, 12, 25), # Christmas Day
        Date(1995, 1, 1), # New Year's Day
        Date(1995, 2, 27), # Carnival
        Date(1995, 2, 28), # Carnival
        Date(1995, 4, 14), # Good Friday
        Date(1995, 5, 1), # Labor Day
        Date(1995, 5, 24), # The Battle of Pichincha
        Date(1995, 8, 10), # Declaration of Independence of Quito
        Date(1995, 10, 9), # Independence of Guayaquil
        Date(1995, 11, 2), # All Souls' Day
        Date(1995, 11, 3), # Independence of Cuenca
        Date(1995, 12, 25), # Christmas Day
        Date(1996, 1, 1), # New Year's Day
        Date(1996, 2, 19), # Carnival
        Date(1996, 2, 20), # Carnival
        Date(1996, 4, 5), # Good Friday
        Date(1996, 5, 1), # Labor Day
        Date(1996, 5, 24), # The Battle of Pichincha
        Date(1996, 8, 10), # Declaration of Independence of Quito
        Date(1996, 10, 9), # Independence of Guayaquil
        Date(1996, 11, 2), # All Souls' Day
        Date(1996, 11, 3), # Independence of Cuenca
        Date(1996, 12, 25), # Christmas Day
        Date(1997, 1, 1), # New Year's Day
        Date(1997, 2, 10), # Carnival
        Date(1997, 2, 11), # Carnival
        Date(1997, 3, 28), # Good Friday
        Date(1997, 5, 1), # Labor Day
        Date(1997, 5, 24), # The Battle of Pichincha
        Date(1997, 8, 10), # Declaration of Independence of Quito
        Date(1997, 10, 9), # Independence of Guayaquil
        Date(1997, 11, 2), # All Souls' Day
        Date(1997, 11, 3), # Independence of Cuenca
        Date(1997, 12, 25), # Christmas Day
        Date(1998, 1, 1), # New Year's Day
        Date(1998, 2, 23), # Carnival
        Date(1998, 2, 24), # Carnival
        Date(1998, 4, 10), # Good Friday
        Date(1998, 5, 1), # Labor Day
        Date(1998, 5, 24), # The Battle of Pichincha
        Date(1998, 8, 10), # Declaration of Independence of Quito
        Date(1998, 10, 9), # Independence of Guayaquil
        Date(1998, 11, 2), # All Souls' Day
        Date(1998, 11, 3), # Independence of Cuenca
        Date(1998, 12, 25), # Christmas Day
        Date(1999, 1, 1), # New Year's Day
        Date(1999, 2, 15), # Carnival
        Date(1999, 2, 16), # Carnival
        Date(1999, 4, 2), # Good Friday
        Date(1999, 5, 1), # Labor Day
        Date(1999, 5, 24), # The Battle of Pichincha
        Date(1999, 8, 10), # Declaration of Independence of Quito
        Date(1999, 10, 9), # Independence of Guayaquil
        Date(1999, 11, 2), # All Souls' Day
        Date(1999, 11, 3), # Independence of Cuenca
        Date(1999, 12, 25), # Christmas Day
        Date(2000, 1, 1), # New Year's Day
        Date(2000, 3, 6), # Carnival
        Date(2000, 3, 7), # Carnival
        Date(2000, 4, 21), # Good Friday
        Date(2000, 5, 1), # Labor Day
        Date(2000, 5, 24), # The Battle of Pichincha
        Date(2000, 8, 10), # Declaration of Independence of Quito
        Date(2000, 10, 9), # Independence of Guayaquil
        Date(2000, 11, 2), # All Souls' Day
        Date(2000, 11, 3), # Independence of Cuenca
        Date(2000, 12, 25), # Christmas Day
        Date(2001, 1, 1), # New Year's Day
        Date(2001, 2, 26), # Carnival
        Date(2001, 2, 27), # Carnival
        Date(2001, 4, 13), # Good Friday
        Date(2001, 5, 1), # Labor Day
        Date(2001, 5, 24), # The Battle of Pichincha
        Date(2001, 8, 10), # Declaration of Independence of Quito
        Date(2001, 10, 9), # Independence of Guayaquil
        Date(2001, 11, 2), # All Souls' Day
        Date(2001, 11, 3), # Independence of Cuenca
        Date(2001, 12, 25), # Christmas Day
        Date(2002, 1, 1), # New Year's Day
        Date(2002, 2, 11), # Carnival
        Date(2002, 2, 12), # Carnival
        Date(2002, 3, 29), # Good Friday
        Date(2002, 5, 1), # Labor Day
        Date(2002, 5, 24), # The Battle of Pichincha
        Date(2002, 8, 10), # Declaration of Independence of Quito
        Date(2002, 10, 9), # Independence of Guayaquil
        Date(2002, 11, 2), # All Souls' Day
        Date(2002, 11, 3), # Independence of Cuenca
        Date(2002, 12, 25), # Christmas Day
        Date(2003, 1, 1), # New Year's Day
        Date(2003, 3, 3), # Carnival
        Date(2003, 3, 4), # Carnival
        Date(2003, 4, 18), # Good Friday
        Date(2003, 5, 1), # Labor Day
        Date(2003, 5, 24), # The Battle of Pichincha
        Date(2003, 8, 10), # Declaration of Independence of Quito
        Date(2003, 10, 9), # Independence of Guayaquil
        Date(2003, 11, 2), # All Souls' Day
        Date(2003, 11, 3), # Independence of Cuenca
        Date(2003, 12, 25), # Christmas Day
        Date(2004, 1, 1), # New Year's Day
        Date(2004, 2, 23), # Carnival
        Date(2004, 2, 24), # Carnival
        Date(2004, 4, 9), # Good Friday
        Date(2004, 5, 1), # Labor Day
        Date(2004, 5, 24), # The Battle of Pichincha
        Date(2004, 8, 10), # Declaration of Independence of Quito
        Date(2004, 10, 9), # Independence of Guayaquil
        Date(2004, 11, 2), # All Souls' Day
        Date(2004, 11, 3), # Independence of Cuenca
        Date(2004, 12, 25), # Christmas Day
        Date(2005, 1, 1), # New Year's Day
        Date(2005, 2, 7), # Carnival
        Date(2005, 2, 8), # Carnival
        Date(2005, 3, 25), # Good Friday
        Date(2005, 5, 1), # Labor Day
        Date(2005, 5, 24), # The Battle of Pichincha
        Date(2005, 8, 10), # Declaration of Independence of Quito
        Date(2005, 10, 9), # Independence of Guayaquil
        Date(2005, 11, 2), # All Souls' Day
        Date(2005, 11, 3), # Independence of Cuenca
        Date(2005, 12, 25), # Christmas Day
        Date(2006, 1, 1), # New Year's Day
        Date(2006, 2, 27), # Carnival
        Date(2006, 2, 28), # Carnival
        Date(2006, 4, 14), # Good Friday
        Date(2006, 5, 1), # Labor Day
        Date(2006, 5, 24), # The Battle of Pichincha
        Date(2006, 8, 10), # Declaration of Independence of Quito
        Date(2006, 10, 9), # Independence of Guayaquil
        Date(2006, 11, 2), # All Souls' Day
        Date(2006, 11, 3), # Independence of Cuenca
        Date(2006, 12, 25), # Christmas Day
        Date(2007, 1, 1), # New Year's Day
        Date(2007, 2, 19), # Carnival
        Date(2007, 2, 20), # Carnival
        Date(2007, 4, 6), # Good Friday
        Date(2007, 5, 1), # Labor Day
        Date(2007, 5, 24), # The Battle of Pichincha
        Date(2007, 8, 10), # Declaration of Independence of Quito
        Date(2007, 10, 9), # Independence of Guayaquil
        Date(2007, 11, 2), # All Souls' Day
        Date(2007, 11, 3), # Independence of Cuenca
        Date(2007, 12, 25), # Christmas Day
        Date(2008, 1, 1), # New Year's Day
        Date(2008, 2, 4), # Carnival
        Date(2008, 2, 5), # Carnival
        Date(2008, 3, 21), # Good Friday
        Date(2008, 5, 1), # Labor Day
        Date(2008, 5, 24), # The Battle of Pichincha
        Date(2008, 8, 10), # Declaration of Independence of Quito
        Date(2008, 10, 9), # Independence of Guayaquil
        Date(2008, 11, 2), # All Souls' Day
        Date(2008, 11, 3), # Independence of Cuenca
        Date(2008, 12, 25), # Christmas Day
        Date(2009, 1, 1), # New Year's Day
        Date(2009, 2, 23), # Carnival
        Date(2009, 2, 24), # Carnival
        Date(2009, 4, 10), # Good Friday
        Date(2009, 5, 1), # Labor Day
        Date(2009, 5, 24), # The Battle of Pichincha
        Date(2009, 8, 10), # Declaration of Independence of Quito
        Date(2009, 10, 9), # Independence of Guayaquil
        Date(2009, 11, 2), # All Souls' Day
        Date(2009, 11, 3), # Independence of Cuenca
        Date(2009, 12, 25), # Christmas Day
        Date(2010, 1, 1), # New Year's Day
        Date(2010, 2, 15), # Carnival
        Date(2010, 2, 16), # Carnival
        Date(2010, 4, 2), # Good Friday
        Date(2010, 5, 1), # Labor Day
        Date(2010, 5, 24), # The Battle of Pichincha
        Date(2010, 8, 10), # Declaration of Independence of Quito
        Date(2010, 10, 9), # Independence of Guayaquil
        Date(2010, 11, 2), # All Souls' Day
        Date(2010, 11, 3), # Independence of Cuenca
        Date(2010, 12, 25), # Christmas Day
        Date(2011, 1, 1), # New Year's Day
        Date(2011, 3, 7), # Carnival
        Date(2011, 3, 8), # Carnival
        Date(2011, 4, 22), # Good Friday
        Date(2011, 5, 1), # Labor Day
        Date(2011, 5, 24), # The Battle of Pichincha
        Date(2011, 8, 10), # Declaration of Independence of Quito
        Date(2011, 10, 9), # Independence of Guayaquil
        Date(2011, 11, 2), # All Souls' Day
        Date(2011, 11, 3), # Independence of Cuenca
        Date(2011, 12, 25), # Christmas Day
        Date(2012, 1, 1), # New Year's Day
        Date(2012, 2, 20), # Carnival
        Date(2012, 2, 21), # Carnival
        Date(2012, 4, 6), # Good Friday
        Date(2012, 5, 1), # Labor Day
        Date(2012, 5, 24), # The Battle of Pichincha
        Date(2012, 8, 10), # Declaration of Independence of Quito
        Date(2012, 10, 9), # Independence of Guayaquil
        Date(2012, 11, 2), # All Souls' Day
        Date(2012, 11, 3), # Independence of Cuenca
        Date(2012, 12, 25), # Christmas Day
        Date(2013, 1, 1), # New Year's Day
        Date(2013, 2, 11), # Carnival
        Date(2013, 2, 12), # Carnival
        Date(2013, 3, 29), # Good Friday
        Date(2013, 5, 1), # Labor Day
        Date(2013, 5, 24), # The Battle of Pichincha
        Date(2013, 8, 10), # Declaration of Independence of Quito
        Date(2013, 10, 9), # Independence of Guayaquil
        Date(2013, 11, 2), # All Souls' Day
        Date(2013, 11, 3), # Independence of Cuenca
        Date(2013, 12, 25), # Christmas Day
        Date(2014, 1, 1), # New Year's Day
        Date(2014, 3, 3), # Carnival
        Date(2014, 3, 4), # Carnival
        Date(2014, 4, 18), # Good Friday
        Date(2014, 5, 1), # Labor Day
        Date(2014, 5, 24), # The Battle of Pichincha
        Date(2014, 8, 10), # Declaration of Independence of Quito
        Date(2014, 10, 9), # Independence of Guayaquil
        Date(2014, 11, 2), # All Souls' Day
        Date(2014, 11, 3), # Independence of Cuenca
        Date(2014, 12, 25), # Christmas Day
        Date(2015, 1, 1), # New Year's Day
        Date(2015, 2, 16), # Carnival
        Date(2015, 2, 17), # Carnival
        Date(2015, 4, 3), # Good Friday
        Date(2015, 5, 1), # Labor Day
        Date(2015, 5, 24), # The Battle of Pichincha
        Date(2015, 8, 10), # Declaration of Independence of Quito
        Date(2015, 10, 9), # Independence of Guayaquil
        Date(2015, 11, 2), # All Souls' Day
        Date(2015, 11, 3), # Independence of Cuenca
        Date(2015, 12, 25), # Christmas Day
        Date(2016, 1, 1), # New Year's Day
        Date(2016, 2, 8), # Carnival
        Date(2016, 2, 9), # Carnival
        Date(2016, 3, 25), # Good Friday
        Date(2016, 5, 1), # Labor Day
        Date(2016, 5, 24), # The Battle of Pichincha
        Date(2016, 8, 10), # Declaration of Independence of Quito
        Date(2016, 10, 9), # Independence of Guayaquil
        Date(2016, 11, 2), # All Souls' Day
        Date(2016, 11, 3), # Independence of Cuenca
        Date(2016, 12, 25), # Christmas Day
        Date(2017, 1, 1), # New Year's Day
        Date(2017, 1, 2), # New Year's Day (observed)
        Date(2017, 2, 27), # Carnival
        Date(2017, 2, 28), # Carnival
        Date(2017, 4, 14), # Good Friday
        Date(2017, 5, 1), # Labor Day
        Date(2017, 5, 24), # The Battle of Pichincha
        Date(2017, 5, 26), # The Battle of Pichincha (observed)
        Date(2017, 8, 10), # Declaration of Independence of Quito
        Date(2017, 8, 11), # Declaration of Independence of Quito (observed)
        Date(2017, 10, 9), # Independence of Guayaquil
        Date(2017, 11, 2), # All Souls' Day
        Date(2017, 11, 3), # Independence of Cuenca
        Date(2017, 12, 25), # Christmas Day
        Date(2018, 1, 1), # New Year's Day
        Date(2018, 2, 12), # Carnival
        Date(2018, 2, 13), # Carnival
        Date(2018, 3, 30), # Good Friday
        Date(2018, 4, 30), # Labor Day (observed)
        Date(2018, 5, 1), # Labor Day
        Date(2018, 5, 24), # The Battle of Pichincha
        Date(2018, 5, 25), # The Battle of Pichincha (observed)
        Date(2018, 8, 10), # Declaration of Independence of Quito
        Date(2018, 10, 8), # Independence of Guayaquil (observed)
        Date(2018, 10, 9), # Independence of Guayaquil
        Date(2018, 11, 2), # All Souls' Day
        Date(2018, 11, 3), # Independence of Cuenca
        Date(2018, 12, 25), # Christmas Day
        Date(2019, 1, 1), # New Year's Day
        Date(2019, 3, 4), # Carnival
        Date(2019, 3, 5), # Carnival
        Date(2019, 4, 19), # Good Friday
        Date(2019, 5, 1), # Labor Day
        Date(2019, 5, 3), # Labor Day (observed)
        Date(2019, 5, 24), # The Battle of Pichincha
        Date(2019, 8, 9), # Declaration of Independence of Quito (observed)
        Date(2019, 8, 10), # Declaration of Independence of Quito
        Date(2019, 10, 9), # Independence of Guayaquil
        Date(2019, 10, 11), # Independence of Guayaquil (observed)
        Date(2019, 11, 1), # All Souls' Day (observed)
        Date(2019, 11, 2), # All Souls' Day
        Date(2019, 11, 3), # Independence of Cuenca
        Date(2019, 11, 4), # Independence of Cuenca (observed)
        Date(2019, 12, 25), # Christmas Day
        Date(2020, 1, 1), # New Year's Day
        Date(2020, 2, 24), # Carnival
        Date(2020, 2, 25), # Carnival
        Date(2020, 4, 10), # Good Friday
        Date(2020, 5, 1), # Labor Day
        Date(2020, 5, 24), # The Battle of Pichincha
        Date(2020, 5, 25), # The Battle of Pichincha (observed)
        Date(2020, 8, 10), # Declaration of Independence of Quito
        Date(2020, 10, 9), # Independence of Guayaquil
        Date(2020, 11, 2), # All Souls' Day
        Date(2020, 11, 3), # Independence of Cuenca
        Date(2020, 12, 25), # Christmas Day
        Date(2021, 1, 1), # New Year's Day
        Date(2021, 2, 15), # Carnival
        Date(2021, 2, 16), # Carnival
        Date(2021, 4, 2), # Good Friday
        Date(2021, 4, 30), # Labor Day (observed)
        Date(2021, 5, 1), # Labor Day
        Date(2021, 5, 24), # The Battle of Pichincha
        Date(2021, 8, 9), # Declaration of Independence of Quito (observed)
        Date(2021, 8, 10), # Declaration of Independence of Quito
        Date(2021, 10, 8), # Independence of Guayaquil (observed)
        Date(2021, 10, 9), # Independence of Guayaquil
        Date(2021, 11, 1), # All Souls' Day (observed)
        Date(2021, 11, 2), # All Souls' Day
        Date(2021, 11, 3), # Independence of Cuenca
        Date(2021, 11, 5), # Independence of Cuenca (observed)
        Date(2021, 12, 24), # Christmas Day (observed)
        Date(2021, 12, 25), # Christmas Day
        Date(2021, 12, 31), # New Year's Day (observed)
        Date(2022, 1, 1), # New Year's Day
        Date(2022, 2, 28), # Carnival
        Date(2022, 3, 1), # Carnival
        Date(2022, 4, 15), # Good Friday
        Date(2022, 5, 1), # Labor Day
        Date(2022, 5, 2), # Labor Day (observed)
        Date(2022, 5, 23), # The Battle of Pichincha (observed)
        Date(2022, 5, 24), # The Battle of Pichincha
        Date(2022, 8, 10), # Declaration of Independence of Quito
        Date(2022, 8, 12), # Declaration of Independence of Quito (observed)
        Date(2022, 10, 9), # Independence of Guayaquil
        Date(2022, 10, 10), # Independence of Guayaquil (observed)
        Date(2022, 11, 2), # All Souls' Day
        Date(2022, 11, 3), # Independence of Cuenca
        Date(2022, 11, 4), # All Souls' Day (observed); Independence of Cuenca (observed)
        Date(2022, 12, 25), # Christmas Day
        Date(2022, 12, 26), # Christmas Day (observed)
        Date(2023, 1, 1), # New Year's Day
        Date(2023, 1, 2), # New Year's Day (observed)
        Date(2023, 2, 20), # Carnival
        Date(2023, 2, 21), # Carnival
        Date(2023, 4, 7), # Good Friday
        Date(2023, 5, 1), # Labor Day
        Date(2023, 5, 24), # The Battle of Pichincha
        Date(2023, 5, 26), # The Battle of Pichincha (observed)
        Date(2023, 8, 10), # Declaration of Independence of Quito
        Date(2023, 8, 11), # Declaration of Independence of Quito (observed)
        Date(2023, 10, 9), # Independence of Guayaquil
        Date(2023, 11, 2), # All Souls' Day
        Date(2023, 11, 3), # Independence of Cuenca
        Date(2023, 12, 25), # Christmas Day
        Date(2024, 1, 1), # New Year's Day
        Date(2024, 2, 12), # Carnival
        Date(2024, 2, 13), # Carnival
        Date(2024, 3, 29), # Good Friday
        Date(2024, 5, 1), # Labor Day
        Date(2024, 5, 3), # Labor Day (observed)
        Date(2024, 5, 24), # The Battle of Pichincha
        Date(2024, 8, 9), # Declaration of Independence of Quito (observed)
        Date(2024, 8, 10), # Declaration of Independence of Quito
        Date(2024, 10, 9), # Independence of Guayaquil
        Date(2024, 10, 11), # Independence of Guayaquil (observed)
        Date(2024, 11, 1), # All Souls' Day (observed)
        Date(2024, 11, 2), # All Souls' Day
        Date(2024, 11, 3), # Independence of Cuenca
        Date(2024, 11, 4), # Independence of Cuenca (observed)
        Date(2024, 12, 25), # Christmas Day
        Date(2025, 1, 1), # New Year's Day
        Date(2025, 3, 3), # Carnival
        Date(2025, 3, 4), # Carnival
        Date(2025, 4, 18), # Good Friday
        Date(2025, 5, 1), # Labor Day
        Date(2025, 5, 2), # Labor Day (observed)
        Date(2025, 5, 23), # The Battle of Pichincha (observed)
        Date(2025, 5, 24), # The Battle of Pichincha
        Date(2025, 8, 10), # Declaration of Independence of Quito
        Date(2025, 8, 11), # Declaration of Independence of Quito (observed)
        Date(2025, 10, 9), # Independence of Guayaquil
        Date(2025, 10, 10), # Independence of Guayaquil (observed)
        Date(2025, 11, 2), # All Souls' Day
        Date(2025, 11, 3), # Independence of Cuenca
        Date(2025, 12, 25), # Christmas Day
        Date(2026, 1, 1), # New Year's Day
        Date(2026, 2, 16), # Carnival
        Date(2026, 2, 17), # Carnival
        Date(2026, 4, 3), # Good Friday
        Date(2026, 5, 1), # Labor Day
        Date(2026, 5, 24), # The Battle of Pichincha
        Date(2026, 5, 25), # The Battle of Pichincha (observed)
        Date(2026, 8, 10), # Declaration of Independence of Quito
        Date(2026, 10, 9), # Independence of Guayaquil
        Date(2026, 11, 2), # All Souls' Day
        Date(2026, 11, 3), # Independence of Cuenca
        Date(2026, 12, 25), # Christmas Day
        Date(2027, 1, 1), # New Year's Day
        Date(2027, 2, 8), # Carnival
        Date(2027, 2, 9), # Carnival
        Date(2027, 3, 26), # Good Friday
        Date(2027, 4, 30), # Labor Day (observed)
        Date(2027, 5, 1), # Labor Day
        Date(2027, 5, 24), # The Battle of Pichincha
        Date(2027, 8, 9), # Declaration of Independence of Quito (observed)
        Date(2027, 8, 10), # Declaration of Independence of Quito
        Date(2027, 10, 8), # Independence of Guayaquil (observed)
        Date(2027, 10, 9), # Independence of Guayaquil
        Date(2027, 11, 1), # All Souls' Day (observed)
        Date(2027, 11, 2), # All Souls' Day
        Date(2027, 11, 3), # Independence of Cuenca
        Date(2027, 11, 5), # Independence of Cuenca (observed)
        Date(2027, 12, 24), # Christmas Day (observed)
        Date(2027, 12, 25), # Christmas Day
        Date(2027, 12, 31), # New Year's Day (observed)
        Date(2028, 1, 1), # New Year's Day
        Date(2028, 2, 28), # Carnival
        Date(2028, 2, 29), # Carnival
        Date(2028, 4, 14), # Good Friday
        Date(2028, 5, 1), # Labor Day
        Date(2028, 5, 24), # The Battle of Pichincha
        Date(2028, 5, 26), # The Battle of Pichincha (observed)
        Date(2028, 8, 10), # Declaration of Independence of Quito
        Date(2028, 8, 11), # Declaration of Independence of Quito (observed)
        Date(2028, 10, 9), # Independence of Guayaquil
        Date(2028, 11, 2), # All Souls' Day
        Date(2028, 11, 3), # Independence of Cuenca
        Date(2028, 12, 25), # Christmas Day
        Date(2029, 1, 1), # New Year's Day
        Date(2029, 2, 12), # Carnival
        Date(2029, 2, 13), # Carnival
        Date(2029, 3, 30), # Good Friday
        Date(2029, 4, 30), # Labor Day (observed)
        Date(2029, 5, 1), # Labor Day
        Date(2029, 5, 24), # The Battle of Pichincha
        Date(2029, 5, 25), # The Battle of Pichincha (observed)
        Date(2029, 8, 10), # Declaration of Independence of Quito
        Date(2029, 10, 8), # Independence of Guayaquil (observed)
        Date(2029, 10, 9), # Independence of Guayaquil
        Date(2029, 11, 2), # All Souls' Day
        Date(2029, 11, 3), # Independence of Cuenca
        Date(2029, 12, 25), # Christmas Day
        Date(2030, 1, 1), # New Year's Day
        Date(2030, 3, 4), # Carnival
        Date(2030, 3, 5), # Carnival
        Date(2030, 4, 19), # Good Friday
        Date(2030, 5, 1), # Labor Day
        Date(2030, 5, 3), # Labor Day (observed)
        Date(2030, 5, 24), # The Battle of Pichincha
        Date(2030, 8, 9), # Declaration of Independence of Quito (observed)
        Date(2030, 8, 10), # Declaration of Independence of Quito
        Date(2030, 10, 9), # Independence of Guayaquil
        Date(2030, 10, 11), # Independence of Guayaquil (observed)
        Date(2030, 11, 1), # All Souls' Day (observed)
        Date(2030, 11, 2), # All Souls' Day
        Date(2030, 11, 3), # Independence of Cuenca
        Date(2030, 11, 4), # Independence of Cuenca (observed)
        Date(2030, 12, 25), # Christmas Day
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
