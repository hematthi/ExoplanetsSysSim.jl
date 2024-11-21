## ExoplanetsSysSim/src/planet.jl
## (c) 2015 Eric B. Ford

# export Planet

struct PlanetParamsExtra
    initial_radius::Float64       # solar radii (before envelope mass loss)
    initial_mass::Float64         # solar masses (before envelope mass loss)
    envelope_mass::Float64        # solar masses
    mass_loss_timescale::Float64  # Gyrs
    prob_retained::Float64        # probability of retaining envelope over age of system
    envelope_retained::Bool       # whether the planet has retained its envelope (if 'false', the planet's final radius and mass will differ from the initial values)
end

struct Planet
    radius::Float64     # solar radii
    mass::Float64       # solar masses
    id::Int64           # id number (for purposes of tracking or grouping planets)
    params_extra::PlanetParamsExtra
end

function Planet(radius::Float64, mass::Float64; id::Int64=0)
    params_extra = PlanetParamsExtra(0., 0., 0., 0., 0., true)
    pl = Planet(radius, mass, id, params_extra)
end

#Planet() = Planet(0.0, 0.0)  # Commented out, so don't accidentally have invalid Planets

function test_planet_constructors(sim_param::SimParam)
  #blank = Planet()
  earth = Planet(0.0091705248,3e-6)
end

