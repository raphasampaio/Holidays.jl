function test_brazil()
    calendar = Holidays.Brazil()

    holidays = [
        Date(2024, 1, 1),
        Date(2024, 2, 12),
        Date(2024, 2, 13),
        Date(2024, 2, 14),
        Date(2024, 3, 29),
        Date(2024, 4, 21),
        Date(2024, 5, 1),
        Date(2024, 5, 30),
        Date(2024, 9, 7),
        Date(2024, 10, 12),
        Date(2024, 11, 2),
        Date(2024, 11, 15),
        Date(2024, 11, 20),
        Date(2024, 12, 25),
    ]

    test_holidays(calendar, 2024, holidays)

    @testset "Acre" begin
        calendar = Holidays.Brazil(subdivision = Subdivision.Acre())
        test_holidays(calendar, 2024, holidays, [Date(2024, 1, 23), Date(2024, 3, 8), Date(2024, 6, 15), Date(2024, 9, 5), Date(2024, 11, 17)])
    end

    @testset "Alagoas" begin
        calendar = Holidays.Brazil(subdivision = Subdivision.Alagoas())
        test_holidays(calendar, 2024, holidays, [Date(2024, 6, 24), Date(2024, 6, 29), Date(2024, 9, 16)])
    end

    @testset "Amapa" begin
        calendar = Holidays.Brazil(subdivision = Subdivision.Amapa())
        test_holidays(calendar, 2024, holidays, [Date(2024, 3, 19), Date(2024, 9, 13)])
    end

    @testset "Amazonas" begin
        calendar = Holidays.Brazil(subdivision = Subdivision.Amazonas())
        test_holidays(calendar, 2024, holidays, [Date(2024, 9, 5), Date(2024, 12, 8)])
    end

    @testset "Bahia" begin
        calendar = Holidays.Brazil(subdivision = Subdivision.Bahia())
        test_holidays(calendar, 2024, holidays, [Date(2024, 7, 2)])
    end

    @testset "Brasilia" begin
        calendar = Holidays.Brazil(subdivision = Subdivision.Brasilia())
        test_holidays(calendar, 2024, holidays, [Date(2024, 4, 21), Date(2024, 11, 30)])
    end

    @testset "Ceara" begin
        calendar = Holidays.Brazil(subdivision = Subdivision.Ceara())
        test_holidays(calendar, 2024, holidays, [Date(2024, 3, 19), Date(2024, 3, 25), Date(2024, 8, 15)])
    end

    @testset "EspiritoSanto" begin
        calendar = Holidays.Brazil(subdivision = Subdivision.EspiritoSanto())
        test_holidays(calendar, 2024, holidays, [Date(2024, 4, 8)])
    end

    @testset "Goias" begin
        calendar = Holidays.Brazil(subdivision = Subdivision.Goias())
        test_holidays(calendar, 2024, holidays, [Date(2024, 5, 24), Date(2024, 7, 26), Date(2024, 10, 24)])
    end

    @testset "Maranhao" begin
        calendar = Holidays.Brazil(subdivision = Subdivision.Maranhao())
        test_holidays(calendar, 2024, holidays, [Date(2024, 7, 28)])
    end

    @testset "MatoGrosso" begin
        calendar = Holidays.Brazil(subdivision = Subdivision.MatoGrosso())
        test_holidays(calendar, 2024, holidays)
    end

    @testset "MatoGrossoDoSul" begin
        calendar = Holidays.Brazil(subdivision = Subdivision.MatoGrossoDoSul())
        test_holidays(calendar, 2024, holidays, [Date(2024, 10, 11)])
    end

    @testset "MinasGerais" begin
        calendar = Holidays.Brazil(subdivision = Subdivision.MinasGerais())
        test_holidays(calendar, 2024, holidays, [Date(2024, 4, 21)])
    end

    @testset "Para" begin
        calendar = Holidays.Brazil(subdivision = Subdivision.Para())
        test_holidays(calendar, 2024, holidays, [Date(2024, 8, 15)])
    end

    @testset "Paraiba" begin
        calendar = Holidays.Brazil(subdivision = Subdivision.Paraiba())
        test_holidays(calendar, 2024, holidays, [Date(2024, 8, 5)])
    end

    @testset "Parana" begin
        calendar = Holidays.Brazil(subdivision = Subdivision.Parana())
        test_holidays(calendar, 2024, holidays, [Date(2024, 11, 15), Date(2024, 12, 19)])
    end

    @testset "Pernambuco" begin
        calendar = Holidays.Brazil(subdivision = Subdivision.Pernambuco())
        test_holidays(calendar, 2024, holidays, [Date(2024, 3, 6), Date(2024, 6, 24)])
    end

    @testset "Piaui" begin
        calendar = Holidays.Brazil(subdivision = Subdivision.Piaui())
        test_holidays(calendar, 2024, holidays, [Date(2024, 10, 19)])
    end

    @testset "RioDeJaneiro" begin
        calendar = Holidays.Brazil(subdivision = Subdivision.RioDeJaneiro())
        test_holidays(calendar, 2024, holidays, [Date(2024, 4, 23)])
    end

    # @testset "RioGrandeDoNorte" begin
    #     calendar = Holidays.Brazil(subdivision = Subdivision.RioGrandeDoNorte())
    #     test_holidays(calendar, 2024, holidays, [Date(2024, 8, 7), Date(2024, 10, 3)])
    # end

    # @testset "RioGrandeDoSul" begin
    #     calendar = Holidays.Brazil(subdivision = Subdivision.RioGrandeDoSul())
    #     test_holidays(calendar, 2024, holidays, [Date(2024, 9, 20)])
    # end

    # @testset "Rondonia" begin
    #     calendar = Holidays.Brazil(subdivision = Subdivision.Rondonia())
    #     test_holidays(calendar, 2024, holidays, [Date(2024, 1, 4), Date(2024, 6, 18)])
    # end

    # @testset "Roraima" begin
    #     calendar = Holidays.Brazil(subdivision = Subdivision.Roraima())
    #     test_holidays(calendar, 2024, holidays, [Date(2024, 10, 5)])
    # end

    # @testset "SantaCatarina" begin
    #     calendar = Holidays.Brazil(subdivision = Subdivision.SantaCatarina())
    #     test_holidays(calendar, 2024, holidays, [Date(2024, 8, 11), Date(2024, 11, 25)])
    # end

    # @testset "SaoPaulo" begin
    #     calendar = Holidays.Brazil(subdivision = Subdivision.SaoPaulo())
    #     test_holidays(calendar, 2024, holidays, [Date(2024, 7, 9)])
    # end

    # @testset "Sergipe" begin
    #     calendar = Holidays.Brazil(subdivision = Subdivision.Sergipe())
    #     test_holidays(calendar, 2024, holidays, [Date(2024, 7, 8)])
    # end

    # @testset "Tocantins" begin
    #     calendar = Holidays.Brazil(subdivision = Subdivision.Tocantins())
    #     test_holidays(calendar, 2024, holidays, [Date(2024, 3, 18), Date(2024, 9, 8), Date(2024, 10, 5)])
    # end

    return nothing
end
