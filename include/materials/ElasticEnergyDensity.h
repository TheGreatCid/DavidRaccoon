//* This file is part of the RACCOON application
//* being developed at Dolbow lab at Duke University
//* http://dolbow.pratt.duke.edu

#pragma once

#include "ADMaterial.h"

template <typename>
class RankTwoTensorTempl;
typedef RankTwoTensorTempl<Real> RankTwoTensor;
typedef RankTwoTensorTempl<DualReal> DualRankTwoTensor;

class ElasticEnergyDensity : public ADMaterial
{
public:
  static InputParameters validParams();

  ElasticEnergyDensity(const InputParameters & parameters);

protected:
  virtual void computeQpProperties() override;

  /// base name
  const std::string _base_name;

  /// elastic energy density
  ADMaterialProperty<Real> & _E_el;

  /// stress
  const ADMaterialProperty<RankTwoTensor> & _stress;

  /// strain
  const ADMaterialProperty<RankTwoTensor> & _strain;
};
