import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyDarkEnergyCanonicalLaneLean

structure DarkEnergyEquationOfStatePackage where
  equationOfStateParameter : Type u
  constantW : Prop
  timeVaryingW : Prop
  barotropicCondition : Prop
  adiabaticSoundSpeed : Prop

structure DarkEnergyEquationOfStateEvidence (D : DarkEnergyEquationOfStatePackage) where
  constantWClosed : D.constantW
  timeVaryingWClosed : D.timeVaryingW
  barotropicConditionClosed : D.barotropicCondition
  adiabaticSoundSpeedClosed : D.adiabaticSoundSpeed

def DarkEnergyEquationOfStateClosed (D : DarkEnergyEquationOfStatePackage) : Prop :=
  D.constantW ∧ D.timeVaryingW ∧ D.barotropicCondition ∧ D.adiabaticSoundSpeed

theorem dark_energy_equation_of_state_closed_from_evidence
    (D : DarkEnergyEquationOfStatePackage) (E : DarkEnergyEquationOfStateEvidence D) :
    DarkEnergyEquationOfStateClosed D := by
  exact And.intro E.constantWClosed
    (And.intro E.timeVaryingWClosed
      (And.intro E.barotropicConditionClosed E.adiabaticSoundSpeedClosed))

end CosmologyDarkEnergyCanonicalLaneLean
end HautevilleHouse