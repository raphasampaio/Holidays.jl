function test_brazil_rio_de_janeiro()
    return nothing
end

function test_brazil()
    country = Holidays.Brazil()

    @test is_holiday(country, Date(2020, 1, 1)) == true

    return nothing
end
