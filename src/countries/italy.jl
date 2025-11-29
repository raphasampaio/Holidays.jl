module ItalyHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian

function is_epiphany(x::TimeType)
    return is_january(x) && is_day(x, 6)
end

function is_saint_josephs_day(x::TimeType)
    return is_march(x) && is_day(x, 19)
end

function is_liberation_day(x::TimeType)
    return is_april(x) && is_day(x, 25)
end

function is_republic_day(x::TimeType)
    return is_june(x) && is_day(x, 2)
end

function is_saints_peter_and_paul(x::TimeType)
    return is_june(x) && is_day(x, 29)
end

function is_assumption_of_mary(x::TimeType)
    return is_august(x) && is_day(x, 15)
end

function is_national_unity_day(x::TimeType)
    return is_november(x) && is_day(x, 4)
end

function is_immaculate_conception(x::TimeType)
    return is_december(x) && is_day(x, 8)
end

function is_anniversary_of_unification(x::TimeType)
    return is_march(x) && is_day(x, 17)
end

function Holidays.fetch_holidays(::Type{Holidays.Italy})
    return [
        # New Year's Day
        Holiday("Capodanno", is_january_1st),

        # Epiphany
        Holiday("Epifania del Signore", is_epiphany),

        # Anniversary of the Unification of Italy (only in 1961 and 2011)
        Holiday("Anniversario dell'Unità d'Italia", is_anniversary_of_unification, start_year = 1961, end_year = 1961),
        Holiday("Anniversario dell'Unità d'Italia", is_anniversary_of_unification, start_year = 2011, end_year = 2011),

        # Saint Joseph's Day (abolished in 1977)
        Holiday("San Giuseppe", is_saint_josephs_day, end_year = 1976),

        # Easter Sunday
        Holiday("Pasqua di Resurrezione", Christian.is_easter_sunday),

        # Easter Monday
        Holiday("Lunedì dell'Angelo", Christian.is_easter_monday),

        # Liberation Day (started in 1946)
        Holiday("Festa della Liberazione", is_liberation_day, start_year = 1946),

        # Labour Day
        Holiday("Festa dei Lavoratori", is_may_1st),

        # Ascension Thursday (abolished in 1977)
        Holiday("Ascensione Nostro Signore", Christian.is_ascension_day, end_year = 1976),

        # Corpus Christi (abolished in 1977)
        Holiday("Corpus Domini", Christian.is_corpus_christi, end_year = 1976),

        # Republic Day (started in 1948)
        Holiday("Festa della Repubblica", is_republic_day, start_year = 1948),

        # Saints Peter and Paul (abolished in 1977)
        Holiday("Santi Pietro e Paolo", is_saints_peter_and_paul, end_year = 1976),

        # Assumption of Mary
        Holiday("Assunzione della Vergine", is_assumption_of_mary),

        # All Saints' Day
        Holiday("Tutti i Santi", Christian.is_all_saints_day),

        # National Unity and Armed Forces Day (abolished in 1977)
        Holiday("Giornata dell'Unità Nazionale e delle Forze Armate", is_national_unity_day, end_year = 1976),

        # Immaculate Conception
        Holiday("Immacolata Concezione", is_immaculate_conception),

        # Christmas Day
        Holiday("Natale", Christian.is_christmas_day),

        # St. Stephen's Day (started in 1947)
        Holiday("Santo Stefano", Christian.is_st_stephens_day, start_year = 1947),
    ]
end

end
