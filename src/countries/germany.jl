function fetch_holidays(::Type{Germany})
    return [
        Holiday("New Year's Day", (d) -> Dates.month(d) == Dates.Jan && Dates.day(d) == 1),
        Holiday("Good Friday", Christian.is_good_friday),
        Holiday("Easter Monday", Christian.is_easter_monday),
        Holiday("Labour Day", (d) -> Dates.month(d) == Dates.May && Dates.day(d) == 1),
        Holiday("Ascension Day", Christian.is_ascension_day),
        Holiday("Whit Monday", Christian.is_whit_monday),
        Holiday("German Unity Day", (d) -> Dates.month(d) == Dates.Oct && Dates.day(d) == 3),
        Holiday("Christmas Day", Christian.is_christmas_day),
        Holiday("Second Day of Christmas", Christian.is_boxing_day),
    ]
end

function fetch_holidays(::Type{Germany{Subdivision.BadenWurttemberg}})
    return [
        fetch_holidays(Germany)...,
        Holiday("Epiphany", (d) -> Dates.month(d) == Dates.Jan && Dates.day(d) == 6),
        Holiday("Corpus Christi", Christian.is_chorus_christi),
        Holiday("All Saints' Day", Christian.is_all_saints_day),
    ]
end

function fetch_holidays(::Type{Germany{Subdivision.Bavaria}})
    return [
        fetch_holidays(Germany)...,
        Holiday("Epiphany", (d) -> Dates.month(d) == Dates.Jan && Dates.day(d) == 6),
        Holiday("Corpus Christi", Christian.is_chorus_christi),
        Holiday("Assumption Day", Christian.is_assumption_day),
        Holiday("All Saints' Day", Christian.is_all_saints_day),
    ]
end

function fetch_holidays(::Type{Germany{Subdivision.Berlin}})
    return [
        fetch_holidays(Germany)...,
        Holiday("International Women's Day", (d) -> Dates.month(d) == Dates.Mar && Dates.day(d) == 8),
    ]
end

function fetch_holidays(::Type{Germany{Subdivision.Brandenburg}})
    return [
        fetch_holidays(Germany)...,
        Holiday("Reformation Day", (d) -> Dates.month(d) == Dates.Oct && Dates.day(d) == 31),
    ]
end

function fetch_holidays(::Type{Germany{Subdivision.Bremen}})
    return [
        fetch_holidays(Germany)...,
        Holiday("Reformation Day", (d) -> Dates.month(d) == Dates.Oct && Dates.day(d) == 31),
    ]
end

function fetch_holidays(::Type{Germany{Subdivision.Hamburg}})
    return [
        fetch_holidays(Germany)...,
        Holiday("Reformation Day", (d) -> Dates.month(d) == Dates.Oct && Dates.day(d) == 31),
    ]
end

function fetch_holidays(::Type{Germany{Subdivision.Hesse}})
    return [
        fetch_holidays(Germany)...,
        Holiday("Corpus Christi", Christian.is_chorus_christi),
    ]
end

function fetch_holidays(::Type{Germany{Subdivision.MecklenburgVorpommern}})
    return [
        fetch_holidays(Germany)...,
        Holiday("International Women's Day", (d) -> Dates.month(d) == Dates.Mar && Dates.day(d) == 8),
        Holiday("Reformation Day", (d) -> Dates.month(d) == Dates.Oct && Dates.day(d) == 31),
    ]
end 

function fetch_holidays(::Type{Germany{Subdivision.LowerSaxony}})
    return [
        fetch_holidays(Germany)...,
        Holiday("Reformation Day", (d) -> Dates.month(d) == Dates.Oct && Dates.day(d) == 31),
    ]
end

function fetch_holidays(::Type{Germany{Subdivision.NorthRhineWestphalia}})
    return [
        fetch_holidays(Germany)...,
        Holiday("Corpus Christi", Christian.is_chorus_christi),
        Holiday("All Saints' Day", Christian.is_all_saints_day),
    ]
end

function fetch_holidays(::Type{Germany{Subdivision.RhinelandPalatinate}})
    return [
        fetch_holidays(Germany)...,
        Holiday("Corpus Christi", Christian.is_chorus_christi),
        Holiday("All Saints' Day", Christian.is_all_saints_day),
    ]
end

function fetch_holidays(::Type{Germany{Subdivision.Saarland}})
    return [
        fetch_holidays(Germany)...,
        Holiday("Corpus Christi", Christian.is_chorus_christi),
        Holiday("Assumption Day", Christian.is_assumption_day),
        Holiday("All Saints' Day", Christian.is_all_saints_day),
    ]
end

function fetch_holidays(::Type{Germany{Subdivision.Saxony}})
    return [
        fetch_holidays(Germany)...,
        Holiday("Reformation Day", (d) -> Dates.month(d) == Dates.Oct && Dates.day(d) == 31),
        Holiday("Repentance and Prayer Day", (d) -> d == (Christian.advent_sunday(Dates.year(d)) - Dates.Day(11))),
    ]
end

function fetch_holidays(::Type{Germany{Subdivision.SaxonyAnhalt}})
    return [
        fetch_holidays(Germany)...,
        Holiday("Epiphany", (d) -> Dates.month(d) == Dates.Jan && Dates.day(d) == 6),
        Holiday("Reformation Day", (d) -> Dates.month(d) == Dates.Oct && Dates.day(d) == 31),
    ]
end

function fetch_holidays(::Type{Germany{Subdivision.SchleswigHolstein}})
    return [
        fetch_holidays(Germany)...,
        Holiday("Reformation Day", (d) -> Dates.month(d) == Dates.Oct && Dates.day(d) == 31),
    ]
end

function fetch_holidays(::Type{Germany{Subdivision.Thuringia}})
    return [
        fetch_holidays(Germany)...,
        Holiday("World Children's Day", (d) -> Dates.month(d) == Dates.Sep && Dates.day(d) == 20),
        Holiday("Reformation Day", (d) -> Dates.month(d) == Dates.Oct && Dates.day(d) == 31),
    ]
end
