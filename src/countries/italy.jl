module ItalyHolidays

using Dates
using Holidays

include("../dates.jl")

const Christian = Holidays.Christian

function Holidays.fetch_holidays(::Type{Holidays.Italy})
    return [
        # New Year's Day
        Holiday("Capodanno", is_january_1st),

        # Epiphany
        Holiday("Epifania del Signore", is_january_6th),

        # Anniversary of the Unification of Italy (only in 1961 and 2011)
        Holiday("Anniversario dell'Unità d'Italia", is_march_17th, start_year = 1961, end_year = 1961),
        Holiday("Anniversario dell'Unità d'Italia", is_march_17th, start_year = 2011, end_year = 2011),

        # Saint Joseph's Day (abolished in 1977)
        Holiday("San Giuseppe", is_march_19th, end_year = 1976),

        # Easter Sunday
        Holiday("Pasqua di Resurrezione", Christian.is_easter_sunday),

        # Easter Monday
        Holiday("Lunedì dell'Angelo", Christian.is_easter_monday),

        # Liberation Day (started in 1946)
        Holiday("Festa della Liberazione", is_april_25th, start_year = 1946),

        # Labour Day
        Holiday("Festa dei Lavoratori", is_may_1st),

        # Ascension Thursday (abolished in 1977)
        Holiday("Ascensione Nostro Signore", Christian.is_ascension_day, end_year = 1976),

        # Corpus Christi (abolished in 1977)
        Holiday("Corpus Domini", Christian.is_corpus_christi, end_year = 1976),

        # Republic Day (started in 1948)
        Holiday("Festa della Repubblica", is_june_2nd, start_year = 1948),

        # Saints Peter and Paul (abolished in 1977)
        Holiday("Santi Pietro e Paolo", is_june_29th, end_year = 1976),

        # Assumption of Mary
        Holiday("Assunzione della Vergine", is_august_15th),

        # All Saints' Day
        Holiday("Tutti i Santi", Christian.is_all_saints_day),

        # National Unity and Armed Forces Day (abolished in 1977)
        Holiday("Giornata dell'Unità Nazionale e delle Forze Armate", is_november_4th, end_year = 1976),

        # Immaculate Conception
        Holiday("Immacolata Concezione", is_december_8th),

        # Christmas Day
        Holiday("Natale", Christian.is_christmas_day),

        # St. Stephen's Day (started in 1947)
        Holiday("Santo Stefano", Christian.is_st_stephens_day, start_year = 1947),
    ]
end

end
