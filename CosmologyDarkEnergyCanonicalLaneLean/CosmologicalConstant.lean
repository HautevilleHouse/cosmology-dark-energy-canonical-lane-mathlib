import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyDarkEnergyCanonicalLaneLean

structure CosmologicalConstant where
  lambda : ℝ
  lambdaError : ℝ
  units : String
  source : String

structure CosmologicalConstantEvidence (L : CosmologicalConstant) where
  lambdaPositiveClosed : L.lambda > 0
  lambdaErrorPositiveClosed : L.lambdaError > 0
  unitsStandardClosed : L.units = "m^{-2}"
  sourceValidClosed : L.source = "Planck2018" ∨ L.source = "DES" ∨ L.source = "Pantheon"

def CosmologicalConstantClosed (L : CosmologicalConstant) : Prop :=
  L.lambda > 0 ∧ L.lambdaError > 0 ∧ L.units = "m^{-2}" ∧ (L.source = "Planck2018" ∨ L.source = "DES" ∨ L.source = "Pantheon")

theorem cosmological_constant_closed_from_evidence (L : CosmologicalConstant) (E : CosmologicalConstantEvidence L) : CosmologicalConstantClosed L :=
  And.intro E.lambdaPositiveClosed (And.intro E.lambdaErrorPositiveClosed (And.intro E.unitsStandardClosed E.sourceValidClosed))

end CosmologyDarkEnergyCanonicalLaneLean
end HautevilleHouse