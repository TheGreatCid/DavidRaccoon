//* This file is part of the RACCOON application
//* being developed at Dolbow lab at Duke University
//* http://dolbow.pratt.duke.edu

#pragma once

#include "ADIntegratedBC.h"

class PressureBC : public ADIntegratedBC
{
public:
  static InputParameters validParams();

  PressureBC(const InputParameters & parameters);

protected:
  virtual ADReal computeQpResidual() override;

  /// The function describing the pressure magnitude
  const Function & _function;

  const unsigned int _component;
};
