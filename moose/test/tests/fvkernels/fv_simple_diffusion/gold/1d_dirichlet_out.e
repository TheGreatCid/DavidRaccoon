CDF      
      
len_string     !   len_line   Q   four      	time_step          len_name   !   num_dim       	num_nodes         num_elem      
num_el_blk        num_node_sets         num_side_sets         num_el_in_blk1        num_nod_per_el1       num_side_ss1      num_side_ss2      num_nod_ns1       num_nod_ns2       num_elem_var      num_info  0         api_version       @�
=   version       @�
=   floating_point_word_size            	file_size               int64_status             title         1d_dirichlet_out.e     maximum_name_length                    
time_whole                            i�   	eb_status                             �   eb_prop1               name      ID              �   	ns_status         	                    �   ns_prop1      	         name      ID              �   	ss_status         
                    �   ss_prop1      
         name      ID              �   coordx                            �   coordy                               coordz                            $   eb_names                       $      <   ns_names      	                 D      `   ss_names      
                 D      �   
coor_names                         d      �   node_num_map                          	L   connect1                  	elem_type         EDGE2               	X   elem_num_map                          	h   elem_ss1                          	p   side_ss1                          	t   elem_ss2                          	x   side_ss2                          	|   node_ns1                          	�   node_ns2                          	�   name_elem_var                          $      	�   vals_elem_var1eb1                                i�   elem_var_tab                             	�   info_records                      `0      	�                                         ?�      ?�                                                                                          left                             right                              left                             right                                                                                                                                                                               v                                      ####################                                                             # Created by MOOSE #                                                             ####################                                                             ### Command Line Arguments ###                                                    ../../../moose_test-dbg -i 1d_dirichlet.i### Version Info ###                                                                                                    Framework Information:                                                           MOOSE Version:           git commit 8e8e1dc67d on 2020-05-20                     LibMesh Version:         30d38fc9b5bc608655d033117a8d5cb59c57ae4c                PETSc Version:           3.12.5                                                  SLEPc Version:           3.12.1                                                  Current Time:            Thu May 21 12:33:26 2020                                Executable Timestamp:    Thu May 21 12:24:15 2020                                                                                                                                                                                                  ### Input File ###                                                                                                                                                []                                                                                 inactive                       = (no_default)                                    initial_from_file_timestep     = LATEST                                          initial_from_file_var          = INVALID                                         element_order                  = AUTO                                            order                          = AUTO                                            side_order                     = AUTO                                            type                           = GAUSS                                         []                                                                                                                                                                [Executioner]                                                                      auto_preconditioning           = 1                                               inactive                       = (no_default)                                    isObjectAction                 = 1                                               type                           = Steady                                          accept_on_max_picard_iteration = 0                                               automatic_scaling              = INVALID                                         compute_initial_residual_before_preset_bcs = 0                                   compute_scaling_once           = 1                                               contact_line_search_allowed_lambda_cuts = 2                                      contact_line_search_ltol       = INVALID                                         control_tags                   = (no_default)                                    custom_abs_tol                 = 1e-50                                           custom_rel_tol                 = 1e-08                                           direct_pp_value                = 0                                               disable_picard_residual_norm_check = 0                                           enable                         = 1                                               l_abs_tol                      = 1e-50                                           l_max_its                      = 10000                                           l_tol                          = 1e-05                                           line_search                    = default                                         line_search_package            = petsc                                           max_xfem_update                = 4294967295                                      mffd_type                      = wp                                              nl_abs_step_tol                = 1e-50                                           nl_abs_tol                     = 1e-50                                           nl_div_tol                     = -1                                              nl_max_funcs                   = 10000                                           nl_max_its                     = 50                                              nl_rel_step_tol                = 1e-50                                           nl_rel_tol                     = 1e-08                                           num_grids                      = 1                                               petsc_options                  = INVALID                                         petsc_options_iname            = '-pc_type -pc_hypre_type'                       petsc_options_value            = 'hypre boomeramg'                               picard_abs_tol                 = 1e-50                                           picard_custom_pp               = INVALID                                         picard_force_norms             = 0                                               picard_max_its                 = 1                                               picard_rel_tol                 = 1e-08                                           relaxation_factor              = 1                                               relaxed_variables              = (no_default)                                    resid_vs_jac_scaling_param     = 0                                               restart_file_base              = (no_default)                                    scaling_group_variables        = INVALID                                         skip_exception_check           = 0                                               snesmf_reuse_base              = 1                                               solve_type                     = PJFNK                                           splitting                      = INVALID                                         time                           = 0                                               update_xfem_at_timestep_begin  = 0                                               verbose                        = 0                                             []                                                                                                                                                                [FVBCs]                                                                            inactive                       = (no_default)                                                                                                                     [./left]                                                                           inactive                     = (no_default)                                      isObjectAction               = 1                                                 type                         = FVDirichletBC                                     boundary                     = left                                              control_tags                 = FVBCs                                             displacements                = INVALID                                           enable                       = 1                                                 extra_matrix_tags            = INVALID                                           extra_vector_tags            = INVALID                                           implicit                     = 1                                                 matrix_tags                  = system                                            use_displaced_mesh           = 0                                                 value                        = 7                                                 variable                     = v                                                 vector_tags                  = nontime                                         [../]                                                                                                                                                             [./right]                                                                          inactive                     = (no_default)                                      isObjectAction               = 1                                                 type                         = FVDirichletBC                                     boundary                     = right                                             control_tags                 = FVBCs                                             displacements                = INVALID                                           enable                       = 1                                                 extra_matrix_tags            = INVALID                                           extra_vector_tags            = INVALID                                           implicit                     = 1                                                 matrix_tags                  = system                                            use_displaced_mesh           = 0                                                 value                        = 42                                                variable                     = v                                                 vector_tags                  = nontime                                         [../]                                                                          []                                                                                                                                                                [FVKernels]                                                                                                                                                         [./diff]                                                                           inactive                     = (no_default)                                      isObjectAction               = 1                                                 type                         = FVDiffusion                                       block                        = INVALID                                           coeff                        = coeff                                             control_tags                 = FVKernels                                         enable                       = 1                                                 extra_matrix_tags            = INVALID                                           extra_vector_tags            = INVALID                                           implicit                     = 1                                                 matrix_tags                  = system                                            use_displaced_mesh           = 0                                                 variable                     = v                                                 vector_tags                  = nontime                                         [../]                                                                          []                                                                                                                                                                [Materials]                                                                                                                                                         [./diff]                                                                           inactive                     = (no_default)                                      isObjectAction               = 1                                                 type                         = ADGenericConstantMaterial                         block                        = INVALID                                           boundary                     = INVALID                                           compute                      = 1                                                 constant_on                  = NONE                                              control_tags                 = Materials                                         enable                       = 1                                                 implicit                     = 1                                                 output_properties            = INVALID                                           outputs                      = none                                              prop_names                   = coeff                                             prop_values                  = 1                                                 seed                         = 0                                                 use_displaced_mesh           = 0                                               [../]                                                                          []                                                                                                                                                                [Mesh]                                                                             displacements                  = INVALID                                         inactive                       = (no_default)                                    use_displaced_mesh             = 1                                               include_local_in_ghosting      = 0                                               output_ghosting                = 0                                               block_id                       = INVALID                                         block_name                     = INVALID                                         boundary_id                    = INVALID                                         boundary_name                  = INVALID                                         construct_side_list_from_node_list = 0                                           ghosted_boundaries             = INVALID                                         ghosted_boundaries_inflation   = INVALID                                         isObjectAction                 = 1                                               second_order                   = 0                                               skip_partitioning              = 0                                               type                           = GeneratedMesh                                   uniform_refine                 = 0                                               allow_renumbering              = 1                                               bias_x                         = 1                                               bias_y                         = 1                                               bias_z                         = 1                                               centroid_partitioner_direction = INVALID                                         construct_node_list_from_side_list = 1                                           control_tags                   = (no_default)                                    dim                            = 1                                               elem_type                      = INVALID                                         enable                         = 1                                               gauss_lobatto_grid             = 0                                               ghosting_patch_size            = INVALID                                         max_leaf_size                  = 10                                              nemesis                        = 0                                               nx                             = 2                                               ny                             = 1                                               nz                             = 1                                               parallel_type                  = DEFAULT                                         partitioner                    = default                                         patch_size                     = 40                                              patch_update_strategy          = never                                           xmax                           = 1                                               xmin                           = 0                                               ymax                           = 1                                               ymin                           = 0                                               zmax                           = 1                                               zmin                           = 0                                             []                                                                                                                                                                [Mesh]                                                                           []                                                                                                                                                                [Mesh]                                                                           []                                                                                                                                                                [Outputs]                                                                          append_date                    = 0                                               append_date_format             = INVALID                                         checkpoint                     = 0                                               color                          = 1                                               console                        = 1                                               controls                       = 0                                               csv                            = 0                                               dofmap                         = 0                                               execute_on                     = 'INITIAL TIMESTEP_END'                          exodus                         = 1                                               file_base                      = INVALID                                         gmv                            = 0                                               gnuplot                        = 0                                               hide                           = INVALID                                         inactive                       = (no_default)                                    interval                       = 1                                               nemesis                        = 0                                               output_if_base_contains        = INVALID                                         perf_graph                     = 0                                               print_linear_residuals         = 1                                               print_mesh_changed_info        = 0                                               print_perf_log                 = 0                                               show                           = INVALID                                         solution_history               = 0                                               sync_times                     = (no_default)                                    tecplot                        = 0                                               vtk                            = 0                                               xda                            = 0                                               xdr                            = 0                                               xml                            = 0                                             []                                                                                                                                                                [Problem]                                                                          inactive                       = (no_default)                                    isObjectAction                 = 1                                               name                           = 'MOOSE Problem'                                 type                           = FEProblem                                       library_name                   = (no_default)                                    library_path                   = (no_default)                                    object_names                   = INVALID                                         register_objects_from          = INVALID                                         block                          = INVALID                                         control_tags                   = (no_default)                                    coord_type                     = XYZ                                             default_ghosting               = 0                                               enable                         = 1                                               error_on_jacobian_nonzero_reallocation = 0                                       extra_tag_matrices             = INVALID                                         extra_tag_vectors              = INVALID                                         force_restart                  = 0                                               ignore_zeros_in_jacobian       = 0                                               kernel_coverage_check          = 0                                               material_coverage_check        = 1                                               material_dependency_check      = 1                                               near_null_space_dimension      = 0                                               null_space_dimension           = 0                                               parallel_barrier_messaging     = 0                                               restart_file_base              = INVALID                                         rz_coord_axis                  = Y                                               skip_additional_restart_data   = 0                                               skip_nl_system_check           = 0                                               solve                          = 1                                               transpose_null_space_dimension = 0                                               use_nonlinear                  = 1                                             []                                                                                                                                                                [Variables]                                                                                                                                                         [./v]                                                                              family                       = MONOMIAL                                          inactive                     = (no_default)                                      isObjectAction               = 1                                                 order                        = CONSTANT                                          scaling                      = INVALID                                           type                         = MooseVariableBase                                 initial_from_file_timestep   = LATEST                                            initial_from_file_var        = INVALID                                           block                        = INVALID                                           components                   = 1                                                 control_tags                 = Variables                                         eigen                        = 0                                                 enable                       = 1                                                 fv                           = 1                                                 initial_condition            = INVALID                                           outputs                      = INVALID                                         [../]                                                                          []                                                                                                       ?�      @/�����@@������