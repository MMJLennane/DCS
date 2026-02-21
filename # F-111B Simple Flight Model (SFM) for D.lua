# F-111B Simple Flight Model (SFM) for DCS (example, not for actual use)
# This is a simplified Lua-based SFM skeleton for DCS aircraft mods.
# Place in Mods/aircraft/F111B/Entry/SFM.lua

SFM_Data = {
    mass = 37000, -- kg, empty weight
    maxFuel = 16000, -- kg
    length = 22.4, -- meters
    wingspan = 19.2, -- meters (max sweep)
    wingArea = 61.0, -- m^2
    aspectRatio = 6.0,
    inertia = { -- moments of inertia (Ixx, Iyy, Izz, Ixy, Ixz, Iyz)
        250000, 900000, 1050000, 0, 0, 0
    },
    gear = {
        main = { pos = { -2.5, -3.0, 2.5 }, damping = 0.7 },
        nose = { pos = { 8.0, -3.0, 0.0 }, damping = 0.5 }
    },
    engine = {
        type = "turbofan",
        thrust = { min = 0, max = 2 * 93000 }, -- Newtons, TF30-P-12A x2
        afterburner = true,
        responseTime = 2.5
    },
    aerodynamics = {
        CL0 = 0.3, -- lift at zero AoA
        CLa = 5.5, -- lift curve slope
        CD0 = 0.025, -- zero-lift drag
        CDa = 0.045, -- induced drag
        CM0 = 0.02, -- pitching moment
        sweep = { min = 16, max = 72 }, -- degrees
        sweepControl = "auto"
    },
    limits = {
        gLoad = { min = -3, max = 7.33 },
        aoa = { min = -10, max = 25 }
    }
}

function SFM_Update(input, dt)
    -- input: table with throttle, stick, rudder, etc.
    -- dt: timestep
    -- This is a stub. Actual SFM logic would go here.
    -- Calculate forces, update velocities, positions, etc.
    -- Return updated state.
    return {}
end

return SFM_Data, SFM_Update