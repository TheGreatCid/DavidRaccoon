CDF      
      
len_string     !   len_line   Q   four      	time_step          len_name   !   num_dim       	num_nodes         num_elem      
num_el_blk        num_node_sets         num_side_sets         num_el_in_blk1        num_nod_per_el1       num_side_ss1      num_side_ss2      num_side_ss3      num_side_ss4      num_nod_ns1       num_nod_ns2       num_nod_ns3       num_nod_ns4       num_nod_var       num_info   �         api_version       @�
=   version       @�
=   floating_point_word_size            	file_size               int64_status             title         const_out.e    maximum_name_length                    
time_whole                            J,   	eb_status                             �   eb_prop1               name      ID              �   	ns_status         	                    �   ns_prop1      	         name      ID              �   	ss_status         
                    �   ss_prop1      
         name      ID              �   coordx                             �   coordy                             	   eb_names                       $      	<   ns_names      	                 �      	`   ss_names      
                 �      	�   
coor_names                         D      
h   node_num_map                          
�   connect1                  	elem_type         QUAD4               
�   elem_num_map                          
�   elem_ss1                          
�   side_ss1                          
�   elem_ss2                          
�   side_ss2                          
�   elem_ss3                          
�   side_ss3                          
�   elem_ss4                          
�   side_ss4                          
�   node_ns1                          
�   node_ns2                          
�   node_ns3                              node_ns4                             vals_nod_var1                                 J4   name_nod_var                       $         info_records                      >�      4                                                                 ?�      ?�                              ?�      ?�                                          top                              left                             right                            bottom                           bottom                           top                              left                             right                                                                                                                                                                           dummy                               ####################                                                             # Created by MOOSE #                                                             ####################                                                             ### Command Line Arguments ###                                                   -i                                                                               const.i                                                                                                                                                           ### Version Info ###                                                             Framework Information:                                                           MOOSE version:           git commit 1c74e95 on 2015-12-15                        PETSc Version:           3.6.1                                                   Current Time:            Tue Dec 15 12:47:27 2015                                Executable Timestamp:    Tue Dec 15 12:13:04 2015                                                                                                                                                                                                  ### Input File ###                                                                                                                                                []                                                                                 initial_from_file_timestep     = LATEST                                          initial_from_file_var          = INVALID                                         element_order                  = AUTO                                            order                          = AUTO                                            side_order                     = AUTO                                            type                           = GAUSS                                           active_bcs                     = INVALID                                         active_kernels                 = INVALID                                         inactive_bcs                   = INVALID                                         inactive_kernels               = INVALID                                         start                          = 0                                             []                                                                                                                                                                [AuxVariables]                                                                                                                                                      [./dummy]                                                                          block                        = INVALID                                           family                       = LAGRANGE                                          initial_condition            = INVALID                                           order                        = FIRST                                             outputs                      = INVALID                                           initial_from_file_timestep   = LATEST                                            initial_from_file_var        = INVALID                                         [../]                                                                          []                                                                                                                                                                [Executioner]                                                                      type                           = Steady                                          compute_initial_residual_before_preset_bcs = 0                                   control_tags                   =                                                 l_abs_step_tol                 = -1                                              l_max_its                      = 10000                                           l_tol                          = 1e-05                                           line_search                    = default                                         nl_abs_step_tol                = 1e-50                                           nl_abs_tol                     = 1e-50                                           nl_max_funcs                   = 10000                                           nl_max_its                     = 50                                              nl_rel_step_tol                = 1e-50                                           nl_rel_tol                     = 1e-08                                           no_fe_reinit                   = 0                                               petsc_options                  = INVALID                                         petsc_options_iname            = INVALID                                         petsc_options_value            = INVALID                                         restart_file_base              =                                                 solve_type                     = INVALID                                         splitting                      = INVALID                                       []                                                                                                                                                                [Executioner]                                                                      _fe_problem                    = 0x7f8542811000                                []                                                                                                                                                                [Materials]                                                                                                                                                         [./client]                                                                         type                         = DerivativeMaterialInterfaceTestClient             block                        = 0                                                 boundary                     = INVALID                                           control_tags                 = Materials                                         output_properties            = INVALID                                           outputs                      = exodus                                            prop_name                    = prop                                              seed                         = 0                                                 use_displaced_mesh           = 0                                               [../]                                                                                                                                                             [./client2]                                                                        type                         = DerivativeMaterialInterfaceTestClient             block                        = 0                                                 boundary                     = INVALID                                           control_tags                 = Materials                                         output_properties            = INVALID                                           outputs                      = exodus                                            prop_name                    = 1.0                                               seed                         = 0                                                 use_displaced_mesh           = 0                                               [../]                                                                                                                                                             [./provider]                                                                       type                         = DerivativeMaterialInterfaceTestProvider           block                        = 0                                                 boundary                     = INVALID                                           control_tags                 = Materials                                         output_properties            = INVALID                                           outputs                      = none                                              seed                         = 0                                                 use_displaced_mesh           = 0                                               [../]                                                                          []                                                                                                                                                                [Mesh]                                                                             displacements                  = INVALID                                         block_id                       = INVALID                                         block_name                     = INVALID                                         boundary_id                    = INVALID                                         boundary_name                  = INVALID                                         construct_side_list_from_node_list = 0                                           ghosted_boundaries             = INVALID                                         ghosted_boundaries_inflation   = INVALID                                         patch_size                     = 40                                              second_order                   = 0                                               skip_partitioning              = 0                                               type                           = GeneratedMesh                                   uniform_refine                 = 0                                               centroid_partitioner_direction = INVALID                                         control_tags                   =                                                 dim                            = 2                                               distribution                   = DEFAULT                                         elem_type                      = INVALID                                         nemesis                        = 0                                               nx                             = 1                                               ny                             = 1                                               nz                             = 1                                               partitioner                    = default                                         patch_update_strategy          = never                                           xmax                           = 1                                               xmin                           = 0                                               ymax                           = 1                                               ymin                           = 0                                               zmax                           = 1                                               zmin                           = 0                                             []                                                                                                                                                                [Mesh]                                                                           []                                                                                                                                                                [Outputs]                                                                          append_date                    = 0                                               append_date_format             = INVALID                                         checkpoint                     = 0                                               color                          = 1                                               console                        = 1                                               csv                            = 0                                               dofmap                         = 0                                               execute_on                     = 'INITIAL TIMESTEP_END'                          exodus                         = 1                                               file_base                      = INVALID                                         gmv                            = 0                                               gnuplot                        = 0                                               hide                           = INVALID                                         interval                       = 1                                               nemesis                        = 0                                               output_if_base_contains        = INVALID                                         print_linear_residuals         = 1                                               print_mesh_changed_info        = 0                                               print_perf_log                 = 0                                               show                           = INVALID                                         solution_history               = 0                                               sync_times                     =                                                 tecplot                        = 0                                               vtk                            = 0                                               xda                            = 0                                               xdr                            = 0                                             []                                                                                                                                                                [Problem]                                                                          block                          = INVALID                                         coord_type                     = XYZ                                             fe_cache                       = 0                                               kernel_coverage_check          = 1                                               material_coverage_check        = 1                                               name                           = 'MOOSE Problem'                                 restart_file_base              = INVALID                                         rz_coord_axis                  = Y                                               type                           = FEProblem                                       use_legacy_uo_aux_computation  = INVALID                                         use_legacy_uo_initialization   = INVALID                                         library_path                   =                                                 object_names                   = INVALID                                         register_objects_from          = INVALID                                         control_tags                   =                                                 dimNearNullSpace               = 0                                               dimNullSpace                   = 0                                               error_on_jacobian_nonzero_reallocation = 0                                       petsc_inames                   =                                                 petsc_options                  = INVALID                                         petsc_values                   =                                                 solve                          = 0                                               use_nonlinear                  = 1                                             []                                                                                                                        ?�                                      