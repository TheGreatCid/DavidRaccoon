# 2D, removal of a block containing a sideset inside it
[Mesh]
  [gen]
    type = GeneratedMeshGenerator
    dim = 2
    nx = 5
    ny = 5
    xmin = 0
    xmax = 5
    ymin = 0
    ymax = 5
  []

  [left]
    type = SubdomainBoundingBoxGenerator
    input = gen
    block_id = 1
    bottom_left = '2 2 0'
    top_right = '3 3 1'
  []
  [right]
    type = SubdomainBoundingBoxGenerator
    input = left
    block_id = 2
    bottom_left = '3 2 0'
    top_right = '4 3 1'
  []
  [interior_sideset]
    type = SideSetsBetweenSubdomainsGenerator
    input = right
    primary_block = 1
    paired_block = 2
    new_boundary = interior_ss
  []
  [new_block_number]
    type = SubdomainBoundingBoxGenerator
    input = interior_sideset
    block_id = 3
    bottom_left = '0 0 0'
    top_right = '4 4 1'
  []
  [ed0]
    type = BlockDeletionGenerator
    input = new_block_number
    block_id = 3
  []
[]

[Variables]
  [u]
  []
[]

[Kernels]
  [dt]
    type = TimeDerivative
    variable = u
  []
  [diff]
    type = Diffusion
    variable = u
  []
[]

[BCs]
  [top]
    type = DirichletBC
    variable = u
    boundary = bottom
    value = 1
  []
[]

[Executioner]
  type = Transient
  start_time = 0
  end_time = 10
  dt = 10

  solve_type = NEWTON

  petsc_options_iname = '-pc_type -pc_hypre_type'
  petsc_options_value = 'hypre boomeramg'
[]

[Outputs]
  exodus = true
[]
