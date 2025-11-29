module TestItaly

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Italy" begin
    calendar = Holidays.Italy()

    holidays = Date[
        Date(1970, 1, 1), # Capodanno
        Date(1970, 1, 6), # Epifania del Signore
        Date(1970, 3, 19), # San Giuseppe
        Date(1970, 3, 29), # Pasqua di Resurrezione
        Date(1970, 3, 30), # Lunedì dell'Angelo
        Date(1970, 4, 25), # Festa della Liberazione
        Date(1970, 5, 1), # Festa dei Lavoratori
        Date(1970, 5, 7), # Ascensione Nostro Signore
        Date(1970, 5, 28), # Corpus Domini
        Date(1970, 6, 2), # Festa della Repubblica
        Date(1970, 6, 29), # Santi Pietro e Paolo
        Date(1970, 8, 15), # Assunzione della Vergine
        Date(1970, 11, 1), # Tutti i Santi
        Date(1970, 11, 4), # Giornata dell'Unità Nazionale e delle Forze Armate
        Date(1970, 12, 8), # Immacolata Concezione
        Date(1970, 12, 25), # Natale
        Date(1970, 12, 26), # Santo Stefano
        Date(1971, 1, 1), # Capodanno
        Date(1971, 1, 6), # Epifania del Signore
        Date(1971, 3, 19), # San Giuseppe
        Date(1971, 4, 11), # Pasqua di Resurrezione
        Date(1971, 4, 12), # Lunedì dell'Angelo
        Date(1971, 4, 25), # Festa della Liberazione
        Date(1971, 5, 1), # Festa dei Lavoratori
        Date(1971, 5, 20), # Ascensione Nostro Signore
        Date(1971, 6, 2), # Festa della Repubblica
        Date(1971, 6, 10), # Corpus Domini
        Date(1971, 6, 29), # Santi Pietro e Paolo
        Date(1971, 8, 15), # Assunzione della Vergine
        Date(1971, 11, 1), # Tutti i Santi
        Date(1971, 11, 4), # Giornata dell'Unità Nazionale e delle Forze Armate
        Date(1971, 12, 8), # Immacolata Concezione
        Date(1971, 12, 25), # Natale
        Date(1971, 12, 26), # Santo Stefano
        Date(1972, 1, 1), # Capodanno
        Date(1972, 1, 6), # Epifania del Signore
        Date(1972, 3, 19), # San Giuseppe
        Date(1972, 4, 2), # Pasqua di Resurrezione
        Date(1972, 4, 3), # Lunedì dell'Angelo
        Date(1972, 4, 25), # Festa della Liberazione
        Date(1972, 5, 1), # Festa dei Lavoratori
        Date(1972, 5, 11), # Ascensione Nostro Signore
        Date(1972, 6, 1), # Corpus Domini
        Date(1972, 6, 2), # Festa della Repubblica
        Date(1972, 6, 29), # Santi Pietro e Paolo
        Date(1972, 8, 15), # Assunzione della Vergine
        Date(1972, 11, 1), # Tutti i Santi
        Date(1972, 11, 4), # Giornata dell'Unità Nazionale e delle Forze Armate
        Date(1972, 12, 8), # Immacolata Concezione
        Date(1972, 12, 25), # Natale
        Date(1972, 12, 26), # Santo Stefano
        Date(1973, 1, 1), # Capodanno
        Date(1973, 1, 6), # Epifania del Signore
        Date(1973, 3, 19), # San Giuseppe
        Date(1973, 4, 22), # Pasqua di Resurrezione
        Date(1973, 4, 23), # Lunedì dell'Angelo
        Date(1973, 4, 25), # Festa della Liberazione
        Date(1973, 5, 1), # Festa dei Lavoratori
        Date(1973, 5, 31), # Ascensione Nostro Signore
        Date(1973, 6, 2), # Festa della Repubblica
        Date(1973, 6, 21), # Corpus Domini
        Date(1973, 6, 29), # Santi Pietro e Paolo
        Date(1973, 8, 15), # Assunzione della Vergine
        Date(1973, 11, 1), # Tutti i Santi
        Date(1973, 11, 4), # Giornata dell'Unità Nazionale e delle Forze Armate
        Date(1973, 12, 8), # Immacolata Concezione
        Date(1973, 12, 25), # Natale
        Date(1973, 12, 26), # Santo Stefano
        Date(1974, 1, 1), # Capodanno
        Date(1974, 1, 6), # Epifania del Signore
        Date(1974, 3, 19), # San Giuseppe
        Date(1974, 4, 14), # Pasqua di Resurrezione
        Date(1974, 4, 15), # Lunedì dell'Angelo
        Date(1974, 4, 25), # Festa della Liberazione
        Date(1974, 5, 1), # Festa dei Lavoratori
        Date(1974, 5, 23), # Ascensione Nostro Signore
        Date(1974, 6, 2), # Festa della Repubblica
        Date(1974, 6, 13), # Corpus Domini
        Date(1974, 6, 29), # Santi Pietro e Paolo
        Date(1974, 8, 15), # Assunzione della Vergine
        Date(1974, 11, 1), # Tutti i Santi
        Date(1974, 11, 4), # Giornata dell'Unità Nazionale e delle Forze Armate
        Date(1974, 12, 8), # Immacolata Concezione
        Date(1974, 12, 25), # Natale
        Date(1974, 12, 26), # Santo Stefano
        Date(1975, 1, 1), # Capodanno
        Date(1975, 1, 6), # Epifania del Signore
        Date(1975, 3, 19), # San Giuseppe
        Date(1975, 3, 30), # Pasqua di Resurrezione
        Date(1975, 3, 31), # Lunedì dell'Angelo
        Date(1975, 4, 25), # Festa della Liberazione
        Date(1975, 5, 1), # Festa dei Lavoratori
        Date(1975, 5, 8), # Ascensione Nostro Signore
        Date(1975, 5, 29), # Corpus Domini
        Date(1975, 6, 2), # Festa della Repubblica
        Date(1975, 6, 29), # Santi Pietro e Paolo
        Date(1975, 8, 15), # Assunzione della Vergine
        Date(1975, 11, 1), # Tutti i Santi
        Date(1975, 11, 4), # Giornata dell'Unità Nazionale e delle Forze Armate
        Date(1975, 12, 8), # Immacolata Concezione
        Date(1975, 12, 25), # Natale
        Date(1975, 12, 26), # Santo Stefano
        Date(1976, 1, 1), # Capodanno
        Date(1976, 1, 6), # Epifania del Signore
        Date(1976, 3, 19), # San Giuseppe
        Date(1976, 4, 18), # Pasqua di Resurrezione
        Date(1976, 4, 19), # Lunedì dell'Angelo
        Date(1976, 4, 25), # Festa della Liberazione
        Date(1976, 5, 1), # Festa dei Lavoratori
        Date(1976, 5, 27), # Ascensione Nostro Signore
        Date(1976, 6, 2), # Festa della Repubblica
        Date(1976, 6, 17), # Corpus Domini
        Date(1976, 6, 29), # Santi Pietro e Paolo
        Date(1976, 8, 15), # Assunzione della Vergine
        Date(1976, 11, 1), # Tutti i Santi
        Date(1976, 11, 4), # Giornata dell'Unità Nazionale e delle Forze Armate
        Date(1976, 12, 8), # Immacolata Concezione
        Date(1976, 12, 25), # Natale
        Date(1976, 12, 26), # Santo Stefano
        Date(1977, 1, 1), # Capodanno
        Date(1977, 1, 6), # Epifania del Signore
        Date(1977, 4, 10), # Pasqua di Resurrezione
        Date(1977, 4, 11), # Lunedì dell'Angelo
        Date(1977, 4, 25), # Festa della Liberazione
        Date(1977, 5, 1), # Festa dei Lavoratori
        Date(1977, 6, 2), # Festa della Repubblica
        Date(1977, 8, 15), # Assunzione della Vergine
        Date(1977, 11, 1), # Tutti i Santi
        Date(1977, 12, 8), # Immacolata Concezione
        Date(1977, 12, 25), # Natale
        Date(1977, 12, 26), # Santo Stefano
        Date(1978, 1, 1), # Capodanno
        Date(1978, 1, 6), # Epifania del Signore
        Date(1978, 3, 26), # Pasqua di Resurrezione
        Date(1978, 3, 27), # Lunedì dell'Angelo
        Date(1978, 4, 25), # Festa della Liberazione
        Date(1978, 5, 1), # Festa dei Lavoratori
        Date(1978, 6, 2), # Festa della Repubblica
        Date(1978, 8, 15), # Assunzione della Vergine
        Date(1978, 11, 1), # Tutti i Santi
        Date(1978, 12, 8), # Immacolata Concezione
        Date(1978, 12, 25), # Natale
        Date(1978, 12, 26), # Santo Stefano
        Date(1979, 1, 1), # Capodanno
        Date(1979, 1, 6), # Epifania del Signore
        Date(1979, 4, 15), # Pasqua di Resurrezione
        Date(1979, 4, 16), # Lunedì dell'Angelo
        Date(1979, 4, 25), # Festa della Liberazione
        Date(1979, 5, 1), # Festa dei Lavoratori
        Date(1979, 6, 2), # Festa della Repubblica
        Date(1979, 8, 15), # Assunzione della Vergine
        Date(1979, 11, 1), # Tutti i Santi
        Date(1979, 12, 8), # Immacolata Concezione
        Date(1979, 12, 25), # Natale
        Date(1979, 12, 26), # Santo Stefano
        Date(1980, 1, 1), # Capodanno
        Date(1980, 1, 6), # Epifania del Signore
        Date(1980, 4, 6), # Pasqua di Resurrezione
        Date(1980, 4, 7), # Lunedì dell'Angelo
        Date(1980, 4, 25), # Festa della Liberazione
        Date(1980, 5, 1), # Festa dei Lavoratori
        Date(1980, 6, 2), # Festa della Repubblica
        Date(1980, 8, 15), # Assunzione della Vergine
        Date(1980, 11, 1), # Tutti i Santi
        Date(1980, 12, 8), # Immacolata Concezione
        Date(1980, 12, 25), # Natale
        Date(1980, 12, 26), # Santo Stefano
        Date(1981, 1, 1), # Capodanno
        Date(1981, 1, 6), # Epifania del Signore
        Date(1981, 4, 19), # Pasqua di Resurrezione
        Date(1981, 4, 20), # Lunedì dell'Angelo
        Date(1981, 4, 25), # Festa della Liberazione
        Date(1981, 5, 1), # Festa dei Lavoratori
        Date(1981, 6, 2), # Festa della Repubblica
        Date(1981, 8, 15), # Assunzione della Vergine
        Date(1981, 11, 1), # Tutti i Santi
        Date(1981, 12, 8), # Immacolata Concezione
        Date(1981, 12, 25), # Natale
        Date(1981, 12, 26), # Santo Stefano
        Date(1982, 1, 1), # Capodanno
        Date(1982, 1, 6), # Epifania del Signore
        Date(1982, 4, 11), # Pasqua di Resurrezione
        Date(1982, 4, 12), # Lunedì dell'Angelo
        Date(1982, 4, 25), # Festa della Liberazione
        Date(1982, 5, 1), # Festa dei Lavoratori
        Date(1982, 6, 2), # Festa della Repubblica
        Date(1982, 8, 15), # Assunzione della Vergine
        Date(1982, 11, 1), # Tutti i Santi
        Date(1982, 12, 8), # Immacolata Concezione
        Date(1982, 12, 25), # Natale
        Date(1982, 12, 26), # Santo Stefano
        Date(1983, 1, 1), # Capodanno
        Date(1983, 1, 6), # Epifania del Signore
        Date(1983, 4, 3), # Pasqua di Resurrezione
        Date(1983, 4, 4), # Lunedì dell'Angelo
        Date(1983, 4, 25), # Festa della Liberazione
        Date(1983, 5, 1), # Festa dei Lavoratori
        Date(1983, 6, 2), # Festa della Repubblica
        Date(1983, 8, 15), # Assunzione della Vergine
        Date(1983, 11, 1), # Tutti i Santi
        Date(1983, 12, 8), # Immacolata Concezione
        Date(1983, 12, 25), # Natale
        Date(1983, 12, 26), # Santo Stefano
        Date(1984, 1, 1), # Capodanno
        Date(1984, 1, 6), # Epifania del Signore
        Date(1984, 4, 22), # Pasqua di Resurrezione
        Date(1984, 4, 23), # Lunedì dell'Angelo
        Date(1984, 4, 25), # Festa della Liberazione
        Date(1984, 5, 1), # Festa dei Lavoratori
        Date(1984, 6, 2), # Festa della Repubblica
        Date(1984, 8, 15), # Assunzione della Vergine
        Date(1984, 11, 1), # Tutti i Santi
        Date(1984, 12, 8), # Immacolata Concezione
        Date(1984, 12, 25), # Natale
        Date(1984, 12, 26), # Santo Stefano
        Date(1985, 1, 1), # Capodanno
        Date(1985, 1, 6), # Epifania del Signore
        Date(1985, 4, 7), # Pasqua di Resurrezione
        Date(1985, 4, 8), # Lunedì dell'Angelo
        Date(1985, 4, 25), # Festa della Liberazione
        Date(1985, 5, 1), # Festa dei Lavoratori
        Date(1985, 6, 2), # Festa della Repubblica
        Date(1985, 8, 15), # Assunzione della Vergine
        Date(1985, 11, 1), # Tutti i Santi
        Date(1985, 12, 8), # Immacolata Concezione
        Date(1985, 12, 25), # Natale
        Date(1985, 12, 26), # Santo Stefano
        Date(1986, 1, 1), # Capodanno
        Date(1986, 1, 6), # Epifania del Signore
        Date(1986, 3, 30), # Pasqua di Resurrezione
        Date(1986, 3, 31), # Lunedì dell'Angelo
        Date(1986, 4, 25), # Festa della Liberazione
        Date(1986, 5, 1), # Festa dei Lavoratori
        Date(1986, 6, 2), # Festa della Repubblica
        Date(1986, 8, 15), # Assunzione della Vergine
        Date(1986, 11, 1), # Tutti i Santi
        Date(1986, 12, 8), # Immacolata Concezione
        Date(1986, 12, 25), # Natale
        Date(1986, 12, 26), # Santo Stefano
        Date(1987, 1, 1), # Capodanno
        Date(1987, 1, 6), # Epifania del Signore
        Date(1987, 4, 19), # Pasqua di Resurrezione
        Date(1987, 4, 20), # Lunedì dell'Angelo
        Date(1987, 4, 25), # Festa della Liberazione
        Date(1987, 5, 1), # Festa dei Lavoratori
        Date(1987, 6, 2), # Festa della Repubblica
        Date(1987, 8, 15), # Assunzione della Vergine
        Date(1987, 11, 1), # Tutti i Santi
        Date(1987, 12, 8), # Immacolata Concezione
        Date(1987, 12, 25), # Natale
        Date(1987, 12, 26), # Santo Stefano
        Date(1988, 1, 1), # Capodanno
        Date(1988, 1, 6), # Epifania del Signore
        Date(1988, 4, 3), # Pasqua di Resurrezione
        Date(1988, 4, 4), # Lunedì dell'Angelo
        Date(1988, 4, 25), # Festa della Liberazione
        Date(1988, 5, 1), # Festa dei Lavoratori
        Date(1988, 6, 2), # Festa della Repubblica
        Date(1988, 8, 15), # Assunzione della Vergine
        Date(1988, 11, 1), # Tutti i Santi
        Date(1988, 12, 8), # Immacolata Concezione
        Date(1988, 12, 25), # Natale
        Date(1988, 12, 26), # Santo Stefano
        Date(1989, 1, 1), # Capodanno
        Date(1989, 1, 6), # Epifania del Signore
        Date(1989, 3, 26), # Pasqua di Resurrezione
        Date(1989, 3, 27), # Lunedì dell'Angelo
        Date(1989, 4, 25), # Festa della Liberazione
        Date(1989, 5, 1), # Festa dei Lavoratori
        Date(1989, 6, 2), # Festa della Repubblica
        Date(1989, 8, 15), # Assunzione della Vergine
        Date(1989, 11, 1), # Tutti i Santi
        Date(1989, 12, 8), # Immacolata Concezione
        Date(1989, 12, 25), # Natale
        Date(1989, 12, 26), # Santo Stefano
        Date(1990, 1, 1), # Capodanno
        Date(1990, 1, 6), # Epifania del Signore
        Date(1990, 4, 15), # Pasqua di Resurrezione
        Date(1990, 4, 16), # Lunedì dell'Angelo
        Date(1990, 4, 25), # Festa della Liberazione
        Date(1990, 5, 1), # Festa dei Lavoratori
        Date(1990, 6, 2), # Festa della Repubblica
        Date(1990, 8, 15), # Assunzione della Vergine
        Date(1990, 11, 1), # Tutti i Santi
        Date(1990, 12, 8), # Immacolata Concezione
        Date(1990, 12, 25), # Natale
        Date(1990, 12, 26), # Santo Stefano
        Date(1991, 1, 1), # Capodanno
        Date(1991, 1, 6), # Epifania del Signore
        Date(1991, 3, 31), # Pasqua di Resurrezione
        Date(1991, 4, 1), # Lunedì dell'Angelo
        Date(1991, 4, 25), # Festa della Liberazione
        Date(1991, 5, 1), # Festa dei Lavoratori
        Date(1991, 6, 2), # Festa della Repubblica
        Date(1991, 8, 15), # Assunzione della Vergine
        Date(1991, 11, 1), # Tutti i Santi
        Date(1991, 12, 8), # Immacolata Concezione
        Date(1991, 12, 25), # Natale
        Date(1991, 12, 26), # Santo Stefano
        Date(1992, 1, 1), # Capodanno
        Date(1992, 1, 6), # Epifania del Signore
        Date(1992, 4, 19), # Pasqua di Resurrezione
        Date(1992, 4, 20), # Lunedì dell'Angelo
        Date(1992, 4, 25), # Festa della Liberazione
        Date(1992, 5, 1), # Festa dei Lavoratori
        Date(1992, 6, 2), # Festa della Repubblica
        Date(1992, 8, 15), # Assunzione della Vergine
        Date(1992, 11, 1), # Tutti i Santi
        Date(1992, 12, 8), # Immacolata Concezione
        Date(1992, 12, 25), # Natale
        Date(1992, 12, 26), # Santo Stefano
        Date(1993, 1, 1), # Capodanno
        Date(1993, 1, 6), # Epifania del Signore
        Date(1993, 4, 11), # Pasqua di Resurrezione
        Date(1993, 4, 12), # Lunedì dell'Angelo
        Date(1993, 4, 25), # Festa della Liberazione
        Date(1993, 5, 1), # Festa dei Lavoratori
        Date(1993, 6, 2), # Festa della Repubblica
        Date(1993, 8, 15), # Assunzione della Vergine
        Date(1993, 11, 1), # Tutti i Santi
        Date(1993, 12, 8), # Immacolata Concezione
        Date(1993, 12, 25), # Natale
        Date(1993, 12, 26), # Santo Stefano
        Date(1994, 1, 1), # Capodanno
        Date(1994, 1, 6), # Epifania del Signore
        Date(1994, 4, 3), # Pasqua di Resurrezione
        Date(1994, 4, 4), # Lunedì dell'Angelo
        Date(1994, 4, 25), # Festa della Liberazione
        Date(1994, 5, 1), # Festa dei Lavoratori
        Date(1994, 6, 2), # Festa della Repubblica
        Date(1994, 8, 15), # Assunzione della Vergine
        Date(1994, 11, 1), # Tutti i Santi
        Date(1994, 12, 8), # Immacolata Concezione
        Date(1994, 12, 25), # Natale
        Date(1994, 12, 26), # Santo Stefano
        Date(1995, 1, 1), # Capodanno
        Date(1995, 1, 6), # Epifania del Signore
        Date(1995, 4, 16), # Pasqua di Resurrezione
        Date(1995, 4, 17), # Lunedì dell'Angelo
        Date(1995, 4, 25), # Festa della Liberazione
        Date(1995, 5, 1), # Festa dei Lavoratori
        Date(1995, 6, 2), # Festa della Repubblica
        Date(1995, 8, 15), # Assunzione della Vergine
        Date(1995, 11, 1), # Tutti i Santi
        Date(1995, 12, 8), # Immacolata Concezione
        Date(1995, 12, 25), # Natale
        Date(1995, 12, 26), # Santo Stefano
        Date(1996, 1, 1), # Capodanno
        Date(1996, 1, 6), # Epifania del Signore
        Date(1996, 4, 7), # Pasqua di Resurrezione
        Date(1996, 4, 8), # Lunedì dell'Angelo
        Date(1996, 4, 25), # Festa della Liberazione
        Date(1996, 5, 1), # Festa dei Lavoratori
        Date(1996, 6, 2), # Festa della Repubblica
        Date(1996, 8, 15), # Assunzione della Vergine
        Date(1996, 11, 1), # Tutti i Santi
        Date(1996, 12, 8), # Immacolata Concezione
        Date(1996, 12, 25), # Natale
        Date(1996, 12, 26), # Santo Stefano
        Date(1997, 1, 1), # Capodanno
        Date(1997, 1, 6), # Epifania del Signore
        Date(1997, 3, 30), # Pasqua di Resurrezione
        Date(1997, 3, 31), # Lunedì dell'Angelo
        Date(1997, 4, 25), # Festa della Liberazione
        Date(1997, 5, 1), # Festa dei Lavoratori
        Date(1997, 6, 2), # Festa della Repubblica
        Date(1997, 8, 15), # Assunzione della Vergine
        Date(1997, 11, 1), # Tutti i Santi
        Date(1997, 12, 8), # Immacolata Concezione
        Date(1997, 12, 25), # Natale
        Date(1997, 12, 26), # Santo Stefano
        Date(1998, 1, 1), # Capodanno
        Date(1998, 1, 6), # Epifania del Signore
        Date(1998, 4, 12), # Pasqua di Resurrezione
        Date(1998, 4, 13), # Lunedì dell'Angelo
        Date(1998, 4, 25), # Festa della Liberazione
        Date(1998, 5, 1), # Festa dei Lavoratori
        Date(1998, 6, 2), # Festa della Repubblica
        Date(1998, 8, 15), # Assunzione della Vergine
        Date(1998, 11, 1), # Tutti i Santi
        Date(1998, 12, 8), # Immacolata Concezione
        Date(1998, 12, 25), # Natale
        Date(1998, 12, 26), # Santo Stefano
        Date(1999, 1, 1), # Capodanno
        Date(1999, 1, 6), # Epifania del Signore
        Date(1999, 4, 4), # Pasqua di Resurrezione
        Date(1999, 4, 5), # Lunedì dell'Angelo
        Date(1999, 4, 25), # Festa della Liberazione
        Date(1999, 5, 1), # Festa dei Lavoratori
        Date(1999, 6, 2), # Festa della Repubblica
        Date(1999, 8, 15), # Assunzione della Vergine
        Date(1999, 11, 1), # Tutti i Santi
        Date(1999, 12, 8), # Immacolata Concezione
        Date(1999, 12, 25), # Natale
        Date(1999, 12, 26), # Santo Stefano
        Date(2000, 1, 1), # Capodanno
        Date(2000, 1, 6), # Epifania del Signore
        Date(2000, 4, 23), # Pasqua di Resurrezione
        Date(2000, 4, 24), # Lunedì dell'Angelo
        Date(2000, 4, 25), # Festa della Liberazione
        Date(2000, 5, 1), # Festa dei Lavoratori
        Date(2000, 6, 2), # Festa della Repubblica
        Date(2000, 8, 15), # Assunzione della Vergine
        Date(2000, 11, 1), # Tutti i Santi
        Date(2000, 12, 8), # Immacolata Concezione
        Date(2000, 12, 25), # Natale
        Date(2000, 12, 26), # Santo Stefano
        Date(2001, 1, 1), # Capodanno
        Date(2001, 1, 6), # Epifania del Signore
        Date(2001, 4, 15), # Pasqua di Resurrezione
        Date(2001, 4, 16), # Lunedì dell'Angelo
        Date(2001, 4, 25), # Festa della Liberazione
        Date(2001, 5, 1), # Festa dei Lavoratori
        Date(2001, 6, 2), # Festa della Repubblica
        Date(2001, 8, 15), # Assunzione della Vergine
        Date(2001, 11, 1), # Tutti i Santi
        Date(2001, 12, 8), # Immacolata Concezione
        Date(2001, 12, 25), # Natale
        Date(2001, 12, 26), # Santo Stefano
        Date(2002, 1, 1), # Capodanno
        Date(2002, 1, 6), # Epifania del Signore
        Date(2002, 3, 31), # Pasqua di Resurrezione
        Date(2002, 4, 1), # Lunedì dell'Angelo
        Date(2002, 4, 25), # Festa della Liberazione
        Date(2002, 5, 1), # Festa dei Lavoratori
        Date(2002, 6, 2), # Festa della Repubblica
        Date(2002, 8, 15), # Assunzione della Vergine
        Date(2002, 11, 1), # Tutti i Santi
        Date(2002, 12, 8), # Immacolata Concezione
        Date(2002, 12, 25), # Natale
        Date(2002, 12, 26), # Santo Stefano
        Date(2003, 1, 1), # Capodanno
        Date(2003, 1, 6), # Epifania del Signore
        Date(2003, 4, 20), # Pasqua di Resurrezione
        Date(2003, 4, 21), # Lunedì dell'Angelo
        Date(2003, 4, 25), # Festa della Liberazione
        Date(2003, 5, 1), # Festa dei Lavoratori
        Date(2003, 6, 2), # Festa della Repubblica
        Date(2003, 8, 15), # Assunzione della Vergine
        Date(2003, 11, 1), # Tutti i Santi
        Date(2003, 12, 8), # Immacolata Concezione
        Date(2003, 12, 25), # Natale
        Date(2003, 12, 26), # Santo Stefano
        Date(2004, 1, 1), # Capodanno
        Date(2004, 1, 6), # Epifania del Signore
        Date(2004, 4, 11), # Pasqua di Resurrezione
        Date(2004, 4, 12), # Lunedì dell'Angelo
        Date(2004, 4, 25), # Festa della Liberazione
        Date(2004, 5, 1), # Festa dei Lavoratori
        Date(2004, 6, 2), # Festa della Repubblica
        Date(2004, 8, 15), # Assunzione della Vergine
        Date(2004, 11, 1), # Tutti i Santi
        Date(2004, 12, 8), # Immacolata Concezione
        Date(2004, 12, 25), # Natale
        Date(2004, 12, 26), # Santo Stefano
        Date(2005, 1, 1), # Capodanno
        Date(2005, 1, 6), # Epifania del Signore
        Date(2005, 3, 27), # Pasqua di Resurrezione
        Date(2005, 3, 28), # Lunedì dell'Angelo
        Date(2005, 4, 25), # Festa della Liberazione
        Date(2005, 5, 1), # Festa dei Lavoratori
        Date(2005, 6, 2), # Festa della Repubblica
        Date(2005, 8, 15), # Assunzione della Vergine
        Date(2005, 11, 1), # Tutti i Santi
        Date(2005, 12, 8), # Immacolata Concezione
        Date(2005, 12, 25), # Natale
        Date(2005, 12, 26), # Santo Stefano
        Date(2006, 1, 1), # Capodanno
        Date(2006, 1, 6), # Epifania del Signore
        Date(2006, 4, 16), # Pasqua di Resurrezione
        Date(2006, 4, 17), # Lunedì dell'Angelo
        Date(2006, 4, 25), # Festa della Liberazione
        Date(2006, 5, 1), # Festa dei Lavoratori
        Date(2006, 6, 2), # Festa della Repubblica
        Date(2006, 8, 15), # Assunzione della Vergine
        Date(2006, 11, 1), # Tutti i Santi
        Date(2006, 12, 8), # Immacolata Concezione
        Date(2006, 12, 25), # Natale
        Date(2006, 12, 26), # Santo Stefano
        Date(2007, 1, 1), # Capodanno
        Date(2007, 1, 6), # Epifania del Signore
        Date(2007, 4, 8), # Pasqua di Resurrezione
        Date(2007, 4, 9), # Lunedì dell'Angelo
        Date(2007, 4, 25), # Festa della Liberazione
        Date(2007, 5, 1), # Festa dei Lavoratori
        Date(2007, 6, 2), # Festa della Repubblica
        Date(2007, 8, 15), # Assunzione della Vergine
        Date(2007, 11, 1), # Tutti i Santi
        Date(2007, 12, 8), # Immacolata Concezione
        Date(2007, 12, 25), # Natale
        Date(2007, 12, 26), # Santo Stefano
        Date(2008, 1, 1), # Capodanno
        Date(2008, 1, 6), # Epifania del Signore
        Date(2008, 3, 23), # Pasqua di Resurrezione
        Date(2008, 3, 24), # Lunedì dell'Angelo
        Date(2008, 4, 25), # Festa della Liberazione
        Date(2008, 5, 1), # Festa dei Lavoratori
        Date(2008, 6, 2), # Festa della Repubblica
        Date(2008, 8, 15), # Assunzione della Vergine
        Date(2008, 11, 1), # Tutti i Santi
        Date(2008, 12, 8), # Immacolata Concezione
        Date(2008, 12, 25), # Natale
        Date(2008, 12, 26), # Santo Stefano
        Date(2009, 1, 1), # Capodanno
        Date(2009, 1, 6), # Epifania del Signore
        Date(2009, 4, 12), # Pasqua di Resurrezione
        Date(2009, 4, 13), # Lunedì dell'Angelo
        Date(2009, 4, 25), # Festa della Liberazione
        Date(2009, 5, 1), # Festa dei Lavoratori
        Date(2009, 6, 2), # Festa della Repubblica
        Date(2009, 8, 15), # Assunzione della Vergine
        Date(2009, 11, 1), # Tutti i Santi
        Date(2009, 12, 8), # Immacolata Concezione
        Date(2009, 12, 25), # Natale
        Date(2009, 12, 26), # Santo Stefano
        Date(2010, 1, 1), # Capodanno
        Date(2010, 1, 6), # Epifania del Signore
        Date(2010, 4, 4), # Pasqua di Resurrezione
        Date(2010, 4, 5), # Lunedì dell'Angelo
        Date(2010, 4, 25), # Festa della Liberazione
        Date(2010, 5, 1), # Festa dei Lavoratori
        Date(2010, 6, 2), # Festa della Repubblica
        Date(2010, 8, 15), # Assunzione della Vergine
        Date(2010, 11, 1), # Tutti i Santi
        Date(2010, 12, 8), # Immacolata Concezione
        Date(2010, 12, 25), # Natale
        Date(2010, 12, 26), # Santo Stefano
        Date(2011, 1, 1), # Capodanno
        Date(2011, 1, 6), # Epifania del Signore
        Date(2011, 3, 17), # Anniversario dell'Unità d'Italia
        Date(2011, 4, 24), # Pasqua di Resurrezione
        Date(2011, 4, 25), # Festa della Liberazione; Lunedì dell'Angelo
        Date(2011, 5, 1), # Festa dei Lavoratori
        Date(2011, 6, 2), # Festa della Repubblica
        Date(2011, 8, 15), # Assunzione della Vergine
        Date(2011, 11, 1), # Tutti i Santi
        Date(2011, 12, 8), # Immacolata Concezione
        Date(2011, 12, 25), # Natale
        Date(2011, 12, 26), # Santo Stefano
        Date(2012, 1, 1), # Capodanno
        Date(2012, 1, 6), # Epifania del Signore
        Date(2012, 4, 8), # Pasqua di Resurrezione
        Date(2012, 4, 9), # Lunedì dell'Angelo
        Date(2012, 4, 25), # Festa della Liberazione
        Date(2012, 5, 1), # Festa dei Lavoratori
        Date(2012, 6, 2), # Festa della Repubblica
        Date(2012, 8, 15), # Assunzione della Vergine
        Date(2012, 11, 1), # Tutti i Santi
        Date(2012, 12, 8), # Immacolata Concezione
        Date(2012, 12, 25), # Natale
        Date(2012, 12, 26), # Santo Stefano
        Date(2013, 1, 1), # Capodanno
        Date(2013, 1, 6), # Epifania del Signore
        Date(2013, 3, 31), # Pasqua di Resurrezione
        Date(2013, 4, 1), # Lunedì dell'Angelo
        Date(2013, 4, 25), # Festa della Liberazione
        Date(2013, 5, 1), # Festa dei Lavoratori
        Date(2013, 6, 2), # Festa della Repubblica
        Date(2013, 8, 15), # Assunzione della Vergine
        Date(2013, 11, 1), # Tutti i Santi
        Date(2013, 12, 8), # Immacolata Concezione
        Date(2013, 12, 25), # Natale
        Date(2013, 12, 26), # Santo Stefano
        Date(2014, 1, 1), # Capodanno
        Date(2014, 1, 6), # Epifania del Signore
        Date(2014, 4, 20), # Pasqua di Resurrezione
        Date(2014, 4, 21), # Lunedì dell'Angelo
        Date(2014, 4, 25), # Festa della Liberazione
        Date(2014, 5, 1), # Festa dei Lavoratori
        Date(2014, 6, 2), # Festa della Repubblica
        Date(2014, 8, 15), # Assunzione della Vergine
        Date(2014, 11, 1), # Tutti i Santi
        Date(2014, 12, 8), # Immacolata Concezione
        Date(2014, 12, 25), # Natale
        Date(2014, 12, 26), # Santo Stefano
        Date(2015, 1, 1), # Capodanno
        Date(2015, 1, 6), # Epifania del Signore
        Date(2015, 4, 5), # Pasqua di Resurrezione
        Date(2015, 4, 6), # Lunedì dell'Angelo
        Date(2015, 4, 25), # Festa della Liberazione
        Date(2015, 5, 1), # Festa dei Lavoratori
        Date(2015, 6, 2), # Festa della Repubblica
        Date(2015, 8, 15), # Assunzione della Vergine
        Date(2015, 11, 1), # Tutti i Santi
        Date(2015, 12, 8), # Immacolata Concezione
        Date(2015, 12, 25), # Natale
        Date(2015, 12, 26), # Santo Stefano
        Date(2016, 1, 1), # Capodanno
        Date(2016, 1, 6), # Epifania del Signore
        Date(2016, 3, 27), # Pasqua di Resurrezione
        Date(2016, 3, 28), # Lunedì dell'Angelo
        Date(2016, 4, 25), # Festa della Liberazione
        Date(2016, 5, 1), # Festa dei Lavoratori
        Date(2016, 6, 2), # Festa della Repubblica
        Date(2016, 8, 15), # Assunzione della Vergine
        Date(2016, 11, 1), # Tutti i Santi
        Date(2016, 12, 8), # Immacolata Concezione
        Date(2016, 12, 25), # Natale
        Date(2016, 12, 26), # Santo Stefano
        Date(2017, 1, 1), # Capodanno
        Date(2017, 1, 6), # Epifania del Signore
        Date(2017, 4, 16), # Pasqua di Resurrezione
        Date(2017, 4, 17), # Lunedì dell'Angelo
        Date(2017, 4, 25), # Festa della Liberazione
        Date(2017, 5, 1), # Festa dei Lavoratori
        Date(2017, 6, 2), # Festa della Repubblica
        Date(2017, 8, 15), # Assunzione della Vergine
        Date(2017, 11, 1), # Tutti i Santi
        Date(2017, 12, 8), # Immacolata Concezione
        Date(2017, 12, 25), # Natale
        Date(2017, 12, 26), # Santo Stefano
        Date(2018, 1, 1), # Capodanno
        Date(2018, 1, 6), # Epifania del Signore
        Date(2018, 4, 1), # Pasqua di Resurrezione
        Date(2018, 4, 2), # Lunedì dell'Angelo
        Date(2018, 4, 25), # Festa della Liberazione
        Date(2018, 5, 1), # Festa dei Lavoratori
        Date(2018, 6, 2), # Festa della Repubblica
        Date(2018, 8, 15), # Assunzione della Vergine
        Date(2018, 11, 1), # Tutti i Santi
        Date(2018, 12, 8), # Immacolata Concezione
        Date(2018, 12, 25), # Natale
        Date(2018, 12, 26), # Santo Stefano
        Date(2019, 1, 1), # Capodanno
        Date(2019, 1, 6), # Epifania del Signore
        Date(2019, 4, 21), # Pasqua di Resurrezione
        Date(2019, 4, 22), # Lunedì dell'Angelo
        Date(2019, 4, 25), # Festa della Liberazione
        Date(2019, 5, 1), # Festa dei Lavoratori
        Date(2019, 6, 2), # Festa della Repubblica
        Date(2019, 8, 15), # Assunzione della Vergine
        Date(2019, 11, 1), # Tutti i Santi
        Date(2019, 12, 8), # Immacolata Concezione
        Date(2019, 12, 25), # Natale
        Date(2019, 12, 26), # Santo Stefano
        Date(2020, 1, 1), # Capodanno
        Date(2020, 1, 6), # Epifania del Signore
        Date(2020, 4, 12), # Pasqua di Resurrezione
        Date(2020, 4, 13), # Lunedì dell'Angelo
        Date(2020, 4, 25), # Festa della Liberazione
        Date(2020, 5, 1), # Festa dei Lavoratori
        Date(2020, 6, 2), # Festa della Repubblica
        Date(2020, 8, 15), # Assunzione della Vergine
        Date(2020, 11, 1), # Tutti i Santi
        Date(2020, 12, 8), # Immacolata Concezione
        Date(2020, 12, 25), # Natale
        Date(2020, 12, 26), # Santo Stefano
        Date(2021, 1, 1), # Capodanno
        Date(2021, 1, 6), # Epifania del Signore
        Date(2021, 4, 4), # Pasqua di Resurrezione
        Date(2021, 4, 5), # Lunedì dell'Angelo
        Date(2021, 4, 25), # Festa della Liberazione
        Date(2021, 5, 1), # Festa dei Lavoratori
        Date(2021, 6, 2), # Festa della Repubblica
        Date(2021, 8, 15), # Assunzione della Vergine
        Date(2021, 11, 1), # Tutti i Santi
        Date(2021, 12, 8), # Immacolata Concezione
        Date(2021, 12, 25), # Natale
        Date(2021, 12, 26), # Santo Stefano
        Date(2022, 1, 1), # Capodanno
        Date(2022, 1, 6), # Epifania del Signore
        Date(2022, 4, 17), # Pasqua di Resurrezione
        Date(2022, 4, 18), # Lunedì dell'Angelo
        Date(2022, 4, 25), # Festa della Liberazione
        Date(2022, 5, 1), # Festa dei Lavoratori
        Date(2022, 6, 2), # Festa della Repubblica
        Date(2022, 8, 15), # Assunzione della Vergine
        Date(2022, 11, 1), # Tutti i Santi
        Date(2022, 12, 8), # Immacolata Concezione
        Date(2022, 12, 25), # Natale
        Date(2022, 12, 26), # Santo Stefano
        Date(2023, 1, 1), # Capodanno
        Date(2023, 1, 6), # Epifania del Signore
        Date(2023, 4, 9), # Pasqua di Resurrezione
        Date(2023, 4, 10), # Lunedì dell'Angelo
        Date(2023, 4, 25), # Festa della Liberazione
        Date(2023, 5, 1), # Festa dei Lavoratori
        Date(2023, 6, 2), # Festa della Repubblica
        Date(2023, 8, 15), # Assunzione della Vergine
        Date(2023, 11, 1), # Tutti i Santi
        Date(2023, 12, 8), # Immacolata Concezione
        Date(2023, 12, 25), # Natale
        Date(2023, 12, 26), # Santo Stefano
        Date(2024, 1, 1), # Capodanno
        Date(2024, 1, 6), # Epifania del Signore
        Date(2024, 3, 31), # Pasqua di Resurrezione
        Date(2024, 4, 1), # Lunedì dell'Angelo
        Date(2024, 4, 25), # Festa della Liberazione
        Date(2024, 5, 1), # Festa dei Lavoratori
        Date(2024, 6, 2), # Festa della Repubblica
        Date(2024, 8, 15), # Assunzione della Vergine
        Date(2024, 11, 1), # Tutti i Santi
        Date(2024, 12, 8), # Immacolata Concezione
        Date(2024, 12, 25), # Natale
        Date(2024, 12, 26), # Santo Stefano
        Date(2025, 1, 1), # Capodanno
        Date(2025, 1, 6), # Epifania del Signore
        Date(2025, 4, 20), # Pasqua di Resurrezione
        Date(2025, 4, 21), # Lunedì dell'Angelo
        Date(2025, 4, 25), # Festa della Liberazione
        Date(2025, 5, 1), # Festa dei Lavoratori
        Date(2025, 6, 2), # Festa della Repubblica
        Date(2025, 8, 15), # Assunzione della Vergine
        Date(2025, 11, 1), # Tutti i Santi
        Date(2025, 12, 8), # Immacolata Concezione
        Date(2025, 12, 25), # Natale
        Date(2025, 12, 26), # Santo Stefano
        Date(2026, 1, 1), # Capodanno
        Date(2026, 1, 6), # Epifania del Signore
        Date(2026, 4, 5), # Pasqua di Resurrezione
        Date(2026, 4, 6), # Lunedì dell'Angelo
        Date(2026, 4, 25), # Festa della Liberazione
        Date(2026, 5, 1), # Festa dei Lavoratori
        Date(2026, 6, 2), # Festa della Repubblica
        Date(2026, 8, 15), # Assunzione della Vergine
        Date(2026, 11, 1), # Tutti i Santi
        Date(2026, 12, 8), # Immacolata Concezione
        Date(2026, 12, 25), # Natale
        Date(2026, 12, 26), # Santo Stefano
        Date(2027, 1, 1), # Capodanno
        Date(2027, 1, 6), # Epifania del Signore
        Date(2027, 3, 28), # Pasqua di Resurrezione
        Date(2027, 3, 29), # Lunedì dell'Angelo
        Date(2027, 4, 25), # Festa della Liberazione
        Date(2027, 5, 1), # Festa dei Lavoratori
        Date(2027, 6, 2), # Festa della Repubblica
        Date(2027, 8, 15), # Assunzione della Vergine
        Date(2027, 11, 1), # Tutti i Santi
        Date(2027, 12, 8), # Immacolata Concezione
        Date(2027, 12, 25), # Natale
        Date(2027, 12, 26), # Santo Stefano
        Date(2028, 1, 1), # Capodanno
        Date(2028, 1, 6), # Epifania del Signore
        Date(2028, 4, 16), # Pasqua di Resurrezione
        Date(2028, 4, 17), # Lunedì dell'Angelo
        Date(2028, 4, 25), # Festa della Liberazione
        Date(2028, 5, 1), # Festa dei Lavoratori
        Date(2028, 6, 2), # Festa della Repubblica
        Date(2028, 8, 15), # Assunzione della Vergine
        Date(2028, 11, 1), # Tutti i Santi
        Date(2028, 12, 8), # Immacolata Concezione
        Date(2028, 12, 25), # Natale
        Date(2028, 12, 26), # Santo Stefano
        Date(2029, 1, 1), # Capodanno
        Date(2029, 1, 6), # Epifania del Signore
        Date(2029, 4, 1), # Pasqua di Resurrezione
        Date(2029, 4, 2), # Lunedì dell'Angelo
        Date(2029, 4, 25), # Festa della Liberazione
        Date(2029, 5, 1), # Festa dei Lavoratori
        Date(2029, 6, 2), # Festa della Repubblica
        Date(2029, 8, 15), # Assunzione della Vergine
        Date(2029, 11, 1), # Tutti i Santi
        Date(2029, 12, 8), # Immacolata Concezione
        Date(2029, 12, 25), # Natale
        Date(2029, 12, 26), # Santo Stefano
        Date(2030, 1, 1), # Capodanno
        Date(2030, 1, 6), # Epifania del Signore
        Date(2030, 4, 21), # Pasqua di Resurrezione
        Date(2030, 4, 22), # Lunedì dell'Angelo
        Date(2030, 4, 25), # Festa della Liberazione
        Date(2030, 5, 1), # Festa dei Lavoratori
        Date(2030, 6, 2), # Festa della Repubblica
        Date(2030, 8, 15), # Assunzione della Vergine
        Date(2030, 11, 1), # Tutti i Santi
        Date(2030, 12, 8), # Immacolata Concezione
        Date(2030, 12, 25), # Natale
        Date(2030, 12, 26), # Santo Stefano
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
