function test_aqua()
    @testset "Ambiguities" begin
        Aqua.test_ambiguities(Holidays, recursive = false)
    end
    Aqua.test_all(Holidays, ambiguities = false)

    return nothing
end
