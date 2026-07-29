import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyDarkEnergyCanonicalLaneLean

structure PrimitiveFLRWSpacetime where
  Point : Type
  Chart : Type
  atlas : Type
  smoothCompatibility : Prop
  hausdorffSecondCountable : Prop
  fourDimensional : Prop
  lorentzianMetric : Prop
  smoothCompatibilityTerm : smoothCompatibility
  hausdorffSecondCountableTerm : hausdorffSecondCountable
  fourDimensionalTerm : fourDimensional
  lorentzianMetricTerm : lorentzianMetric

structure PrimitiveExpansionFactor where
  ScaleFactor : Type
  functionOfTime : Type
  positive : Prop
  smooth : Prop
  positiveTerm : positive
  smoothTerm : smooth

structure PrimitiveMatterContent where
  MatterType : Type
  energyDensity : Type
  pressure : Type
  equationOfState : Prop
  conservationLaw : Prop
  equationOfStateTerm : equationOfState
  conservationLawTerm : conservationLaw

structure PrimitiveCosmologicalConstant where
  Lambda : Type
  constantValue : Prop
  positive : Prop
  constantValueTerm : constantValue
  positiveTerm : positive

structure PrimitiveHubbleParameter where
  H : Type
  definedAs : Prop
  positiveAtPresent : Prop
  definedAsTerm : definedAs
  positiveAtPresentTerm : positiveAtPresent

end CosmologyDarkEnergyCanonicalLaneLean
end HautevilleHouse