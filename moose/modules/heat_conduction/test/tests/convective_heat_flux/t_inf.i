
[Mesh]
  type = GeneratedMesh
  dim = 3
  nx = 10
[]

[Variables]
  [./temp]
    initial_condition = 200.0
  [../]
[]

[Kernels]
  [./heat_dt]
    type = TimeDerivative
    variable = temp
  [../]
  [./heat_conduction]
    type = HeatConduction
    variable = temp
    diffusion_coefficient = 1
  [../]
  [./heat]
    type = BodyForce
    variable = temp
    value = 0
  [../]
[]

[BCs]
  [./right]
    type = ConvectiveHeatFluxBC
    variable = temp
    boundary = 'right'
    T_infinity = 100.0
    heat_transfer_coefficient = 1
    heat_transfer_coefficient_dT = 0
  [../]
[]

[Postprocessors]
  [./left_temp]
    type = SideAverageValue
    variable = temp
    boundary = left
    execute_on = 'TIMESTEP_END initial'
  [../]
  [./right_temp]
    type = SideAverageValue
    variable = temp
    boundary = right
  [../]
  [./right_flux]
    type = SideFluxAverage
    variable = temp
    boundary = right
    diffusivity = 1
  [../]
[]

[Executioner]
  type = Transient

  num_steps = 10
  dt = 1e1

  nl_abs_tol = 1e-12
[]

[Outputs]
  # csv = true
  exodus = true
[]
