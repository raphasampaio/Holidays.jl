function test_brazil_rio_de_janeiro()
    return nothing
end

function test_brazil()
    country = Holidays.Brazil()

    @testset "New Year's Day" begin
        @test is_holiday(country, Date(2020, 1, 1)) == true
    end

    @testset "Good Friday" begin
        @test is_holiday(country, Date(2020, 4, 10)) == true
    end

    return nothing
end
