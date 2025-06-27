using Holidays

using Aqua
using Dates
using Test

include("aqua.jl")

include("calendars/christian.jl")
include("calendars/islamic.jl")

include("countries/argentina.jl")
include("countries/australia.jl")
include("countries/brazil.jl")
include("countries/canada.jl")
include("countries/china.jl")
include("countries/egypt.jl")
include("countries/france.jl")
include("countries/germany.jl")
include("countries/india.jl")
include("countries/italy.jl")
include("countries/japan.jl")
include("countries/mexico.jl")
include("countries/netherlands.jl")
include("countries/poland.jl")
include("countries/russia.jl")
include("countries/south_korea.jl")
include("countries/spain.jl")
include("countries/turkey.jl")
include("countries/united_kingdom.jl")
include("countries/united_states.jl")

function test_holidays(calendar::AbstractHolidayCalendar, year::Integer, holidays::Vector{Date})
    start_date = Date(year, 1, 1)
    end_date = Date(year, 12, 31)

    set = Set(holidays)

    for date in start_date:Day(1):end_date
        @testset "$date" begin
            @test (date in calendar) == (date in set)
        end
    end

    @test length(Holidays.find_holidays(calendar; years = [year])) == length(holidays)

    return nothing
end

function test_holidays(calendar::AbstractHolidayCalendar, year::Integer, holidays::Vector{Date}, more_holidays::Vector{Date})
    test_holidays(calendar, year, vcat(holidays, more_holidays))
    return nothing
end

function test_all()
    @testset "Aqua.jl" begin
        test_aqua()
    end

    @testset "Christian" begin
        test_christian()
    end 
       @testset "Islamic" begin
        test_islamic()
    end

    @testset "Argentina" begin
        test_argentina()
    end

    @testset "Australia" begin
        test_australia()
    end

    @testset "Brazil" begin
        test_brazil()
    end    
    
    @testset "Canada" begin
        test_canada()
    end

    @testset "China" begin
        test_china()
    end

    @testset "Egypt" begin
        test_egypt()
    end
    
    @testset "France" begin
        test_france()
    end

    @testset "Germany" begin
        test_germany()
    end

    @testset "India" begin
        test_india()
    end

    @testset "Italy" begin
        test_italy()
    end

    @testset "Japan" begin
        test_japan()
    end

    @testset "Mexico" begin
        test_mexico()
    end    
    
    @testset "Netherlands" begin
        test_netherlands()
    end

    @testset "Poland" begin
        test_poland()
    end

    @testset "Russia" begin
        test_russia()
    end

    @testset "South Korea" begin
        test_south_korea()
    end   
    
    @testset "Spain" begin
        test_spain()
    end

    @testset "Turkey" begin
        test_turkey()
    end

    @testset "United Kingdom" begin
        test_united_kingdom()
    end

    @testset "United States" begin
        test_united_states()
    end

    return nothing
end

test_all()
