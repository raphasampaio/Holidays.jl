module GermanyHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian

const Germany = Holidays.Germany

function Holidays.fetch_holidays(::Type{Germany})
    return [
        Holiday("New Year's Day", is_january_1st),
        # Holiday("Good Friday", Christian.is_good_friday),
        # Holiday("Easter Monday", Christian.is_easter_monday),
        # Holiday("Labour Day", International.is_workers_day),
        # Holiday("Ascension Day", Christian.is_ascension_day),
        # Holiday("Whit Monday", Christian.is_whit_monday),
        # Holiday("German Unity Day", x -> is_october(x) && is_day(x, 3)),
        # Holiday("Christmas Day", Christian.is_christmas_day),
        # Holiday("Second Day of Christmas", Christian.is_boxing_day),
    ]
end

# function Holidays.fetch_holidays(::Type{Germany{Subdivision.BadenWurttemberg}})
#     return [
#         fetch_holidays(Germany)...,
#         Holiday("Epiphany", x -> is_january(x) && is_day(x, 6)),
#         Holiday("Corpus Christi", Christian.is_corpus_christi),
#         Holiday("All Saints' Day", Christian.is_all_saints_day),
#     ]
# end

# function Holidays.fetch_holidays(::Type{Germany{Subdivision.Bavaria}})
#     return [
#         fetch_holidays(Germany)...,
#         Holiday("Epiphany", x -> is_january(x) && is_day(x, 6)),
#         Holiday("Corpus Christi", Christian.is_corpus_christi),
#         Holiday("Assumption Day", Christian.is_assumption_day),
#         Holiday("All Saints' Day", Christian.is_all_saints_day),
#     ]
# end

# function Holidays.fetch_holidays(::Type{Germany{Subdivision.Berlin}})
#     return [
#         fetch_holidays(Germany)...,
#         Holiday("International Women's Day", International.is_womens_day),
#     ]
# end

# function Holidays.fetch_holidays(::Type{Germany{Subdivision.Brandenburg}})
#     return [
#         fetch_holidays(Germany)...,
#         Holiday("Reformation Day", x -> is_october(x) && is_day(x, 31)),
#     ]
# end

# function Holidays.fetch_holidays(::Type{Germany{Subdivision.Bremen}})
#     return [
#         fetch_holidays(Germany)...,
#         Holiday("Reformation Day", x -> is_october(x) && is_day(x, 31)),
#     ]
# end

# function Holidays.fetch_holidays(::Type{Germany{Subdivision.Hamburg}})
#     return [
#         fetch_holidays(Germany)...,
#         Holiday("Reformation Day", x -> is_october(x) && is_day(x, 31)),
#     ]
# end

# function Holidays.fetch_holidays(::Type{Germany{Subdivision.Hesse}})
#     return [
#         fetch_holidays(Germany)...,
#         Holiday("Corpus Christi", Christian.is_corpus_christi),
#     ]
# end

# function Holidays.fetch_holidays(::Type{Germany{Subdivision.MecklenburgVorpommern}})
#     return [
#         fetch_holidays(Germany)...,
#         Holiday("International Women's Day", International.is_womens_day),
#         Holiday("Reformation Day", x -> is_october(x) && is_day(x, 31)),
#     ]
# end

# function Holidays.fetch_holidays(::Type{Germany{Subdivision.LowerSaxony}})
#     return [
#         fetch_holidays(Germany)...,
#         Holiday("Reformation Day", x -> is_october(x) && is_day(x, 31)),
#     ]
# end

# function Holidays.fetch_holidays(::Type{Germany{Subdivision.NorthRhineWestphalia}})
#     return [
#         fetch_holidays(Germany)...,
#         Holiday("Corpus Christi", Christian.is_corpus_christi),
#         Holiday("All Saints' Day", Christian.is_all_saints_day),
#     ]
# end

# function Holidays.fetch_holidays(::Type{Germany{Subdivision.RhinelandPalatinate}})
#     return [
#         fetch_holidays(Germany)...,
#         Holiday("Corpus Christi", Christian.is_corpus_christi),
#         Holiday("All Saints' Day", Christian.is_all_saints_day),
#     ]
# end

# function Holidays.fetch_holidays(::Type{Germany{Subdivision.Saarland}})
#     return [
#         fetch_holidays(Germany)...,
#         Holiday("Corpus Christi", Christian.is_corpus_christi),
#         Holiday("Assumption Day", Christian.is_assumption_day),
#         Holiday("All Saints' Day", Christian.is_all_saints_day),
#     ]
# end

# function Holidays.fetch_holidays(::Type{Germany{Subdivision.Saxony}})
#     return [
#         fetch_holidays(Germany)...,
#         Holiday("Reformation Day", x -> is_october(x) && is_day(x, 31)),
#         Holiday("Repentance and Prayer Day", x -> x == (Christian.advent_sunday(Dates.year(x)) - Dates.Day(11))),
#     ]
# end

# function Holidays.fetch_holidays(::Type{Germany{Subdivision.SaxonyAnhalt}})
#     return [
#         fetch_holidays(Germany)...,
#         Holiday("Epiphany", x -> is_january(x) && is_day(x, 6)),
#         Holiday("Reformation Day", x -> is_october(x) && is_day(x, 31)),
#     ]
# end

# function Holidays.fetch_holidays(::Type{Germany{Subdivision.SchleswigHolstein}})
#     return [
#         fetch_holidays(Germany)...,
#         Holiday("Reformation Day", x -> is_october(x) && is_day(x, 31)),
#     ]
# end

# function Holidays.fetch_holidays(::Type{Germany{Subdivision.Thuringia}})
#     return [
#         fetch_holidays(Germany)...,
#         Holiday("World Children's Day", x -> is_september(x) && is_day(x, 20)),
#         Holiday("Reformation Day", x -> is_october(x) && is_day(x, 31)),
#     ]
# end

end
