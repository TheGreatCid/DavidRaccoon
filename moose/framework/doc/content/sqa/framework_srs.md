!template load file=srs.md.template category=framework project=Framework

!template! item key=system-purpose
!include sqa/system_purpose.md
!template-end!

!template! item key=system-scope
!include sqa/system_scope.md
!template-end!

!template! item key=system-context
[!ac](MOOSE) is a command-line driven application. This is typical for a high-performance software
that is designed to run across several nodes of a cluster system. As such, all of the usage
of the software is through any standard terminal program generally available on all supported
operating systems. Similarly, for the purpose of interacting through the software, there is only
a single user, "the user", which interacts with the software through the command-line. MOOSE does
not maintain any back-end database or interact with any system daemons. It is a executable,
which may be launched from the command line and writes out various result files as it runs.

!media media/sqa/usage_diagram_uml.svg
       id=usage_diagram
       caption=Usage of [!ac](MOOSE) and [!ac](MOOSE)-based applications.
       style=width:50%;
!template-end!

!template! item key=system-functions
Since [!ac](MOOSE) is a command-line driven application, all functionality provided in the framework
is operated through the use of standard UNIX command line flags and the extendable MOOSE input file.
The framework is completely extendable so individual design pages should be consulted for specific
behaviors of each user-defined object.
!template-end!

!template! item key=user-characteristics

- +Framework Developers+: These are the core developers of the framework. They will be responsible
  for following and enforcing the appropriate software development standards. They will be
  responsible for designing, implementing and maintaining the software.

- +Developers+: A Scientist or Engineer that utilizes the framework to build his or her own
  application. This user will typically have a background in modeling and simulation techniques
  and/or numerical analysis but may only have a limited skill-set when it comes to object-oriented
  coding and the C++ language. This is our primary focus group.  In many cases these developers will
  be encouraged to give their code back to the framework maintainers.

- +Analysts+: These are users that will run the code and perform various analysis on the simulations
  they perform.  These users may interact with developers of the system requesting new features and
  reporting bugs found and will typically make heavy use of the input file format.

!template-end!

!template! item key=assumptions-and-dependencies
!include sqa/assumptions_and_dependencies.md
!template-end!

!template! item key=definitions
- +Verification+: (1) The process of: evaluating a system or component to determine whether the
  products of a given development phase satisfy the conditions imposed at the start of that
  phase. (2) Formal proof of program correctness (e.g., requirements, design, implementation reviews,
  system tests) [!citep](ISO-systems-software).
!template-end!

!template! item key=acronyms
!acronym list
!template-end!


!template! item key=system-requirements
The creation of the requirements for [!ac](MOOSE) is an ongoing progress as new objects are added.
The [#functional-requirements] are generated from test specifications, which are required with
each addition to the MOOSE framework or its modules.
!template-end!

!template! item key=minimum-requirements
- A [!ac](POSIX) compliant Unix including the two most recent versions of MacOS and most current
  versions of Linux.
- 4 GB of RAM for optimized compilation (8 GB for debug compilation), 2 GB per core execution
- 100 GB disk space
- C++11 compatible compiler (GCC, Clang)
- Python 2.6+
- Git
!template-end!

!template! item key=functional-requirements
!sqa requirements link=False category={{category}}
!template-end!

!template! item key=useability-requirements
!sqa requirements-matrix prefix=U
- The system will be command-line and input file driven.
- The system shall return usage messages when unidentified arguments or incorrectly used arguments are passed.
- The system shall provide diagnostics when the input file fails to parse, or the format is incorrect.
- The system will provide on screen information about the simulation and performance characteristics of the solves under normal operating conditions.
!template-end!

!template! item key=performance-requirements
!sqa requirements-matrix prefix=P
- The system will support multi-process distributed memory execution.
- The system will support multi-process shared memory execution.
- The system will support execution on Unix-based laptops.
- The system will support execution on Unix-based workstation systems.
- The system will support execution on large Unix-based cluster systems.
!template-end!

!template! item key=system-interfaces
!sqa requirements-matrix prefix=S
- The system shall support POSIX compliant systems.
- The system shall support the Message Passing Interface (MPI) standard.
- The system shall support POSIX ``pthreads''.
- The system shall support Intel Threaded Building Blocks (TBB) interface.
- The system shall support the OpenMP threading interface.
!template-end!

!template! item key=human-system-integration
[!ac](MOOSE) is a command line driven application which conforms to all standard terminal
behaviors. Specific human system interaction accommodations shall be a function of the end-user's
terminal. MOOSE does support optional coloring within the terminal's ability to display color,
which may be disabled.
!template-end!


!template! item key=maintainability
- The latest working version (defined as the version that passes all tests in the current regression
  test suite) shall be publicly available at all times through the repository host provider.
- Flaws identified in the system shall be reported and tracked in a ticket or issue based system. The
  technical lead will determine the severity and priority of all reported issues and assign resources
  at his or her discretion to resolve identified issues.
- The software maintainers will entertain all proposed changes to the system in a timely manner
  (within two business days).
- The core framework in its entirety will be made publicly available under the [!ac](LGPL)
  version 2.0 license.
!template-end!


!template item key=reliability
The regression test suite will cover at least 80% of all lines of code at all times. Known
regressions will be recorded and tracked (see [#maintainability]) to an independent and
satisfactory resolution.
!template-end!

!template item key=information-management
The core framework in its entirety will be made publicly available on an appropriate repository
hosting site. Backups and security services will be provided by the hosting service.
!template-end!

!template item key=verification
The regression test suite will employ several verification tests using comparison against known
analytical solutions, the method of manufactured solutions, and convergence rate analysis.
!template-end!

!template! item key=system-modes
[!ac](MOOSE) applications normally run in normal execution  mode when an input file is supplied. However
there are a few other modes that can be triggered with various command line flags as indicated here:

| Command Line Flag | Description of mode |
| :- | :- |
| `-i <input_file>` | Normal execution mode |
| `--split-mesh <splits>` | Read the mesh block splitting the mesh into two or more pieces for use in a subsequent run |
| `--use-split` | (inplies -i flag) Execute the the simulation but use pre-split mesh files instead of the mesh from the input file |
| `--yaml` | Output all object descriptions and available parameters in YAML format |
| `--json` | Output all object descriptions and available parameters in JSON format |
| `--syntax` | Output all registered syntax |
| `--registry` | Output all known objects and actions |
| `--registry-hit` | Output all known objects and actions in HIT format |
| `--mesh-only` (implies -i flag) | Run only the mesh related tasks and output the final mesh that would be used for the simulation |
| `--start-in-debugger <debugger>` | Start the simulation attached to the supplied debugger |

!alert note
The list of system-modes may not be extensive as the system is designed to be extendable to end-user applications.
The complete list of command line options for applications can be obtained by running the executable with
zero arguments. See the [command line usage](command_line_usage.md optional=True).
!template-end!

!template! item key=physical-characteristics
[!ac](MOOSE) is software only with no associated physical media. See [#system-requirements] for a description
of the minimum required hardware necessary for running a [!ac](MOOSE)-based application.
!template-end!

!template! item key=environmental-conditions
Not Applicable
!template-end!

!template! item key=system-security
[!ac](MOOSE) based applications have no requirements or special needs related to system-security. The framework
is designed to run completely in user-space with no elevated privileges required nor recommended.
!template-end!

!template! item key=policies-and-regulations
[!ac](MOOSE)-based applications must comply with all export control restrictions.
!template-end!

!template! item key=system-life-cycle
[!ac](MOOSE)-based development follows various agile methods. The system is continuously built and deployed in
a piecemeal fashion since objects within the system are more or less independent. Every new object requires a test,
which in turn requires an associated requirement and design description. Some [!ac](MOOSE)-based development
teams follow the [!ac](NQA-1) standards.
!template-end!

!template! item key=packaging
No special requirements are needed for packaging or shipping any media containing [!ac](MOOSE) source code. However,
some [!ac](MOOSE)-based applications maybe be export controlled in which case all export control restrictions must
be adhered to when packaging and shipping media.
!template-end!