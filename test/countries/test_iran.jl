module TestIran

using Dates
using Holidays
using Test

include("../util.jl")

@testset "Iran" begin
    calendar = Holidays.Iran()

    holidays = Date[
        Date(1980, 1, 8), # Arbaeen (estimated)
        Date(1980, 1, 16), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali (estimated)
        Date(1980, 1, 18), # Martyrdom of Ali al-Rida (estimated)
        Date(1980, 1, 26), # Martyrdom of Hasan al-Askari (estimated)
        Date(1980, 2, 4), # Birthday of Muhammad and Imam Ja'far al-Sadiq (estimated)
        Date(1980, 2, 11), # Islamic Revolution Day
        Date(1980, 3, 19), # Iranian Oil Industry Nationalization Day
        Date(1980, 3, 20), # Last Day of Year
        Date(1980, 3, 21), # Nowruz
        Date(1980, 3, 22), # Nowruz Holiday
        Date(1980, 3, 23), # Nowruz Holiday
        Date(1980, 3, 24), # Nowruz Holiday
        Date(1980, 4, 1), # Islamic Republic Day
        Date(1980, 4, 2), # Nature's Day
        Date(1980, 4, 18), # Martyrdom of Fatima (estimated)
        Date(1980, 5, 27), # Birthday of Imam Ali (estimated)
        Date(1980, 6, 4), # Death of Imam Khomeini
        Date(1980, 6, 5), # 15 Khordad Uprising
        Date(1980, 6, 10), # Isra' and Mi'raj (estimated)
        Date(1980, 6, 28), # Birthday of Mahdi (estimated)
        Date(1980, 8, 2), # Martyrdom of Imam Ali (estimated)
        Date(1980, 8, 12), # Eid al-Fitr (estimated)
        Date(1980, 8, 13), # Eid al-Fitr Holiday (estimated)
        Date(1980, 9, 5), # Martyrdom of Imam Ja'far al-Sadiq (estimated)
        Date(1980, 10, 19), # Eid al-Adha (estimated)
        Date(1980, 10, 27), # Eid al-Ghadeer (estimated)
        Date(1980, 11, 17), # Tasua (estimated)
        Date(1980, 11, 18), # Ashura (estimated)
        Date(1980, 12, 27), # Arbaeen (estimated)
        Date(1981, 1, 4), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali (estimated)
        Date(1981, 1, 6), # Martyrdom of Ali al-Rida (estimated)
        Date(1981, 1, 14), # Martyrdom of Hasan al-Askari (estimated)
        Date(1981, 1, 23), # Birthday of Muhammad and Imam Ja'far al-Sadiq (estimated)
        Date(1981, 2, 11), # Islamic Revolution Day
        Date(1981, 3, 20), # Iranian Oil Industry Nationalization Day
        Date(1981, 3, 21), # Nowruz
        Date(1981, 3, 22), # Nowruz Holiday
        Date(1981, 3, 23), # Nowruz Holiday
        Date(1981, 3, 24), # Nowruz Holiday
        Date(1981, 4, 1), # Islamic Republic Day
        Date(1981, 4, 2), # Nature's Day
        Date(1981, 4, 7), # Martyrdom of Fatima (estimated)
        Date(1981, 5, 17), # Birthday of Imam Ali (estimated)
        Date(1981, 5, 31), # Isra' and Mi'raj (estimated)
        Date(1981, 6, 4), # Death of Imam Khomeini
        Date(1981, 6, 5), # 15 Khordad Uprising
        Date(1981, 6, 17), # Birthday of Mahdi (estimated)
        Date(1981, 7, 22), # Martyrdom of Imam Ali (estimated)
        Date(1981, 8, 1), # Eid al-Fitr (estimated)
        Date(1981, 8, 2), # Eid al-Fitr Holiday (estimated)
        Date(1981, 8, 25), # Martyrdom of Imam Ja'far al-Sadiq (estimated)
        Date(1981, 10, 8), # Eid al-Adha (estimated)
        Date(1981, 10, 16), # Eid al-Ghadeer (estimated)
        Date(1981, 11, 5), # Tasua (estimated)
        Date(1981, 11, 6), # Ashura (estimated)
        Date(1981, 12, 16), # Arbaeen (estimated)
        Date(1981, 12, 24), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali (estimated)
        Date(1981, 12, 26), # Martyrdom of Ali al-Rida (estimated)
        Date(1982, 1, 3), # Martyrdom of Hasan al-Askari (estimated)
        Date(1982, 1, 12), # Birthday of Muhammad and Imam Ja'far al-Sadiq (estimated)
        Date(1982, 2, 11), # Islamic Revolution Day
        Date(1982, 3, 20), # Iranian Oil Industry Nationalization Day
        Date(1982, 3, 21), # Nowruz
        Date(1982, 3, 22), # Nowruz Holiday
        Date(1982, 3, 23), # Nowruz Holiday
        Date(1982, 3, 24), # Nowruz Holiday
        Date(1982, 3, 28), # Martyrdom of Fatima (estimated)
        Date(1982, 4, 1), # Islamic Republic Day
        Date(1982, 4, 2), # Nature's Day
        Date(1982, 5, 6), # Birthday of Imam Ali (estimated)
        Date(1982, 5, 20), # Isra' and Mi'raj (estimated)
        Date(1982, 6, 4), # Death of Imam Khomeini
        Date(1982, 6, 5), # 15 Khordad Uprising
        Date(1982, 6, 7), # Birthday of Mahdi (estimated)
        Date(1982, 7, 12), # Martyrdom of Imam Ali (estimated)
        Date(1982, 7, 21), # Eid al-Fitr (estimated)
        Date(1982, 7, 22), # Eid al-Fitr Holiday (estimated)
        Date(1982, 8, 14), # Martyrdom of Imam Ja'far al-Sadiq (estimated)
        Date(1982, 9, 27), # Eid al-Adha (estimated)
        Date(1982, 10, 5), # Eid al-Ghadeer (estimated)
        Date(1982, 10, 26), # Tasua (estimated)
        Date(1982, 10, 27), # Ashura (estimated)
        Date(1982, 12, 5), # Arbaeen (estimated)
        Date(1982, 12, 13), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali (estimated)
        Date(1982, 12, 15), # Martyrdom of Ali al-Rida (estimated)
        Date(1982, 12, 23), # Martyrdom of Hasan al-Askari (estimated)
        Date(1983, 1, 1), # Birthday of Muhammad and Imam Ja'far al-Sadiq (estimated)
        Date(1983, 2, 11), # Islamic Revolution Day
        Date(1983, 3, 17), # Martyrdom of Fatima (estimated)
        Date(1983, 3, 20), # Iranian Oil Industry Nationalization Day
        Date(1983, 3, 21), # Nowruz
        Date(1983, 3, 22), # Nowruz Holiday
        Date(1983, 3, 23), # Nowruz Holiday
        Date(1983, 3, 24), # Nowruz Holiday
        Date(1983, 4, 1), # Islamic Republic Day
        Date(1983, 4, 2), # Nature's Day
        Date(1983, 4, 26), # Birthday of Imam Ali (estimated)
        Date(1983, 5, 10), # Isra' and Mi'raj (estimated)
        Date(1983, 5, 27), # Birthday of Mahdi (estimated)
        Date(1983, 6, 4), # Death of Imam Khomeini
        Date(1983, 6, 5), # 15 Khordad Uprising
        Date(1983, 7, 2), # Martyrdom of Imam Ali (estimated)
        Date(1983, 7, 11), # Eid al-Fitr (estimated)
        Date(1983, 7, 12), # Eid al-Fitr Holiday (estimated)
        Date(1983, 8, 4), # Martyrdom of Imam Ja'far al-Sadiq (estimated)
        Date(1983, 9, 17), # Eid al-Adha (estimated)
        Date(1983, 9, 25), # Eid al-Ghadeer (estimated)
        Date(1983, 10, 15), # Tasua (estimated)
        Date(1983, 10, 16), # Ashura (estimated)
        Date(1983, 11, 24), # Arbaeen (estimated)
        Date(1983, 12, 2), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali (estimated)
        Date(1983, 12, 4), # Martyrdom of Ali al-Rida (estimated)
        Date(1983, 12, 12), # Martyrdom of Hasan al-Askari (estimated)
        Date(1983, 12, 21), # Birthday of Muhammad and Imam Ja'far al-Sadiq (estimated)
        Date(1984, 2, 11), # Islamic Revolution Day
        Date(1984, 3, 5), # Martyrdom of Fatima (estimated)
        Date(1984, 3, 19), # Iranian Oil Industry Nationalization Day
        Date(1984, 3, 20), # Last Day of Year
        Date(1984, 3, 21), # Nowruz
        Date(1984, 3, 22), # Nowruz Holiday
        Date(1984, 3, 23), # Nowruz Holiday
        Date(1984, 3, 24), # Nowruz Holiday
        Date(1984, 4, 1), # Islamic Republic Day
        Date(1984, 4, 2), # Nature's Day
        Date(1984, 4, 14), # Birthday of Imam Ali (estimated)
        Date(1984, 4, 28), # Isra' and Mi'raj (estimated)
        Date(1984, 5, 16), # Birthday of Mahdi (estimated)
        Date(1984, 6, 4), # Death of Imam Khomeini
        Date(1984, 6, 5), # 15 Khordad Uprising
        Date(1984, 6, 20), # Martyrdom of Imam Ali (estimated)
        Date(1984, 6, 30), # Eid al-Fitr (estimated)
        Date(1984, 7, 1), # Eid al-Fitr Holiday (estimated)
        Date(1984, 7, 24), # Martyrdom of Imam Ja'far al-Sadiq (estimated)
        Date(1984, 9, 5), # Eid al-Adha (estimated)
        Date(1984, 9, 13), # Eid al-Ghadeer (estimated)
        Date(1984, 10, 4), # Tasua (estimated)
        Date(1984, 10, 5), # Ashura (estimated)
        Date(1984, 11, 13), # Arbaeen (estimated)
        Date(1984, 11, 21), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali (estimated)
        Date(1984, 11, 22), # Martyrdom of Ali al-Rida (estimated)
        Date(1984, 11, 30), # Martyrdom of Hasan al-Askari (estimated)
        Date(1984, 12, 9), # Birthday of Muhammad and Imam Ja'far al-Sadiq (estimated)
        Date(1985, 2, 11), # Islamic Revolution Day
        Date(1985, 2, 22), # Martyrdom of Fatima (estimated)
        Date(1985, 3, 20), # Iranian Oil Industry Nationalization Day
        Date(1985, 3, 21), # Nowruz
        Date(1985, 3, 22), # Nowruz Holiday
        Date(1985, 3, 23), # Nowruz Holiday
        Date(1985, 3, 24), # Nowruz Holiday
        Date(1985, 4, 1), # Islamic Republic Day
        Date(1985, 4, 2), # Nature's Day
        Date(1985, 4, 3), # Birthday of Imam Ali (estimated)
        Date(1985, 4, 17), # Isra' and Mi'raj (estimated)
        Date(1985, 5, 5), # Birthday of Mahdi (estimated)
        Date(1985, 6, 4), # Death of Imam Khomeini
        Date(1985, 6, 5), # 15 Khordad Uprising
        Date(1985, 6, 9), # Martyrdom of Imam Ali (estimated)
        Date(1985, 6, 19), # Eid al-Fitr (estimated)
        Date(1985, 6, 20), # Eid al-Fitr Holiday (estimated)
        Date(1985, 7, 13), # Martyrdom of Imam Ja'far al-Sadiq (estimated)
        Date(1985, 8, 26), # Eid al-Adha (estimated)
        Date(1985, 9, 3), # Eid al-Ghadeer (estimated)
        Date(1985, 9, 23), # Tasua (estimated)
        Date(1985, 9, 24), # Ashura (estimated)
        Date(1985, 11, 3), # Arbaeen (estimated)
        Date(1985, 11, 11), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali (estimated)
        Date(1985, 11, 12), # Martyrdom of Ali al-Rida (estimated)
        Date(1985, 11, 20), # Martyrdom of Hasan al-Askari (estimated)
        Date(1985, 11, 29), # Birthday of Muhammad and Imam Ja'far al-Sadiq (estimated)
        Date(1986, 2, 11), # Islamic Revolution Day
        Date(1986, 2, 12), # Martyrdom of Fatima (estimated)
        Date(1986, 3, 20), # Iranian Oil Industry Nationalization Day
        Date(1986, 3, 21), # Nowruz
        Date(1986, 3, 22), # Nowruz Holiday
        Date(1986, 3, 23), # Birthday of Imam Ali (estimated); Nowruz Holiday
        Date(1986, 3, 24), # Nowruz Holiday
        Date(1986, 4, 1), # Islamic Republic Day
        Date(1986, 4, 2), # Nature's Day
        Date(1986, 4, 6), # Isra' and Mi'raj (estimated)
        Date(1986, 4, 24), # Birthday of Mahdi (estimated)
        Date(1986, 5, 29), # Martyrdom of Imam Ali (estimated)
        Date(1986, 6, 4), # Death of Imam Khomeini
        Date(1986, 6, 5), # 15 Khordad Uprising
        Date(1986, 6, 8), # Eid al-Fitr (estimated)
        Date(1986, 6, 9), # Eid al-Fitr Holiday (estimated)
        Date(1986, 7, 2), # Martyrdom of Imam Ja'far al-Sadiq (estimated)
        Date(1986, 8, 15), # Eid al-Adha (estimated)
        Date(1986, 8, 23), # Eid al-Ghadeer (estimated)
        Date(1986, 9, 13), # Tasua (estimated)
        Date(1986, 9, 14), # Ashura (estimated)
        Date(1986, 10, 23), # Arbaeen (estimated)
        Date(1986, 10, 31), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali (estimated)
        Date(1986, 11, 2), # Martyrdom of Ali al-Rida (estimated)
        Date(1986, 11, 10), # Martyrdom of Hasan al-Askari (estimated)
        Date(1986, 11, 19), # Birthday of Muhammad and Imam Ja'far al-Sadiq (estimated)
        Date(1987, 2, 1), # Martyrdom of Fatima (estimated)
        Date(1987, 2, 11), # Islamic Revolution Day
        Date(1987, 3, 13), # Birthday of Imam Ali (estimated)
        Date(1987, 3, 20), # Iranian Oil Industry Nationalization Day
        Date(1987, 3, 21), # Nowruz
        Date(1987, 3, 22), # Nowruz Holiday
        Date(1987, 3, 23), # Nowruz Holiday
        Date(1987, 3, 24), # Nowruz Holiday
        Date(1987, 3, 27), # Isra' and Mi'raj (estimated)
        Date(1987, 4, 1), # Islamic Republic Day
        Date(1987, 4, 2), # Nature's Day
        Date(1987, 4, 13), # Birthday of Mahdi (estimated)
        Date(1987, 5, 19), # Martyrdom of Imam Ali (estimated)
        Date(1987, 5, 28), # Eid al-Fitr (estimated)
        Date(1987, 5, 29), # Eid al-Fitr Holiday (estimated)
        Date(1987, 6, 4), # Death of Imam Khomeini
        Date(1987, 6, 5), # 15 Khordad Uprising
        Date(1987, 6, 21), # Martyrdom of Imam Ja'far al-Sadiq (estimated)
        Date(1987, 8, 4), # Eid al-Adha (estimated)
        Date(1987, 8, 12), # Eid al-Ghadeer (estimated)
        Date(1987, 9, 2), # Tasua (estimated)
        Date(1987, 9, 3), # Ashura (estimated)
        Date(1987, 10, 13), # Arbaeen (estimated)
        Date(1987, 10, 21), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali (estimated)
        Date(1987, 10, 22), # Martyrdom of Ali al-Rida (estimated)
        Date(1987, 10, 30), # Martyrdom of Hasan al-Askari (estimated)
        Date(1987, 11, 8), # Birthday of Muhammad and Imam Ja'far al-Sadiq (estimated)
        Date(1988, 1, 22), # Martyrdom of Fatima (estimated)
        Date(1988, 2, 11), # Islamic Revolution Day
        Date(1988, 3, 1), # Birthday of Imam Ali (estimated)
        Date(1988, 3, 15), # Isra' and Mi'raj (estimated)
        Date(1988, 3, 19), # Iranian Oil Industry Nationalization Day
        Date(1988, 3, 20), # Last Day of Year
        Date(1988, 3, 21), # Nowruz
        Date(1988, 3, 22), # Nowruz Holiday
        Date(1988, 3, 23), # Nowruz Holiday
        Date(1988, 3, 24), # Nowruz Holiday
        Date(1988, 4, 1), # Islamic Republic Day
        Date(1988, 4, 2), # Birthday of Mahdi (estimated); Nature's Day
        Date(1988, 5, 7), # Martyrdom of Imam Ali (estimated)
        Date(1988, 5, 16), # Eid al-Fitr (estimated)
        Date(1988, 5, 17), # Eid al-Fitr Holiday (estimated)
        Date(1988, 6, 4), # Death of Imam Khomeini
        Date(1988, 6, 5), # 15 Khordad Uprising
        Date(1988, 6, 9), # Martyrdom of Imam Ja'far al-Sadiq (estimated)
        Date(1988, 7, 23), # Eid al-Adha (estimated)
        Date(1988, 7, 31), # Eid al-Ghadeer (estimated)
        Date(1988, 8, 21), # Tasua (estimated)
        Date(1988, 8, 22), # Ashura (estimated)
        Date(1988, 10, 1), # Arbaeen (estimated)
        Date(1988, 10, 9), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali (estimated)
        Date(1988, 10, 10), # Martyrdom of Ali al-Rida (estimated)
        Date(1988, 10, 18), # Martyrdom of Hasan al-Askari (estimated)
        Date(1988, 10, 27), # Birthday of Muhammad and Imam Ja'far al-Sadiq (estimated)
        Date(1989, 1, 10), # Martyrdom of Fatima (estimated)
        Date(1989, 2, 11), # Islamic Revolution Day
        Date(1989, 2, 19), # Birthday of Imam Ali (estimated)
        Date(1989, 3, 5), # Isra' and Mi'raj (estimated)
        Date(1989, 3, 20), # Iranian Oil Industry Nationalization Day
        Date(1989, 3, 21), # Nowruz
        Date(1989, 3, 22), # Birthday of Mahdi (estimated); Nowruz Holiday
        Date(1989, 3, 23), # Nowruz Holiday
        Date(1989, 3, 24), # Nowruz Holiday
        Date(1989, 4, 1), # Islamic Republic Day
        Date(1989, 4, 2), # Nature's Day
        Date(1989, 4, 27), # Martyrdom of Imam Ali (estimated)
        Date(1989, 5, 6), # Eid al-Fitr (estimated)
        Date(1989, 5, 7), # Eid al-Fitr Holiday (estimated)
        Date(1989, 5, 30), # Martyrdom of Imam Ja'far al-Sadiq (estimated)
        Date(1989, 6, 4), # Death of Imam Khomeini
        Date(1989, 6, 5), # 15 Khordad Uprising
        Date(1989, 7, 13), # Eid al-Adha (estimated)
        Date(1989, 7, 21), # Eid al-Ghadeer (estimated)
        Date(1989, 8, 10), # Tasua (estimated)
        Date(1989, 8, 11), # Ashura (estimated)
        Date(1989, 9, 20), # Arbaeen (estimated)
        Date(1989, 9, 28), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali (estimated)
        Date(1989, 9, 29), # Martyrdom of Ali al-Rida (estimated)
        Date(1989, 10, 7), # Martyrdom of Hasan al-Askari (estimated)
        Date(1989, 10, 16), # Birthday of Muhammad and Imam Ja'far al-Sadiq (estimated)
        Date(1989, 12, 31), # Martyrdom of Fatima (estimated)
        Date(1990, 2, 8), # Birthday of Imam Ali (estimated)
        Date(1990, 2, 11), # Islamic Revolution Day
        Date(1990, 2, 22), # Isra' and Mi'raj (estimated)
        Date(1990, 3, 12), # Birthday of Mahdi (estimated)
        Date(1990, 3, 20), # Iranian Oil Industry Nationalization Day
        Date(1990, 3, 21), # Nowruz
        Date(1990, 3, 22), # Nowruz Holiday
        Date(1990, 3, 23), # Nowruz Holiday
        Date(1990, 3, 24), # Nowruz Holiday
        Date(1990, 4, 1), # Islamic Republic Day
        Date(1990, 4, 2), # Nature's Day
        Date(1990, 4, 16), # Martyrdom of Imam Ali (estimated)
        Date(1990, 4, 26), # Eid al-Fitr (estimated)
        Date(1990, 4, 27), # Eid al-Fitr Holiday (estimated)
        Date(1990, 5, 20), # Martyrdom of Imam Ja'far al-Sadiq (estimated)
        Date(1990, 6, 4), # Death of Imam Khomeini
        Date(1990, 6, 5), # 15 Khordad Uprising
        Date(1990, 7, 2), # Eid al-Adha (estimated)
        Date(1990, 7, 10), # Eid al-Ghadeer (estimated)
        Date(1990, 7, 31), # Tasua (estimated)
        Date(1990, 8, 1), # Ashura (estimated)
        Date(1990, 9, 9), # Arbaeen (estimated)
        Date(1990, 9, 17), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali (estimated)
        Date(1990, 9, 19), # Martyrdom of Ali al-Rida (estimated)
        Date(1990, 9, 27), # Martyrdom of Hasan al-Askari (estimated)
        Date(1990, 10, 6), # Birthday of Muhammad and Imam Ja'far al-Sadiq (estimated)
        Date(1990, 12, 20), # Martyrdom of Fatima (estimated)
        Date(1991, 1, 28), # Birthday of Imam Ali (estimated)
        Date(1991, 2, 11), # Islamic Revolution Day; Isra' and Mi'raj (estimated)
        Date(1991, 3, 1), # Birthday of Mahdi (estimated)
        Date(1991, 3, 20), # Iranian Oil Industry Nationalization Day
        Date(1991, 3, 21), # Nowruz
        Date(1991, 3, 22), # Nowruz Holiday
        Date(1991, 3, 23), # Nowruz Holiday
        Date(1991, 3, 24), # Nowruz Holiday
        Date(1991, 4, 1), # Islamic Republic Day
        Date(1991, 4, 2), # Nature's Day
        Date(1991, 4, 6), # Martyrdom of Imam Ali (estimated)
        Date(1991, 4, 15), # Eid al-Fitr (estimated)
        Date(1991, 4, 16), # Eid al-Fitr Holiday (estimated)
        Date(1991, 5, 9), # Martyrdom of Imam Ja'far al-Sadiq (estimated)
        Date(1991, 6, 4), # Death of Imam Khomeini
        Date(1991, 6, 5), # 15 Khordad Uprising
        Date(1991, 6, 22), # Eid al-Adha (estimated)
        Date(1991, 6, 30), # Eid al-Ghadeer (estimated)
        Date(1991, 7, 20), # Tasua (estimated)
        Date(1991, 7, 21), # Ashura (estimated)
        Date(1991, 8, 30), # Arbaeen (estimated)
        Date(1991, 9, 7), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali (estimated)
        Date(1991, 9, 8), # Martyrdom of Ali al-Rida (estimated)
        Date(1991, 9, 16), # Martyrdom of Hasan al-Askari (estimated)
        Date(1991, 9, 25), # Birthday of Muhammad and Imam Ja'far al-Sadiq (estimated)
        Date(1991, 12, 9), # Martyrdom of Fatima (estimated)
        Date(1992, 1, 17), # Birthday of Imam Ali (estimated)
        Date(1992, 1, 31), # Isra' and Mi'raj (estimated)
        Date(1992, 2, 11), # Islamic Revolution Day
        Date(1992, 2, 18), # Birthday of Mahdi (estimated)
        Date(1992, 3, 19), # Iranian Oil Industry Nationalization Day
        Date(1992, 3, 20), # Last Day of Year
        Date(1992, 3, 21), # Nowruz
        Date(1992, 3, 22), # Nowruz Holiday
        Date(1992, 3, 23), # Nowruz Holiday
        Date(1992, 3, 24), # Nowruz Holiday
        Date(1992, 3, 25), # Martyrdom of Imam Ali (estimated)
        Date(1992, 4, 1), # Islamic Republic Day
        Date(1992, 4, 2), # Nature's Day
        Date(1992, 4, 4), # Eid al-Fitr (estimated)
        Date(1992, 4, 5), # Eid al-Fitr Holiday (estimated)
        Date(1992, 4, 28), # Martyrdom of Imam Ja'far al-Sadiq (estimated)
        Date(1992, 6, 4), # Death of Imam Khomeini
        Date(1992, 6, 5), # 15 Khordad Uprising
        Date(1992, 6, 11), # Eid al-Adha (estimated)
        Date(1992, 6, 19), # Eid al-Ghadeer (estimated)
        Date(1992, 7, 9), # Tasua (estimated)
        Date(1992, 7, 10), # Ashura (estimated)
        Date(1992, 8, 18), # Arbaeen (estimated)
        Date(1992, 8, 26), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali (estimated)
        Date(1992, 8, 28), # Martyrdom of Ali al-Rida (estimated)
        Date(1992, 9, 5), # Martyrdom of Hasan al-Askari (estimated)
        Date(1992, 9, 14), # Birthday of Muhammad and Imam Ja'far al-Sadiq (estimated)
        Date(1992, 11, 27), # Martyrdom of Fatima (estimated)
        Date(1993, 1, 6), # Birthday of Imam Ali (estimated)
        Date(1993, 1, 20), # Isra' and Mi'raj (estimated)
        Date(1993, 2, 6), # Birthday of Mahdi (estimated)
        Date(1993, 2, 11), # Islamic Revolution Day
        Date(1993, 3, 14), # Martyrdom of Imam Ali (estimated)
        Date(1993, 3, 20), # Iranian Oil Industry Nationalization Day
        Date(1993, 3, 21), # Nowruz
        Date(1993, 3, 22), # Nowruz Holiday
        Date(1993, 3, 23), # Nowruz Holiday
        Date(1993, 3, 24), # Eid al-Fitr (estimated); Nowruz Holiday
        Date(1993, 3, 25), # Eid al-Fitr Holiday (estimated)
        Date(1993, 4, 1), # Islamic Republic Day
        Date(1993, 4, 2), # Nature's Day
        Date(1993, 4, 17), # Martyrdom of Imam Ja'far al-Sadiq (estimated)
        Date(1993, 5, 31), # Eid al-Adha (estimated)
        Date(1993, 6, 4), # Death of Imam Khomeini
        Date(1993, 6, 5), # 15 Khordad Uprising
        Date(1993, 6, 8), # Eid al-Ghadeer (estimated)
        Date(1993, 6, 29), # Tasua (estimated)
        Date(1993, 6, 30), # Ashura (estimated)
        Date(1993, 8, 8), # Arbaeen (estimated)
        Date(1993, 8, 16), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali (estimated)
        Date(1993, 8, 17), # Martyrdom of Ali al-Rida (estimated)
        Date(1993, 8, 25), # Martyrdom of Hasan al-Askari (estimated)
        Date(1993, 9, 3), # Birthday of Muhammad and Imam Ja'far al-Sadiq (estimated)
        Date(1993, 11, 16), # Martyrdom of Fatima (estimated)
        Date(1993, 12, 26), # Birthday of Imam Ali (estimated)
        Date(1994, 1, 9), # Isra' and Mi'raj (estimated)
        Date(1994, 1, 26), # Birthday of Mahdi (estimated)
        Date(1994, 2, 11), # Islamic Revolution Day
        Date(1994, 3, 3), # Martyrdom of Imam Ali (estimated)
        Date(1994, 3, 13), # Eid al-Fitr (estimated)
        Date(1994, 3, 14), # Eid al-Fitr Holiday (estimated)
        Date(1994, 3, 20), # Iranian Oil Industry Nationalization Day
        Date(1994, 3, 21), # Nowruz
        Date(1994, 3, 22), # Nowruz Holiday
        Date(1994, 3, 23), # Nowruz Holiday
        Date(1994, 3, 24), # Nowruz Holiday
        Date(1994, 4, 1), # Islamic Republic Day
        Date(1994, 4, 2), # Nature's Day
        Date(1994, 4, 6), # Martyrdom of Imam Ja'far al-Sadiq (estimated)
        Date(1994, 5, 20), # Eid al-Adha (estimated)
        Date(1994, 5, 28), # Eid al-Ghadeer (estimated)
        Date(1994, 6, 4), # Death of Imam Khomeini
        Date(1994, 6, 5), # 15 Khordad Uprising
        Date(1994, 6, 18), # Tasua (estimated)
        Date(1994, 6, 19), # Ashura (estimated)
        Date(1994, 7, 28), # Arbaeen (estimated)
        Date(1994, 8, 5), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali (estimated)
        Date(1994, 8, 7), # Martyrdom of Ali al-Rida (estimated)
        Date(1994, 8, 15), # Martyrdom of Hasan al-Askari (estimated)
        Date(1994, 8, 24), # Birthday of Muhammad and Imam Ja'far al-Sadiq (estimated)
        Date(1994, 11, 6), # Martyrdom of Fatima (estimated)
        Date(1994, 12, 15), # Birthday of Imam Ali (estimated)
        Date(1994, 12, 29), # Isra' and Mi'raj (estimated)
        Date(1995, 1, 16), # Birthday of Mahdi (estimated)
        Date(1995, 2, 11), # Islamic Revolution Day
        Date(1995, 2, 20), # Martyrdom of Imam Ali (estimated)
        Date(1995, 3, 2), # Eid al-Fitr (estimated)
        Date(1995, 3, 3), # Eid al-Fitr Holiday (estimated)
        Date(1995, 3, 20), # Iranian Oil Industry Nationalization Day
        Date(1995, 3, 21), # Nowruz
        Date(1995, 3, 22), # Nowruz Holiday
        Date(1995, 3, 23), # Nowruz Holiday
        Date(1995, 3, 24), # Nowruz Holiday
        Date(1995, 3, 26), # Martyrdom of Imam Ja'far al-Sadiq (estimated)
        Date(1995, 4, 1), # Islamic Republic Day
        Date(1995, 4, 2), # Nature's Day
        Date(1995, 5, 9), # Eid al-Adha (estimated)
        Date(1995, 5, 17), # Eid al-Ghadeer (estimated)
        Date(1995, 6, 4), # Death of Imam Khomeini
        Date(1995, 6, 5), # 15 Khordad Uprising
        Date(1995, 6, 7), # Tasua (estimated)
        Date(1995, 6, 8), # Ashura (estimated)
        Date(1995, 7, 18), # Arbaeen (estimated)
        Date(1995, 7, 26), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali (estimated)
        Date(1995, 7, 27), # Martyrdom of Ali al-Rida (estimated)
        Date(1995, 8, 4), # Martyrdom of Hasan al-Askari (estimated)
        Date(1995, 8, 13), # Birthday of Muhammad and Imam Ja'far al-Sadiq (estimated)
        Date(1995, 10, 27), # Martyrdom of Fatima (estimated)
        Date(1995, 12, 5), # Birthday of Imam Ali (estimated)
        Date(1995, 12, 19), # Isra' and Mi'raj (estimated)
        Date(1996, 1, 6), # Birthday of Mahdi (estimated)
        Date(1996, 2, 10), # Martyrdom of Imam Ali (estimated)
        Date(1996, 2, 11), # Islamic Revolution Day
        Date(1996, 2, 19), # Eid al-Fitr (estimated)
        Date(1996, 2, 20), # Eid al-Fitr Holiday (estimated)
        Date(1996, 3, 14), # Martyrdom of Imam Ja'far al-Sadiq (estimated)
        Date(1996, 3, 19), # Iranian Oil Industry Nationalization Day
        Date(1996, 3, 20), # Nowruz
        Date(1996, 3, 21), # Nowruz Holiday
        Date(1996, 3, 22), # Nowruz Holiday
        Date(1996, 3, 23), # Nowruz Holiday
        Date(1996, 3, 31), # Islamic Republic Day
        Date(1996, 4, 1), # Nature's Day
        Date(1996, 4, 27), # Eid al-Adha (estimated)
        Date(1996, 5, 5), # Eid al-Ghadeer (estimated)
        Date(1996, 5, 26), # Tasua (estimated)
        Date(1996, 5, 27), # Ashura (estimated)
        Date(1996, 6, 3), # Death of Imam Khomeini
        Date(1996, 6, 4), # 15 Khordad Uprising
        Date(1996, 7, 6), # Arbaeen (estimated)
        Date(1996, 7, 14), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali (estimated)
        Date(1996, 7, 15), # Martyrdom of Ali al-Rida (estimated)
        Date(1996, 7, 23), # Martyrdom of Hasan al-Askari (estimated)
        Date(1996, 8, 1), # Birthday of Muhammad and Imam Ja'far al-Sadiq (estimated)
        Date(1996, 10, 15), # Martyrdom of Fatima (estimated)
        Date(1996, 11, 24), # Birthday of Imam Ali (estimated)
        Date(1996, 12, 8), # Isra' and Mi'raj (estimated)
        Date(1996, 12, 25), # Birthday of Mahdi (estimated)
        Date(1997, 1, 30), # Martyrdom of Imam Ali (estimated)
        Date(1997, 2, 8), # Eid al-Fitr (estimated)
        Date(1997, 2, 9), # Eid al-Fitr Holiday (estimated)
        Date(1997, 2, 10), # Islamic Revolution Day
        Date(1997, 3, 4), # Martyrdom of Imam Ja'far al-Sadiq (estimated)
        Date(1997, 3, 19), # Iranian Oil Industry Nationalization Day
        Date(1997, 3, 20), # Last Day of Year
        Date(1997, 3, 21), # Nowruz
        Date(1997, 3, 22), # Nowruz Holiday
        Date(1997, 3, 23), # Nowruz Holiday
        Date(1997, 3, 24), # Nowruz Holiday
        Date(1997, 4, 1), # Islamic Republic Day
        Date(1997, 4, 2), # Nature's Day
        Date(1997, 4, 17), # Eid al-Adha (estimated)
        Date(1997, 4, 25), # Eid al-Ghadeer (estimated)
        Date(1997, 5, 15), # Tasua (estimated)
        Date(1997, 5, 16), # Ashura (estimated)
        Date(1997, 6, 4), # Death of Imam Khomeini
        Date(1997, 6, 5), # 15 Khordad Uprising
        Date(1997, 6, 25), # Arbaeen (estimated)
        Date(1997, 7, 3), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali (estimated)
        Date(1997, 7, 4), # Martyrdom of Ali al-Rida (estimated)
        Date(1997, 7, 12), # Martyrdom of Hasan al-Askari (estimated)
        Date(1997, 7, 21), # Birthday of Muhammad and Imam Ja'far al-Sadiq (estimated)
        Date(1997, 10, 4), # Martyrdom of Fatima (estimated)
        Date(1997, 11, 13), # Birthday of Imam Ali (estimated)
        Date(1997, 11, 27), # Isra' and Mi'raj (estimated)
        Date(1997, 12, 15), # Birthday of Mahdi (estimated)
        Date(1998, 1, 19), # Martyrdom of Imam Ali (estimated)
        Date(1998, 1, 29), # Eid al-Fitr (estimated)
        Date(1998, 1, 30), # Eid al-Fitr Holiday (estimated)
        Date(1998, 2, 11), # Islamic Revolution Day
        Date(1998, 2, 22), # Martyrdom of Imam Ja'far al-Sadiq (estimated)
        Date(1998, 3, 20), # Iranian Oil Industry Nationalization Day
        Date(1998, 3, 21), # Nowruz
        Date(1998, 3, 22), # Nowruz Holiday
        Date(1998, 3, 23), # Nowruz Holiday
        Date(1998, 3, 24), # Nowruz Holiday
        Date(1998, 4, 1), # Islamic Republic Day
        Date(1998, 4, 2), # Nature's Day
        Date(1998, 4, 7), # Eid al-Adha (estimated)
        Date(1998, 4, 15), # Eid al-Ghadeer (estimated)
        Date(1998, 5, 5), # Tasua (estimated)
        Date(1998, 5, 6), # Ashura (estimated)
        Date(1998, 6, 4), # Death of Imam Khomeini
        Date(1998, 6, 5), # 15 Khordad Uprising
        Date(1998, 6, 14), # Arbaeen (estimated)
        Date(1998, 6, 22), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali (estimated)
        Date(1998, 6, 24), # Martyrdom of Ali al-Rida (estimated)
        Date(1998, 7, 2), # Martyrdom of Hasan al-Askari (estimated)
        Date(1998, 7, 11), # Birthday of Muhammad and Imam Ja'far al-Sadiq (estimated)
        Date(1998, 9, 23), # Martyrdom of Fatima (estimated)
        Date(1998, 11, 2), # Birthday of Imam Ali (estimated)
        Date(1998, 11, 16), # Isra' and Mi'raj (estimated)
        Date(1998, 12, 4), # Birthday of Mahdi (estimated)
        Date(1999, 1, 8), # Martyrdom of Imam Ali (estimated)
        Date(1999, 1, 18), # Eid al-Fitr (estimated)
        Date(1999, 1, 19), # Eid al-Fitr Holiday (estimated)
        Date(1999, 2, 11), # Islamic Revolution Day; Martyrdom of Imam Ja'far al-Sadiq (estimated)
        Date(1999, 3, 20), # Iranian Oil Industry Nationalization Day
        Date(1999, 3, 21), # Nowruz
        Date(1999, 3, 22), # Nowruz Holiday
        Date(1999, 3, 23), # Nowruz Holiday
        Date(1999, 3, 24), # Nowruz Holiday
        Date(1999, 3, 27), # Eid al-Adha (estimated)
        Date(1999, 4, 1), # Islamic Republic Day
        Date(1999, 4, 2), # Nature's Day
        Date(1999, 4, 4), # Eid al-Ghadeer (estimated)
        Date(1999, 4, 25), # Tasua (estimated)
        Date(1999, 4, 26), # Ashura (estimated)
        Date(1999, 6, 4), # Arbaeen (estimated); Death of Imam Khomeini
        Date(1999, 6, 5), # 15 Khordad Uprising
        Date(1999, 6, 12), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali (estimated)
        Date(1999, 6, 14), # Martyrdom of Ali al-Rida (estimated)
        Date(1999, 6, 22), # Martyrdom of Hasan al-Askari (estimated)
        Date(1999, 7, 1), # Birthday of Muhammad and Imam Ja'far al-Sadiq (estimated)
        Date(1999, 9, 13), # Martyrdom of Fatima (estimated)
        Date(1999, 10, 22), # Birthday of Imam Ali (estimated)
        Date(1999, 11, 5), # Isra' and Mi'raj (estimated)
        Date(1999, 11, 23), # Birthday of Mahdi (estimated)
        Date(1999, 12, 29), # Martyrdom of Imam Ali (estimated)
        Date(2000, 1, 8), # Eid al-Fitr (estimated)
        Date(2000, 1, 9), # Eid al-Fitr Holiday (estimated)
        Date(2000, 2, 1), # Martyrdom of Imam Ja'far al-Sadiq (estimated)
        Date(2000, 2, 11), # Islamic Revolution Day
        Date(2000, 3, 16), # Eid al-Adha (estimated)
        Date(2000, 3, 19), # Iranian Oil Industry Nationalization Day
        Date(2000, 3, 20), # Nowruz
        Date(2000, 3, 21), # Nowruz Holiday
        Date(2000, 3, 22), # Nowruz Holiday
        Date(2000, 3, 23), # Nowruz Holiday
        Date(2000, 3, 24), # Eid al-Ghadeer (estimated)
        Date(2000, 3, 31), # Islamic Republic Day
        Date(2000, 4, 1), # Nature's Day
        Date(2000, 4, 14), # Tasua (estimated)
        Date(2000, 4, 15), # Ashura (estimated)
        Date(2000, 5, 24), # Arbaeen (estimated)
        Date(2000, 6, 1), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali (estimated)
        Date(2000, 6, 2), # Martyrdom of Ali al-Rida (estimated)
        Date(2000, 6, 3), # Death of Imam Khomeini
        Date(2000, 6, 4), # 15 Khordad Uprising
        Date(2000, 6, 10), # Martyrdom of Hasan al-Askari (estimated)
        Date(2000, 6, 19), # Birthday of Muhammad and Imam Ja'far al-Sadiq (estimated)
        Date(2000, 9, 1), # Martyrdom of Fatima (estimated)
        Date(2000, 10, 10), # Birthday of Imam Ali (estimated)
        Date(2000, 10, 24), # Isra' and Mi'raj (estimated)
        Date(2000, 11, 11), # Birthday of Mahdi (estimated)
        Date(2000, 12, 17), # Martyrdom of Imam Ali (estimated)
        Date(2000, 12, 27), # Eid al-Fitr (estimated)
        Date(2000, 12, 28), # Eid al-Fitr Holiday (estimated)
        Date(2001, 1, 20), # Martyrdom of Imam Ja'far al-Sadiq
        Date(2001, 2, 10), # Islamic Revolution Day
        Date(2001, 3, 6), # Eid al-Adha
        Date(2001, 3, 14), # Eid al-Ghadeer
        Date(2001, 3, 19), # Iranian Oil Industry Nationalization Day
        Date(2001, 3, 20), # Last Day of Year
        Date(2001, 3, 21), # Nowruz
        Date(2001, 3, 22), # Nowruz Holiday
        Date(2001, 3, 23), # Nowruz Holiday
        Date(2001, 3, 24), # Nowruz Holiday
        Date(2001, 4, 1), # Islamic Republic Day
        Date(2001, 4, 2), # Nature's Day
        Date(2001, 4, 4), # Tasua
        Date(2001, 4, 5), # Ashura
        Date(2001, 5, 14), # Arbaeen
        Date(2001, 5, 22), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali
        Date(2001, 5, 24), # Martyrdom of Ali al-Rida
        Date(2001, 6, 1), # Martyrdom of Hasan al-Askari
        Date(2001, 6, 4), # Death of Imam Khomeini
        Date(2001, 6, 5), # 15 Khordad Uprising
        Date(2001, 6, 10), # Birthday of Muhammad and Imam Ja'far al-Sadiq
        Date(2001, 8, 23), # Martyrdom of Fatima
        Date(2001, 10, 1), # Birthday of Imam Ali
        Date(2001, 10, 15), # Isra' and Mi'raj
        Date(2001, 11, 1), # Birthday of Mahdi
        Date(2001, 12, 7), # Martyrdom of Imam Ali
        Date(2001, 12, 16), # Eid al-Fitr
        Date(2001, 12, 17), # Eid al-Fitr Holiday
        Date(2002, 1, 9), # Martyrdom of Imam Ja'far al-Sadiq
        Date(2002, 2, 11), # Islamic Revolution Day
        Date(2002, 2, 23), # Eid al-Adha
        Date(2002, 3, 3), # Eid al-Ghadeer
        Date(2002, 3, 20), # Iranian Oil Industry Nationalization Day
        Date(2002, 3, 21), # Nowruz
        Date(2002, 3, 22), # Nowruz Holiday
        Date(2002, 3, 23), # Nowruz Holiday
        Date(2002, 3, 24), # Nowruz Holiday; Tasua
        Date(2002, 3, 25), # Ashura
        Date(2002, 4, 1), # Islamic Republic Day
        Date(2002, 4, 2), # Nature's Day
        Date(2002, 5, 3), # Arbaeen
        Date(2002, 5, 11), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali
        Date(2002, 5, 13), # Martyrdom of Ali al-Rida
        Date(2002, 5, 21), # Martyrdom of Hasan al-Askari
        Date(2002, 5, 30), # Birthday of Muhammad and Imam Ja'far al-Sadiq
        Date(2002, 6, 4), # Death of Imam Khomeini
        Date(2002, 6, 5), # 15 Khordad Uprising
        Date(2002, 8, 12), # Martyrdom of Fatima
        Date(2002, 9, 21), # Birthday of Imam Ali
        Date(2002, 10, 5), # Isra' and Mi'raj
        Date(2002, 10, 22), # Birthday of Mahdi
        Date(2002, 11, 27), # Martyrdom of Imam Ali
        Date(2002, 12, 6), # Eid al-Fitr
        Date(2002, 12, 7), # Eid al-Fitr Holiday
        Date(2002, 12, 30), # Martyrdom of Imam Ja'far al-Sadiq
        Date(2003, 2, 11), # Islamic Revolution Day
        Date(2003, 2, 12), # Eid al-Adha
        Date(2003, 2, 20), # Eid al-Ghadeer
        Date(2003, 3, 13), # Tasua
        Date(2003, 3, 14), # Ashura
        Date(2003, 3, 20), # Iranian Oil Industry Nationalization Day
        Date(2003, 3, 21), # Nowruz
        Date(2003, 3, 22), # Nowruz Holiday
        Date(2003, 3, 23), # Nowruz Holiday
        Date(2003, 3, 24), # Nowruz Holiday
        Date(2003, 4, 1), # Islamic Republic Day
        Date(2003, 4, 2), # Nature's Day
        Date(2003, 4, 23), # Arbaeen
        Date(2003, 5, 1), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali
        Date(2003, 5, 2), # Martyrdom of Ali al-Rida
        Date(2003, 5, 10), # Martyrdom of Hasan al-Askari
        Date(2003, 5, 19), # Birthday of Muhammad and Imam Ja'far al-Sadiq
        Date(2003, 6, 4), # Death of Imam Khomeini
        Date(2003, 6, 5), # 15 Khordad Uprising
        Date(2003, 8, 2), # Martyrdom of Fatima
        Date(2003, 9, 10), # Birthday of Imam Ali
        Date(2003, 9, 24), # Isra' and Mi'raj
        Date(2003, 10, 12), # Birthday of Mahdi
        Date(2003, 11, 16), # Martyrdom of Imam Ali
        Date(2003, 11, 26), # Eid al-Fitr
        Date(2003, 11, 27), # Eid al-Fitr Holiday
        Date(2003, 12, 20), # Martyrdom of Imam Ja'far al-Sadiq
        Date(2004, 2, 2), # Eid al-Adha
        Date(2004, 2, 10), # Eid al-Ghadeer
        Date(2004, 2, 11), # Islamic Revolution Day
        Date(2004, 3, 1), # Tasua
        Date(2004, 3, 2), # Ashura
        Date(2004, 3, 19), # Iranian Oil Industry Nationalization Day
        Date(2004, 3, 20), # Nowruz
        Date(2004, 3, 21), # Nowruz Holiday
        Date(2004, 3, 22), # Nowruz Holiday
        Date(2004, 3, 23), # Nowruz Holiday
        Date(2004, 3, 31), # Islamic Republic Day
        Date(2004, 4, 1), # Nature's Day
        Date(2004, 4, 11), # Arbaeen
        Date(2004, 4, 19), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali
        Date(2004, 4, 20), # Martyrdom of Ali al-Rida
        Date(2004, 4, 28), # Martyrdom of Hasan al-Askari
        Date(2004, 5, 7), # Birthday of Muhammad and Imam Ja'far al-Sadiq
        Date(2004, 6, 3), # Death of Imam Khomeini
        Date(2004, 6, 4), # 15 Khordad Uprising
        Date(2004, 7, 21), # Martyrdom of Fatima
        Date(2004, 8, 30), # Birthday of Imam Ali
        Date(2004, 9, 13), # Isra' and Mi'raj
        Date(2004, 10, 1), # Birthday of Mahdi
        Date(2004, 11, 5), # Martyrdom of Imam Ali
        Date(2004, 11, 14), # Eid al-Fitr
        Date(2004, 11, 15), # Eid al-Fitr Holiday
        Date(2004, 12, 8), # Martyrdom of Imam Ja'far al-Sadiq
        Date(2005, 1, 21), # Eid al-Adha
        Date(2005, 1, 29), # Eid al-Ghadeer
        Date(2005, 2, 10), # Islamic Revolution Day
        Date(2005, 2, 19), # Tasua
        Date(2005, 2, 20), # Ashura
        Date(2005, 3, 19), # Iranian Oil Industry Nationalization Day
        Date(2005, 3, 20), # Last Day of Year
        Date(2005, 3, 21), # Nowruz
        Date(2005, 3, 22), # Nowruz Holiday
        Date(2005, 3, 23), # Nowruz Holiday
        Date(2005, 3, 24), # Nowruz Holiday
        Date(2005, 3, 31), # Arbaeen
        Date(2005, 4, 1), # Islamic Republic Day
        Date(2005, 4, 2), # Nature's Day
        Date(2005, 4, 8), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali
        Date(2005, 4, 9), # Martyrdom of Ali al-Rida
        Date(2005, 4, 17), # Martyrdom of Hasan al-Askari
        Date(2005, 4, 26), # Birthday of Muhammad and Imam Ja'far al-Sadiq
        Date(2005, 6, 4), # Death of Imam Khomeini
        Date(2005, 6, 5), # 15 Khordad Uprising
        Date(2005, 7, 10), # Martyrdom of Fatima
        Date(2005, 8, 19), # Birthday of Imam Ali
        Date(2005, 9, 2), # Isra' and Mi'raj
        Date(2005, 9, 20), # Birthday of Mahdi
        Date(2005, 10, 25), # Martyrdom of Imam Ali
        Date(2005, 11, 4), # Eid al-Fitr
        Date(2005, 11, 5), # Eid al-Fitr Holiday
        Date(2005, 11, 28), # Martyrdom of Imam Ja'far al-Sadiq
        Date(2006, 1, 11), # Eid al-Adha
        Date(2006, 1, 19), # Eid al-Ghadeer
        Date(2006, 2, 8), # Tasua
        Date(2006, 2, 9), # Ashura
        Date(2006, 2, 11), # Islamic Revolution Day
        Date(2006, 3, 20), # Iranian Oil Industry Nationalization Day
        Date(2006, 3, 21), # Arbaeen; Nowruz
        Date(2006, 3, 22), # Nowruz Holiday
        Date(2006, 3, 23), # Nowruz Holiday
        Date(2006, 3, 24), # Nowruz Holiday
        Date(2006, 3, 29), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali
        Date(2006, 3, 30), # Martyrdom of Ali al-Rida
        Date(2006, 4, 1), # Islamic Republic Day
        Date(2006, 4, 2), # Nature's Day
        Date(2006, 4, 7), # Martyrdom of Hasan al-Askari
        Date(2006, 4, 16), # Birthday of Muhammad and Imam Ja'far al-Sadiq
        Date(2006, 6, 4), # Death of Imam Khomeini
        Date(2006, 6, 5), # 15 Khordad Uprising
        Date(2006, 6, 29), # Martyrdom of Fatima
        Date(2006, 8, 8), # Birthday of Imam Ali
        Date(2006, 8, 22), # Isra' and Mi'raj
        Date(2006, 9, 9), # Birthday of Mahdi
        Date(2006, 10, 15), # Martyrdom of Imam Ali
        Date(2006, 10, 24), # Eid al-Fitr
        Date(2006, 10, 25), # Eid al-Fitr Holiday
        Date(2006, 11, 17), # Martyrdom of Imam Ja'far al-Sadiq
        Date(2006, 12, 31), # Eid al-Adha
        Date(2007, 1, 8), # Eid al-Ghadeer
        Date(2007, 1, 29), # Tasua
        Date(2007, 1, 30), # Ashura
        Date(2007, 2, 11), # Islamic Revolution Day
        Date(2007, 3, 10), # Arbaeen
        Date(2007, 3, 18), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali
        Date(2007, 3, 20), # Iranian Oil Industry Nationalization Day; Martyrdom of Ali al-Rida
        Date(2007, 3, 21), # Nowruz
        Date(2007, 3, 22), # Nowruz Holiday
        Date(2007, 3, 23), # Nowruz Holiday
        Date(2007, 3, 24), # Nowruz Holiday
        Date(2007, 3, 28), # Martyrdom of Hasan al-Askari
        Date(2007, 4, 1), # Islamic Republic Day
        Date(2007, 4, 2), # Nature's Day
        Date(2007, 4, 6), # Birthday of Muhammad and Imam Ja'far al-Sadiq
        Date(2007, 6, 4), # Death of Imam Khomeini
        Date(2007, 6, 5), # 15 Khordad Uprising
        Date(2007, 6, 18), # Martyrdom of Fatima
        Date(2007, 7, 28), # Birthday of Imam Ali
        Date(2007, 8, 11), # Isra' and Mi'raj
        Date(2007, 8, 29), # Birthday of Mahdi
        Date(2007, 10, 3), # Martyrdom of Imam Ali
        Date(2007, 10, 13), # Eid al-Fitr
        Date(2007, 10, 14), # Eid al-Fitr Holiday
        Date(2007, 11, 6), # Martyrdom of Imam Ja'far al-Sadiq
        Date(2007, 12, 21), # Eid al-Adha
        Date(2007, 12, 29), # Eid al-Ghadeer
        Date(2008, 1, 18), # Tasua
        Date(2008, 1, 19), # Ashura
        Date(2008, 2, 11), # Islamic Revolution Day
        Date(2008, 2, 28), # Arbaeen
        Date(2008, 3, 7), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali
        Date(2008, 3, 8), # Martyrdom of Ali al-Rida
        Date(2008, 3, 16), # Martyrdom of Hasan al-Askari
        Date(2008, 3, 19), # Iranian Oil Industry Nationalization Day
        Date(2008, 3, 20), # Nowruz
        Date(2008, 3, 21), # Nowruz Holiday
        Date(2008, 3, 22), # Nowruz Holiday
        Date(2008, 3, 23), # Nowruz Holiday
        Date(2008, 3, 25), # Birthday of Muhammad and Imam Ja'far al-Sadiq
        Date(2008, 3, 31), # Islamic Republic Day
        Date(2008, 4, 1), # Nature's Day
        Date(2008, 6, 3), # Death of Imam Khomeini
        Date(2008, 6, 4), # 15 Khordad Uprising
        Date(2008, 6, 7), # Martyrdom of Fatima
        Date(2008, 7, 16), # Birthday of Imam Ali
        Date(2008, 7, 30), # Isra' and Mi'raj
        Date(2008, 8, 17), # Birthday of Mahdi
        Date(2008, 9, 22), # Martyrdom of Imam Ali
        Date(2008, 10, 1), # Eid al-Fitr
        Date(2008, 10, 2), # Eid al-Fitr Holiday
        Date(2008, 10, 25), # Martyrdom of Imam Ja'far al-Sadiq
        Date(2008, 12, 9), # Eid al-Adha
        Date(2008, 12, 17), # Eid al-Ghadeer
        Date(2009, 1, 6), # Tasua
        Date(2009, 1, 7), # Ashura
        Date(2009, 2, 10), # Islamic Revolution Day
        Date(2009, 2, 16), # Arbaeen
        Date(2009, 2, 24), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali
        Date(2009, 2, 26), # Martyrdom of Ali al-Rida
        Date(2009, 3, 6), # Martyrdom of Hasan al-Askari
        Date(2009, 3, 15), # Birthday of Muhammad and Imam Ja'far al-Sadiq
        Date(2009, 3, 19), # Iranian Oil Industry Nationalization Day
        Date(2009, 3, 20), # Last Day of Year
        Date(2009, 3, 21), # Nowruz
        Date(2009, 3, 22), # Nowruz Holiday
        Date(2009, 3, 23), # Nowruz Holiday
        Date(2009, 3, 24), # Nowruz Holiday
        Date(2009, 4, 1), # Islamic Republic Day
        Date(2009, 4, 2), # Nature's Day
        Date(2009, 5, 28), # Martyrdom of Fatima
        Date(2009, 6, 4), # Death of Imam Khomeini
        Date(2009, 6, 5), # 15 Khordad Uprising
        Date(2009, 7, 6), # Birthday of Imam Ali
        Date(2009, 7, 20), # Isra' and Mi'raj
        Date(2009, 8, 7), # Birthday of Mahdi
        Date(2009, 9, 11), # Martyrdom of Imam Ali
        Date(2009, 9, 20), # Eid al-Fitr
        Date(2009, 9, 21), # Eid al-Fitr Holiday
        Date(2009, 10, 14), # Martyrdom of Imam Ja'far al-Sadiq
        Date(2009, 11, 28), # Eid al-Adha
        Date(2009, 12, 6), # Eid al-Ghadeer
        Date(2009, 12, 26), # Tasua
        Date(2009, 12, 27), # Ashura
        Date(2010, 2, 5), # Arbaeen
        Date(2010, 2, 11), # Islamic Revolution Day
        Date(2010, 2, 13), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali
        Date(2010, 2, 15), # Martyrdom of Ali al-Rida
        Date(2010, 2, 23), # Martyrdom of Hasan al-Askari
        Date(2010, 3, 4), # Birthday of Muhammad and Imam Ja'far al-Sadiq
        Date(2010, 3, 20), # Iranian Oil Industry Nationalization Day
        Date(2010, 3, 21), # Nowruz
        Date(2010, 3, 22), # Nowruz Holiday
        Date(2010, 3, 23), # Nowruz Holiday
        Date(2010, 3, 24), # Nowruz Holiday
        Date(2010, 4, 1), # Islamic Republic Day
        Date(2010, 4, 2), # Nature's Day
        Date(2010, 5, 17), # Martyrdom of Fatima
        Date(2010, 6, 4), # Death of Imam Khomeini
        Date(2010, 6, 5), # 15 Khordad Uprising
        Date(2010, 6, 26), # Birthday of Imam Ali
        Date(2010, 7, 10), # Isra' and Mi'raj
        Date(2010, 7, 27), # Birthday of Mahdi
        Date(2010, 9, 1), # Martyrdom of Imam Ali
        Date(2010, 9, 10), # Eid al-Fitr
        Date(2010, 9, 11), # Eid al-Fitr Holiday
        Date(2010, 10, 4), # Martyrdom of Imam Ja'far al-Sadiq
        Date(2010, 11, 17), # Eid al-Adha
        Date(2010, 11, 25), # Eid al-Ghadeer
        Date(2010, 12, 15), # Tasua
        Date(2010, 12, 16), # Ashura
        Date(2011, 1, 25), # Arbaeen
        Date(2011, 2, 2), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali
        Date(2011, 2, 4), # Martyrdom of Ali al-Rida
        Date(2011, 2, 11), # Islamic Revolution Day
        Date(2011, 2, 12), # Martyrdom of Hasan al-Askari
        Date(2011, 2, 21), # Birthday of Muhammad and Imam Ja'far al-Sadiq
        Date(2011, 3, 20), # Iranian Oil Industry Nationalization Day
        Date(2011, 3, 21), # Nowruz
        Date(2011, 3, 22), # Nowruz Holiday
        Date(2011, 3, 23), # Nowruz Holiday
        Date(2011, 3, 24), # Nowruz Holiday
        Date(2011, 4, 1), # Islamic Republic Day
        Date(2011, 4, 2), # Nature's Day
        Date(2011, 5, 7), # Martyrdom of Fatima
        Date(2011, 6, 4), # Death of Imam Khomeini
        Date(2011, 6, 5), # 15 Khordad Uprising
        Date(2011, 6, 16), # Birthday of Imam Ali
        Date(2011, 6, 30), # Isra' and Mi'raj
        Date(2011, 7, 17), # Birthday of Mahdi
        Date(2011, 8, 21), # Martyrdom of Imam Ali
        Date(2011, 8, 31), # Eid al-Fitr
        Date(2011, 9, 1), # Eid al-Fitr Holiday
        Date(2011, 9, 24), # Martyrdom of Imam Ja'far al-Sadiq
        Date(2011, 11, 7), # Eid al-Adha
        Date(2011, 11, 15), # Eid al-Ghadeer
        Date(2011, 12, 5), # Tasua
        Date(2011, 12, 6), # Ashura
        Date(2012, 1, 14), # Arbaeen
        Date(2012, 1, 22), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali
        Date(2012, 1, 24), # Martyrdom of Ali al-Rida
        Date(2012, 2, 1), # Martyrdom of Hasan al-Askari
        Date(2012, 2, 10), # Birthday of Muhammad and Imam Ja'far al-Sadiq
        Date(2012, 2, 11), # Islamic Revolution Day
        Date(2012, 3, 19), # Iranian Oil Industry Nationalization Day
        Date(2012, 3, 20), # Nowruz
        Date(2012, 3, 21), # Nowruz Holiday
        Date(2012, 3, 22), # Nowruz Holiday
        Date(2012, 3, 23), # Nowruz Holiday
        Date(2012, 3, 31), # Islamic Republic Day
        Date(2012, 4, 1), # Nature's Day
        Date(2012, 4, 25), # Martyrdom of Fatima
        Date(2012, 6, 3), # Death of Imam Khomeini
        Date(2012, 6, 4), # 15 Khordad Uprising; Birthday of Imam Ali
        Date(2012, 6, 18), # Isra' and Mi'raj
        Date(2012, 7, 5), # Birthday of Mahdi
        Date(2012, 8, 10), # Martyrdom of Imam Ali
        Date(2012, 8, 19), # Eid al-Fitr
        Date(2012, 8, 20), # Eid al-Fitr Holiday
        Date(2012, 9, 12), # Martyrdom of Imam Ja'far al-Sadiq
        Date(2012, 10, 26), # Eid al-Adha
        Date(2012, 11, 3), # Eid al-Ghadeer
        Date(2012, 11, 24), # Tasua
        Date(2012, 11, 25), # Ashura
        Date(2013, 1, 3), # Arbaeen
        Date(2013, 1, 11), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali
        Date(2013, 1, 12), # Martyrdom of Ali al-Rida
        Date(2013, 1, 20), # Martyrdom of Hasan al-Askari
        Date(2013, 1, 29), # Birthday of Muhammad and Imam Ja'far al-Sadiq
        Date(2013, 2, 10), # Islamic Revolution Day
        Date(2013, 3, 19), # Iranian Oil Industry Nationalization Day
        Date(2013, 3, 20), # Last Day of Year
        Date(2013, 3, 21), # Nowruz
        Date(2013, 3, 22), # Nowruz Holiday
        Date(2013, 3, 23), # Nowruz Holiday
        Date(2013, 3, 24), # Nowruz Holiday
        Date(2013, 4, 1), # Islamic Republic Day
        Date(2013, 4, 2), # Nature's Day
        Date(2013, 4, 14), # Martyrdom of Fatima
        Date(2013, 5, 24), # Birthday of Imam Ali
        Date(2013, 6, 4), # Death of Imam Khomeini
        Date(2013, 6, 5), # 15 Khordad Uprising
        Date(2013, 6, 7), # Isra' and Mi'raj
        Date(2013, 6, 24), # Birthday of Mahdi
        Date(2013, 7, 30), # Martyrdom of Imam Ali
        Date(2013, 8, 9), # Eid al-Fitr
        Date(2013, 8, 10), # Eid al-Fitr Holiday
        Date(2013, 9, 2), # Martyrdom of Imam Ja'far al-Sadiq
        Date(2013, 10, 16), # Eid al-Adha
        Date(2013, 10, 24), # Eid al-Ghadeer
        Date(2013, 11, 13), # Tasua
        Date(2013, 11, 14), # Ashura
        Date(2013, 12, 23), # Arbaeen
        Date(2013, 12, 31), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali
        Date(2014, 1, 2), # Martyrdom of Ali al-Rida
        Date(2014, 1, 10), # Martyrdom of Hasan al-Askari
        Date(2014, 1, 19), # Birthday of Muhammad and Imam Ja'far al-Sadiq
        Date(2014, 2, 11), # Islamic Revolution Day
        Date(2014, 3, 20), # Iranian Oil Industry Nationalization Day
        Date(2014, 3, 21), # Nowruz
        Date(2014, 3, 22), # Nowruz Holiday
        Date(2014, 3, 23), # Nowruz Holiday
        Date(2014, 3, 24), # Nowruz Holiday
        Date(2014, 4, 1), # Islamic Republic Day
        Date(2014, 4, 2), # Nature's Day
        Date(2014, 4, 3), # Martyrdom of Fatima
        Date(2014, 5, 13), # Birthday of Imam Ali
        Date(2014, 5, 27), # Isra' and Mi'raj
        Date(2014, 6, 4), # Death of Imam Khomeini
        Date(2014, 6, 5), # 15 Khordad Uprising
        Date(2014, 6, 13), # Birthday of Mahdi
        Date(2014, 7, 19), # Martyrdom of Imam Ali
        Date(2014, 7, 29), # Eid al-Fitr
        Date(2014, 7, 30), # Eid al-Fitr Holiday
        Date(2014, 8, 22), # Martyrdom of Imam Ja'far al-Sadiq
        Date(2014, 10, 5), # Eid al-Adha
        Date(2014, 10, 13), # Eid al-Ghadeer
        Date(2014, 11, 3), # Tasua
        Date(2014, 11, 4), # Ashura
        Date(2014, 12, 13), # Arbaeen
        Date(2014, 12, 21), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali
        Date(2014, 12, 23), # Martyrdom of Ali al-Rida
        Date(2014, 12, 31), # Martyrdom of Hasan al-Askari
        Date(2015, 1, 9), # Birthday of Muhammad and Imam Ja'far al-Sadiq
        Date(2015, 2, 11), # Islamic Revolution Day
        Date(2015, 3, 20), # Iranian Oil Industry Nationalization Day
        Date(2015, 3, 21), # Nowruz
        Date(2015, 3, 22), # Nowruz Holiday
        Date(2015, 3, 23), # Nowruz Holiday
        Date(2015, 3, 24), # Martyrdom of Fatima; Nowruz Holiday
        Date(2015, 4, 1), # Islamic Republic Day
        Date(2015, 4, 2), # Nature's Day
        Date(2015, 5, 2), # Birthday of Imam Ali
        Date(2015, 5, 16), # Isra' and Mi'raj
        Date(2015, 6, 3), # Birthday of Mahdi
        Date(2015, 6, 4), # Death of Imam Khomeini
        Date(2015, 6, 5), # 15 Khordad Uprising
        Date(2015, 7, 8), # Martyrdom of Imam Ali
        Date(2015, 7, 18), # Eid al-Fitr
        Date(2015, 7, 19), # Eid al-Fitr Holiday
        Date(2015, 8, 11), # Martyrdom of Imam Ja'far al-Sadiq
        Date(2015, 9, 24), # Eid al-Adha
        Date(2015, 10, 2), # Eid al-Ghadeer
        Date(2015, 10, 23), # Tasua
        Date(2015, 10, 24), # Ashura
        Date(2015, 12, 2), # Arbaeen
        Date(2015, 12, 10), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali
        Date(2015, 12, 12), # Martyrdom of Ali al-Rida
        Date(2015, 12, 20), # Martyrdom of Hasan al-Askari
        Date(2015, 12, 29), # Birthday of Muhammad and Imam Ja'far al-Sadiq
        Date(2016, 2, 11), # Islamic Revolution Day
        Date(2016, 3, 13), # Martyrdom of Fatima
        Date(2016, 3, 19), # Iranian Oil Industry Nationalization Day
        Date(2016, 3, 20), # Nowruz
        Date(2016, 3, 21), # Nowruz Holiday
        Date(2016, 3, 22), # Nowruz Holiday
        Date(2016, 3, 23), # Nowruz Holiday
        Date(2016, 3, 31), # Islamic Republic Day
        Date(2016, 4, 1), # Nature's Day
        Date(2016, 4, 21), # Birthday of Imam Ali
        Date(2016, 5, 5), # Isra' and Mi'raj
        Date(2016, 5, 22), # Birthday of Mahdi
        Date(2016, 6, 3), # Death of Imam Khomeini
        Date(2016, 6, 4), # 15 Khordad Uprising
        Date(2016, 6, 27), # Martyrdom of Imam Ali
        Date(2016, 7, 6), # Eid al-Fitr
        Date(2016, 7, 7), # Eid al-Fitr Holiday
        Date(2016, 7, 30), # Martyrdom of Imam Ja'far al-Sadiq
        Date(2016, 9, 12), # Eid al-Adha
        Date(2016, 9, 20), # Eid al-Ghadeer
        Date(2016, 10, 11), # Tasua
        Date(2016, 10, 12), # Ashura
        Date(2016, 11, 20), # Arbaeen
        Date(2016, 11, 28), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali
        Date(2016, 11, 30), # Martyrdom of Ali al-Rida
        Date(2016, 12, 8), # Martyrdom of Hasan al-Askari
        Date(2016, 12, 17), # Birthday of Muhammad and Imam Ja'far al-Sadiq
        Date(2017, 2, 10), # Islamic Revolution Day
        Date(2017, 3, 2), # Martyrdom of Fatima
        Date(2017, 3, 19), # Iranian Oil Industry Nationalization Day
        Date(2017, 3, 20), # Last Day of Year
        Date(2017, 3, 21), # Nowruz
        Date(2017, 3, 22), # Nowruz Holiday
        Date(2017, 3, 23), # Nowruz Holiday
        Date(2017, 3, 24), # Nowruz Holiday
        Date(2017, 4, 1), # Islamic Republic Day
        Date(2017, 4, 2), # Nature's Day
        Date(2017, 4, 11), # Birthday of Imam Ali
        Date(2017, 4, 25), # Isra' and Mi'raj
        Date(2017, 5, 12), # Birthday of Mahdi
        Date(2017, 6, 4), # Death of Imam Khomeini
        Date(2017, 6, 5), # 15 Khordad Uprising
        Date(2017, 6, 16), # Martyrdom of Imam Ali
        Date(2017, 6, 26), # Eid al-Fitr
        Date(2017, 6, 27), # Eid al-Fitr Holiday
        Date(2017, 7, 20), # Martyrdom of Imam Ja'far al-Sadiq
        Date(2017, 9, 1), # Eid al-Adha
        Date(2017, 9, 9), # Eid al-Ghadeer
        Date(2017, 9, 30), # Tasua
        Date(2017, 10, 1), # Ashura
        Date(2017, 11, 9), # Arbaeen
        Date(2017, 11, 17), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali
        Date(2017, 11, 19), # Martyrdom of Ali al-Rida
        Date(2017, 11, 27), # Martyrdom of Hasan al-Askari
        Date(2017, 12, 6), # Birthday of Muhammad and Imam Ja'far al-Sadiq
        Date(2018, 2, 11), # Islamic Revolution Day
        Date(2018, 2, 20), # Martyrdom of Fatima
        Date(2018, 3, 20), # Iranian Oil Industry Nationalization Day
        Date(2018, 3, 21), # Nowruz
        Date(2018, 3, 22), # Nowruz Holiday
        Date(2018, 3, 23), # Nowruz Holiday
        Date(2018, 3, 24), # Nowruz Holiday
        Date(2018, 3, 31), # Birthday of Imam Ali
        Date(2018, 4, 1), # Islamic Republic Day
        Date(2018, 4, 2), # Nature's Day
        Date(2018, 4, 14), # Isra' and Mi'raj
        Date(2018, 5, 2), # Birthday of Mahdi
        Date(2018, 6, 4), # Death of Imam Khomeini
        Date(2018, 6, 5), # 15 Khordad Uprising
        Date(2018, 6, 6), # Martyrdom of Imam Ali
        Date(2018, 6, 15), # Eid al-Fitr
        Date(2018, 6, 16), # Eid al-Fitr Holiday
        Date(2018, 7, 9), # Martyrdom of Imam Ja'far al-Sadiq
        Date(2018, 8, 22), # Eid al-Adha
        Date(2018, 8, 30), # Eid al-Ghadeer
        Date(2018, 9, 19), # Tasua
        Date(2018, 9, 20), # Ashura
        Date(2018, 10, 30), # Arbaeen
        Date(2018, 11, 7), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali
        Date(2018, 11, 8), # Martyrdom of Ali al-Rida
        Date(2018, 11, 16), # Martyrdom of Hasan al-Askari
        Date(2018, 11, 25), # Birthday of Muhammad and Imam Ja'far al-Sadiq
        Date(2019, 2, 9), # Martyrdom of Fatima
        Date(2019, 2, 11), # Islamic Revolution Day
        Date(2019, 3, 20), # Birthday of Imam Ali; Iranian Oil Industry Nationalization Day
        Date(2019, 3, 21), # Nowruz
        Date(2019, 3, 22), # Nowruz Holiday
        Date(2019, 3, 23), # Nowruz Holiday
        Date(2019, 3, 24), # Nowruz Holiday
        Date(2019, 4, 1), # Islamic Republic Day
        Date(2019, 4, 2), # Nature's Day
        Date(2019, 4, 3), # Isra' and Mi'raj
        Date(2019, 4, 21), # Birthday of Mahdi
        Date(2019, 5, 27), # Martyrdom of Imam Ali
        Date(2019, 6, 4), # Death of Imam Khomeini
        Date(2019, 6, 5), # 15 Khordad Uprising; Eid al-Fitr
        Date(2019, 6, 6), # Eid al-Fitr Holiday
        Date(2019, 6, 29), # Martyrdom of Imam Ja'far al-Sadiq
        Date(2019, 8, 12), # Eid al-Adha
        Date(2019, 8, 20), # Eid al-Ghadeer
        Date(2019, 9, 9), # Tasua
        Date(2019, 9, 10), # Ashura
        Date(2019, 10, 19), # Arbaeen
        Date(2019, 10, 27), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali
        Date(2019, 10, 29), # Martyrdom of Ali al-Rida
        Date(2019, 11, 6), # Martyrdom of Hasan al-Askari
        Date(2019, 11, 15), # Birthday of Muhammad and Imam Ja'far al-Sadiq
        Date(2020, 1, 29), # Martyrdom of Fatima
        Date(2020, 2, 11), # Islamic Revolution Day
        Date(2020, 3, 8), # Birthday of Imam Ali
        Date(2020, 3, 19), # Iranian Oil Industry Nationalization Day
        Date(2020, 3, 20), # Nowruz
        Date(2020, 3, 21), # Nowruz Holiday
        Date(2020, 3, 22), # Isra' and Mi'raj; Nowruz Holiday
        Date(2020, 3, 23), # Nowruz Holiday
        Date(2020, 3, 31), # Islamic Republic Day
        Date(2020, 4, 1), # Nature's Day
        Date(2020, 4, 9), # Birthday of Mahdi
        Date(2020, 5, 15), # Martyrdom of Imam Ali
        Date(2020, 5, 24), # Eid al-Fitr
        Date(2020, 5, 25), # Eid al-Fitr Holiday
        Date(2020, 6, 3), # Death of Imam Khomeini
        Date(2020, 6, 4), # 15 Khordad Uprising
        Date(2020, 6, 17), # Martyrdom of Imam Ja'far al-Sadiq
        Date(2020, 7, 31), # Eid al-Adha
        Date(2020, 8, 8), # Eid al-Ghadeer
        Date(2020, 8, 29), # Tasua
        Date(2020, 8, 30), # Ashura
        Date(2020, 10, 8), # Arbaeen
        Date(2020, 10, 16), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali
        Date(2020, 10, 17), # Martyrdom of Ali al-Rida
        Date(2020, 10, 25), # Martyrdom of Hasan al-Askari
        Date(2020, 11, 3), # Birthday of Muhammad and Imam Ja'far al-Sadiq
        Date(2021, 1, 17), # Martyrdom of Fatima
        Date(2021, 2, 10), # Islamic Revolution Day
        Date(2021, 2, 25), # Birthday of Imam Ali
        Date(2021, 3, 11), # Isra' and Mi'raj
        Date(2021, 3, 19), # Iranian Oil Industry Nationalization Day
        Date(2021, 3, 20), # Last Day of Year
        Date(2021, 3, 21), # Nowruz
        Date(2021, 3, 22), # Nowruz Holiday
        Date(2021, 3, 23), # Nowruz Holiday
        Date(2021, 3, 24), # Nowruz Holiday
        Date(2021, 3, 29), # Birthday of Mahdi
        Date(2021, 4, 1), # Islamic Republic Day
        Date(2021, 4, 2), # Nature's Day
        Date(2021, 5, 4), # Martyrdom of Imam Ali
        Date(2021, 5, 13), # Eid al-Fitr
        Date(2021, 5, 14), # Eid al-Fitr Holiday
        Date(2021, 6, 4), # Death of Imam Khomeini
        Date(2021, 6, 5), # 15 Khordad Uprising
        Date(2021, 6, 6), # Martyrdom of Imam Ja'far al-Sadiq
        Date(2021, 7, 21), # Eid al-Adha
        Date(2021, 7, 29), # Eid al-Ghadeer
        Date(2021, 8, 18), # Tasua
        Date(2021, 8, 19), # Ashura
        Date(2021, 9, 27), # Arbaeen
        Date(2021, 10, 5), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali
        Date(2021, 10, 7), # Martyrdom of Ali al-Rida
        Date(2021, 10, 15), # Martyrdom of Hasan al-Askari
        Date(2021, 10, 24), # Birthday of Muhammad and Imam Ja'far al-Sadiq
        Date(2022, 1, 6), # Martyrdom of Fatima
        Date(2022, 2, 11), # Islamic Revolution Day
        Date(2022, 2, 15), # Birthday of Imam Ali
        Date(2022, 3, 1), # Isra' and Mi'raj
        Date(2022, 3, 18), # Birthday of Mahdi
        Date(2022, 3, 20), # Iranian Oil Industry Nationalization Day
        Date(2022, 3, 21), # Nowruz
        Date(2022, 3, 22), # Nowruz Holiday
        Date(2022, 3, 23), # Nowruz Holiday
        Date(2022, 3, 24), # Nowruz Holiday
        Date(2022, 4, 1), # Islamic Republic Day
        Date(2022, 4, 2), # Nature's Day
        Date(2022, 4, 23), # Martyrdom of Imam Ali
        Date(2022, 5, 3), # Eid al-Fitr
        Date(2022, 5, 4), # Eid al-Fitr Holiday
        Date(2022, 5, 27), # Martyrdom of Imam Ja'far al-Sadiq
        Date(2022, 6, 4), # Death of Imam Khomeini
        Date(2022, 6, 5), # 15 Khordad Uprising
        Date(2022, 7, 10), # Eid al-Adha
        Date(2022, 7, 18), # Eid al-Ghadeer
        Date(2022, 8, 7), # Tasua
        Date(2022, 8, 8), # Ashura
        Date(2022, 9, 17), # Arbaeen
        Date(2022, 9, 25), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali
        Date(2022, 9, 27), # Martyrdom of Ali al-Rida
        Date(2022, 10, 5), # Martyrdom of Hasan al-Askari
        Date(2022, 10, 14), # Birthday of Muhammad and Imam Ja'far al-Sadiq
        Date(2022, 12, 27), # Martyrdom of Fatima
        Date(2023, 2, 4), # Birthday of Imam Ali
        Date(2023, 2, 11), # Islamic Revolution Day
        Date(2023, 2, 18), # Isra' and Mi'raj
        Date(2023, 3, 8), # Birthday of Mahdi
        Date(2023, 3, 20), # Iranian Oil Industry Nationalization Day
        Date(2023, 3, 21), # Nowruz
        Date(2023, 3, 22), # Nowruz Holiday
        Date(2023, 3, 23), # Nowruz Holiday
        Date(2023, 3, 24), # Nowruz Holiday
        Date(2023, 4, 1), # Islamic Republic Day
        Date(2023, 4, 2), # Nature's Day
        Date(2023, 4, 12), # Martyrdom of Imam Ali
        Date(2023, 4, 22), # Eid al-Fitr
        Date(2023, 4, 23), # Eid al-Fitr Holiday
        Date(2023, 5, 16), # Martyrdom of Imam Ja'far al-Sadiq
        Date(2023, 6, 4), # Death of Imam Khomeini
        Date(2023, 6, 5), # 15 Khordad Uprising
        Date(2023, 6, 29), # Eid al-Adha
        Date(2023, 7, 7), # Eid al-Ghadeer
        Date(2023, 7, 27), # Tasua
        Date(2023, 7, 28), # Ashura
        Date(2023, 9, 6), # Arbaeen
        Date(2023, 9, 14), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali
        Date(2023, 9, 16), # Martyrdom of Ali al-Rida
        Date(2023, 9, 24), # Martyrdom of Hasan al-Askari
        Date(2023, 10, 3), # Birthday of Muhammad and Imam Ja'far al-Sadiq
        Date(2023, 12, 17), # Martyrdom of Fatima
        Date(2024, 1, 25), # Birthday of Imam Ali
        Date(2024, 2, 8), # Isra' and Mi'raj
        Date(2024, 2, 11), # Islamic Revolution Day
        Date(2024, 2, 25), # Birthday of Mahdi
        Date(2024, 3, 19), # Iranian Oil Industry Nationalization Day
        Date(2024, 3, 20), # Nowruz
        Date(2024, 3, 21), # Nowruz Holiday
        Date(2024, 3, 22), # Nowruz Holiday
        Date(2024, 3, 23), # Nowruz Holiday
        Date(2024, 3, 31), # Islamic Republic Day
        Date(2024, 4, 1), # Martyrdom of Imam Ali; Nature's Day
        Date(2024, 4, 10), # Eid al-Fitr
        Date(2024, 4, 11), # Eid al-Fitr Holiday
        Date(2024, 5, 4), # Martyrdom of Imam Ja'far al-Sadiq
        Date(2024, 6, 3), # Death of Imam Khomeini
        Date(2024, 6, 4), # 15 Khordad Uprising
        Date(2024, 6, 17), # Eid al-Adha
        Date(2024, 6, 25), # Eid al-Ghadeer
        Date(2024, 7, 15), # Tasua
        Date(2024, 7, 16), # Ashura
        Date(2024, 8, 25), # Arbaeen
        Date(2024, 9, 2), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali
        Date(2024, 9, 4), # Martyrdom of Ali al-Rida
        Date(2024, 9, 12), # Martyrdom of Hasan al-Askari
        Date(2024, 9, 21), # Birthday of Muhammad and Imam Ja'far al-Sadiq
        Date(2024, 12, 5), # Martyrdom of Fatima
        Date(2025, 1, 14), # Birthday of Imam Ali
        Date(2025, 1, 28), # Isra' and Mi'raj
        Date(2025, 2, 10), # Islamic Revolution Day
        Date(2025, 2, 14), # Birthday of Mahdi
        Date(2025, 3, 19), # Iranian Oil Industry Nationalization Day
        Date(2025, 3, 20), # Last Day of Year
        Date(2025, 3, 21), # Nowruz
        Date(2025, 3, 22), # Martyrdom of Imam Ali; Nowruz Holiday
        Date(2025, 3, 23), # Nowruz Holiday
        Date(2025, 3, 24), # Nowruz Holiday
        Date(2025, 3, 31), # Eid al-Fitr
        Date(2025, 4, 1), # Eid al-Fitr Holiday; Islamic Republic Day
        Date(2025, 4, 2), # Nature's Day
        Date(2025, 4, 24), # Martyrdom of Imam Ja'far al-Sadiq
        Date(2025, 6, 4), # Death of Imam Khomeini
        Date(2025, 6, 5), # 15 Khordad Uprising
        Date(2025, 6, 6), # Eid al-Adha
        Date(2025, 6, 14), # Eid al-Ghadeer
        Date(2025, 7, 5), # Tasua
        Date(2025, 7, 6), # Ashura
        Date(2025, 8, 14), # Arbaeen
        Date(2025, 8, 22), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali
        Date(2025, 8, 24), # Martyrdom of Ali al-Rida
        Date(2025, 9, 1), # Martyrdom of Hasan al-Askari
        Date(2025, 9, 10), # Birthday of Muhammad and Imam Ja'far al-Sadiq
        Date(2025, 11, 24), # Martyrdom of Fatima
        Date(2026, 1, 2), # Birthday of Imam Ali (estimated)
        Date(2026, 1, 16), # Isra' and Mi'raj (estimated)
        Date(2026, 2, 3), # Birthday of Mahdi (estimated)
        Date(2026, 2, 11), # Islamic Revolution Day
        Date(2026, 3, 10), # Martyrdom of Imam Ali (estimated)
        Date(2026, 3, 20), # Eid al-Fitr (estimated); Iranian Oil Industry Nationalization Day
        Date(2026, 3, 21), # Eid al-Fitr Holiday (estimated); Nowruz
        Date(2026, 3, 22), # Nowruz Holiday
        Date(2026, 3, 23), # Nowruz Holiday
        Date(2026, 3, 24), # Nowruz Holiday
        Date(2026, 4, 1), # Islamic Republic Day
        Date(2026, 4, 2), # Nature's Day
        Date(2026, 4, 13), # Martyrdom of Imam Ja'far al-Sadiq (estimated)
        Date(2026, 5, 27), # Eid al-Adha (estimated)
        Date(2026, 6, 4), # Death of Imam Khomeini; Eid al-Ghadeer (estimated)
        Date(2026, 6, 5), # 15 Khordad Uprising
        Date(2026, 6, 24), # Tasua (estimated)
        Date(2026, 6, 25), # Ashura (estimated)
        Date(2026, 8, 3), # Arbaeen (estimated)
        Date(2026, 8, 11), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali (estimated)
        Date(2026, 8, 13), # Martyrdom of Ali al-Rida (estimated)
        Date(2026, 8, 21), # Martyrdom of Hasan al-Askari (estimated)
        Date(2026, 8, 30), # Birthday of Muhammad and Imam Ja'far al-Sadiq (estimated)
        Date(2026, 11, 13), # Martyrdom of Fatima (estimated)
        Date(2026, 12, 22), # Birthday of Imam Ali (estimated)
        Date(2027, 1, 5), # Isra' and Mi'raj (estimated)
        Date(2027, 1, 23), # Birthday of Mahdi (estimated)
        Date(2027, 2, 11), # Islamic Revolution Day
        Date(2027, 2, 28), # Martyrdom of Imam Ali (estimated)
        Date(2027, 3, 9), # Eid al-Fitr (estimated)
        Date(2027, 3, 10), # Eid al-Fitr Holiday (estimated)
        Date(2027, 3, 20), # Iranian Oil Industry Nationalization Day
        Date(2027, 3, 21), # Nowruz
        Date(2027, 3, 22), # Nowruz Holiday
        Date(2027, 3, 23), # Nowruz Holiday
        Date(2027, 3, 24), # Nowruz Holiday
        Date(2027, 4, 1), # Islamic Republic Day
        Date(2027, 4, 2), # Martyrdom of Imam Ja'far al-Sadiq (estimated); Nature's Day
        Date(2027, 5, 16), # Eid al-Adha (estimated)
        Date(2027, 5, 24), # Eid al-Ghadeer (estimated)
        Date(2027, 6, 4), # Death of Imam Khomeini
        Date(2027, 6, 5), # 15 Khordad Uprising
        Date(2027, 6, 14), # Tasua (estimated)
        Date(2027, 6, 15), # Ashura (estimated)
        Date(2027, 7, 24), # Arbaeen (estimated)
        Date(2027, 8, 1), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali (estimated)
        Date(2027, 8, 2), # Martyrdom of Ali al-Rida (estimated)
        Date(2027, 8, 10), # Martyrdom of Hasan al-Askari (estimated)
        Date(2027, 8, 19), # Birthday of Muhammad and Imam Ja'far al-Sadiq (estimated)
        Date(2027, 11, 2), # Martyrdom of Fatima (estimated)
        Date(2027, 12, 11), # Birthday of Imam Ali (estimated)
        Date(2027, 12, 25), # Isra' and Mi'raj (estimated)
        Date(2028, 1, 12), # Birthday of Mahdi (estimated)
        Date(2028, 2, 11), # Islamic Revolution Day
        Date(2028, 2, 17), # Martyrdom of Imam Ali (estimated)
        Date(2028, 2, 26), # Eid al-Fitr (estimated)
        Date(2028, 2, 27), # Eid al-Fitr Holiday (estimated)
        Date(2028, 3, 19), # Iranian Oil Industry Nationalization Day
        Date(2028, 3, 20), # Nowruz
        Date(2028, 3, 21), # Martyrdom of Imam Ja'far al-Sadiq (estimated); Nowruz Holiday
        Date(2028, 3, 22), # Nowruz Holiday
        Date(2028, 3, 23), # Nowruz Holiday
        Date(2028, 3, 31), # Islamic Republic Day
        Date(2028, 4, 1), # Nature's Day
        Date(2028, 5, 5), # Eid al-Adha (estimated)
        Date(2028, 5, 13), # Eid al-Ghadeer (estimated)
        Date(2028, 6, 2), # Tasua (estimated)
        Date(2028, 6, 3), # Ashura (estimated); Death of Imam Khomeini
        Date(2028, 6, 4), # 15 Khordad Uprising
        Date(2028, 7, 13), # Arbaeen (estimated)
        Date(2028, 7, 21), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali (estimated)
        Date(2028, 7, 22), # Martyrdom of Ali al-Rida (estimated)
        Date(2028, 7, 30), # Martyrdom of Hasan al-Askari (estimated)
        Date(2028, 8, 8), # Birthday of Muhammad and Imam Ja'far al-Sadiq (estimated)
        Date(2028, 10, 21), # Martyrdom of Fatima (estimated)
        Date(2028, 11, 30), # Birthday of Imam Ali (estimated)
        Date(2028, 12, 14), # Isra' and Mi'raj (estimated)
        Date(2028, 12, 31), # Birthday of Mahdi (estimated)
        Date(2029, 2, 5), # Martyrdom of Imam Ali (estimated)
        Date(2029, 2, 10), # Islamic Revolution Day
        Date(2029, 2, 14), # Eid al-Fitr (estimated)
        Date(2029, 2, 15), # Eid al-Fitr Holiday (estimated)
        Date(2029, 3, 10), # Martyrdom of Imam Ja'far al-Sadiq (estimated)
        Date(2029, 3, 19), # Iranian Oil Industry Nationalization Day
        Date(2029, 3, 20), # Nowruz
        Date(2029, 3, 21), # Nowruz Holiday
        Date(2029, 3, 22), # Nowruz Holiday
        Date(2029, 3, 23), # Nowruz Holiday
        Date(2029, 3, 31), # Islamic Republic Day
        Date(2029, 4, 1), # Nature's Day
        Date(2029, 4, 24), # Eid al-Adha (estimated)
        Date(2029, 5, 2), # Eid al-Ghadeer (estimated)
        Date(2029, 5, 22), # Tasua (estimated)
        Date(2029, 5, 23), # Ashura (estimated)
        Date(2029, 6, 3), # Death of Imam Khomeini
        Date(2029, 6, 4), # 15 Khordad Uprising
        Date(2029, 7, 2), # Arbaeen (estimated)
        Date(2029, 7, 10), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali (estimated)
        Date(2029, 7, 12), # Martyrdom of Ali al-Rida (estimated)
        Date(2029, 7, 20), # Martyrdom of Hasan al-Askari (estimated)
        Date(2029, 7, 29), # Birthday of Muhammad and Imam Ja'far al-Sadiq (estimated)
        Date(2029, 10, 11), # Martyrdom of Fatima (estimated)
        Date(2029, 11, 19), # Birthday of Imam Ali (estimated)
        Date(2029, 12, 3), # Isra' and Mi'raj (estimated)
        Date(2029, 12, 21), # Birthday of Mahdi (estimated)
        Date(2030, 1, 25), # Martyrdom of Imam Ali (estimated)
        Date(2030, 2, 4), # Eid al-Fitr (estimated)
        Date(2030, 2, 5), # Eid al-Fitr Holiday (estimated)
        Date(2030, 2, 10), # Islamic Revolution Day
        Date(2030, 2, 28), # Martyrdom of Imam Ja'far al-Sadiq (estimated)
        Date(2030, 3, 19), # Iranian Oil Industry Nationalization Day
        Date(2030, 3, 20), # Last Day of Year
        Date(2030, 3, 21), # Nowruz
        Date(2030, 3, 22), # Nowruz Holiday
        Date(2030, 3, 23), # Nowruz Holiday
        Date(2030, 3, 24), # Nowruz Holiday
        Date(2030, 4, 1), # Islamic Republic Day
        Date(2030, 4, 2), # Nature's Day
        Date(2030, 4, 13), # Eid al-Adha (estimated)
        Date(2030, 4, 21), # Eid al-Ghadeer (estimated)
        Date(2030, 5, 11), # Tasua (estimated)
        Date(2030, 5, 12), # Ashura (estimated)
        Date(2030, 6, 4), # Death of Imam Khomeini
        Date(2030, 6, 5), # 15 Khordad Uprising
        Date(2030, 6, 21), # Arbaeen (estimated)
        Date(2030, 6, 29), # Death of Prophet Muhammad and Martyrdom of Hasan ibn Ali (estimated)
        Date(2030, 7, 1), # Martyrdom of Ali al-Rida (estimated)
        Date(2030, 7, 9), # Martyrdom of Hasan al-Askari (estimated)
        Date(2030, 7, 18), # Birthday of Muhammad and Imam Ja'far al-Sadiq (estimated)
        Date(2030, 10, 1), # Martyrdom of Fatima (estimated)
        Date(2030, 11, 9), # Birthday of Imam Ali (estimated)
        Date(2030, 11, 23), # Isra' and Mi'raj (estimated)
        Date(2030, 12, 10), # Birthday of Mahdi (estimated)
    ]

    test_holidays(calendar, holidays)

    return nothing
end

end
