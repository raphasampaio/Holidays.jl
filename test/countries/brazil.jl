function test_brazil()
    country = Holidays.Brazil()

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

    test_holidays(country, 2024, holidays)

    @testset "Acre" begin
        country = Holidays.Brazil(location = Location.Acre())
        test_holidays(country, 2024, holidays, [Date(2024, 1, 23), Date(2024, 3, 8), Date(2024, 6, 15), Date(2024, 9, 5), Date(2024, 11, 17)])
    end

    @testset "Alagoas" begin
        country = Holidays.Brazil(location = Location.Alagoas())
        test_holidays(country, 2024, holidays, [Date(2024, 6, 24), Date(2024, 6, 29), Date(2024, 9, 16)])
    end

    @testset "Amapa" begin
        country = Holidays.Brazil(location = Location.Amapa())
        test_holidays(country, 2024, holidays, [Date(2024, 3, 19), Date(2024, 9, 13)])
    end

    @testset "Amazonas" begin
        country = Holidays.Brazil(location = Location.Amazonas())
        test_holidays(country, 2024, holidays, [Date(2024, 9, 5), Date(2024, 12, 8)])
    end

    @testset "Bahia" begin
        country = Holidays.Brazil(location = Location.Bahia())
        test_holidays(country, 2024, holidays, [Date(2024, 7, 2)])
    end

    @testset "Brasilia" begin
        country = Holidays.Brazil(location = Location.Brasilia())
        test_holidays(country, 2024, holidays, [Date(2024, 4, 21), Date(2024, 11, 30)])
    end

    @testset "Ceara" begin
        country = Holidays.Brazil(location = Location.Ceara())
        test_holidays(country, 2024, holidays, [Date(2024, 3, 19), Date(2024, 3, 25), Date(2024, 8, 15)])
    end

    @testset "EspiritoSanto" begin
        country = Holidays.Brazil(location = Location.EspiritoSanto())
        test_holidays(country, 2024, holidays, [Date(2024, 4, 8)])
    end

    @testset "Goias" begin
        country = Holidays.Brazil(location = Location.Goias())
        test_holidays(country, 2024, holidays, [Date(2024, 5, 24), Date(2024, 7, 26), Date(2024, 10, 24)])
    end

    @testset "Maranhao" begin
        country = Holidays.Brazil(location = Location.Maranhao())
        test_holidays(country, 2024, holidays, [Date(2024, 7, 28)])
    end

    @testset "MatoGrosso" begin
        country = Holidays.Brazil(location = Location.MatoGrosso())
        test_holidays(country, 2024, holidays)
    end

    @testset "MatoGrossoDoSul" begin
        country = Holidays.Brazil(location = Location.MatoGrossoDoSul())
        test_holidays(country, 2024, holidays, [Date(2024, 10, 11)])
    end

    @testset "MinasGerais" begin
        country = Holidays.Brazil(location = Location.MinasGerais())
        test_holidays(country, 2024, holidays, [Date(2024, 4, 21)])
    end

    @testset "Para" begin
        country = Holidays.Brazil(location = Location.Para())
        test_holidays(country, 2024, holidays, [Date(2024, 8, 15)])
    end

    @testset "Paraiba" begin
        country = Holidays.Brazil(location = Location.Paraiba())
        test_holidays(country, 2024, holidays, [Date(2024, 8, 5)])
    end

    @testset "Parana" begin
        country = Holidays.Brazil(location = Location.Parana())
        test_holidays(country, 2024, holidays, [Date(2024, 11, 15), Date(2024, 12, 19)])
    end

    @testset "Pernambuco" begin
        country = Holidays.Brazil(location = Location.Pernambuco())
        test_holidays(country, 2024, holidays, [Date(2024, 3, 6), Date(2024, 6, 24)])
    end

    @testset "Piaui" begin
        country = Holidays.Brazil(location = Location.Piaui())
        test_holidays(country, 2024, holidays, [Date(2024, 10, 19)])
    end

    @testset "RioDeJaneiro" begin
        country = Holidays.Brazil(location = Location.RioDeJaneiro())
        test_holidays(country, 2024, holidays, [Date(2024, 4, 23)])
    end

    @testset "RioGrandeDoNorte" begin
        country = Holidays.Brazil(location = Location.RioGrandeDoNorte())
        test_holidays(country, 2024, holidays, [Date(2024, 8, 7), Date(2024, 10, 3)])
    end

    @testset "RioGrandeDoSul" begin
        country = Holidays.Brazil(location = Location.RioGrandeDoSul())
        test_holidays(country, 2024, holidays, [Date(2024, 9, 20)])
    end

    @testset "Rondonia" begin
        country = Holidays.Brazil(location = Location.Rondonia())
        test_holidays(country, 2024, holidays, [Date(2024, 1, 4), Date(2024, 6, 18)])
    end

    @testset "Roraima" begin
        country = Holidays.Brazil(location = Location.Roraima())
        test_holidays(country, 2024, holidays, [Date(2024, 10, 5)])
    end

    @testset "SantaCatarina" begin
        country = Holidays.Brazil(location = Location.SantaCatarina())
        test_holidays(country, 2024, holidays, [Date(2024, 8, 11), Date(2024, 11, 25)])
    end

    @testset "SaoPaulo" begin
        country = Holidays.Brazil(location = Location.SaoPaulo())
        test_holidays(country, 2024, holidays, [Date(2024, 7, 9)])
    end

    @testset "Sergipe" begin
        country = Holidays.Brazil(location = Location.Sergipe())
        test_holidays(country, 2024, holidays, [Date(2024, 7, 8)])
    end

    @testset "Tocantins" begin
        country = Holidays.Brazil(location = Location.Tocantins())
        test_holidays(country, 2024, holidays, [Date(2024, 3, 18), Date(2024, 9, 8), Date(2024, 10, 5)])
    end

    return nothing
end
