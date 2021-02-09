# TransformGenerator

!syntax description /Mesh/TransformGenerator

## Overview

The Transform MeshGenerator applies one of three linear transformations
(TRANSLATE, ROTATE, or SCALE) to the entire mesh. Several independent modifiers
may be executed in a specific order to perform more complex transformations.
This class simply calls through to the methods in libMesh's
[MeshTools::Modification](https://libmesh.github.io/doxygen/namespacelibMesh_1_1MeshTools_1_1Modification.html)
namespace.

!syntax parameters /Mesh/TransformGenerator

!syntax inputs /Mesh/TransformGenerator

!syntax children /Mesh/TransformGenerator