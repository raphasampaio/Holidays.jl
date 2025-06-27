module TestAqua

using Aqua
using Holidays
using Test

@testset "Aqua" begin
    Aqua.test_ambiguities(Holidays, recursive = false)
    Aqua.test_all(Holidays, ambiguities = false)
    return nothing
end

end
