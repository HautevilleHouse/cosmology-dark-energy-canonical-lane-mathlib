import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyDarkEnergyCanonicalLaneLean

structure FriedmannEquationsPackage where
  scaleFactor : Type u
  hubbleParameter : Type v
  matterEnergyDensity : Type w
  darkEnergyDensity : Type x
  curvatureTerm : Type y
  cosmologicalConstant : Type z
  firstEquation : Prop
  secondEquation : Prop
  matterConservation : Prop
  darkEnergyEquationOfState : Prop

structure FriedmannEquationsEvidence (F : FriedmannEquationsPackage) where
  firstEquationClosed : F.firstEquation
  secondEquationClosed : F.secondEquation
  matterConservationClosed : F.matterConservation
  darkEnergyEquationOfStateClosed : F.darkEnergyEquationOfState

def FriedmannEquationsClosed (F : FriedmannEquationsPackage) : Prop :=
  F.firstEquation ∧ F.secondEquation ∧ F.matterConservation ∧ F.darkEnergyEquationOfState

theorem friedmann_equations_closed_from_evidence (F : FriedmannEquationsPackage)
    (E : FriedmannEquationsEvidence F) : FriedmannEquationsClosed F := by
  exact And.intro E.firstEquationClosed
    (And.intro E.secondEquationClosed
      (And.intro E.matterConservationClosed E.darkEnergyEquationOfStateClosed))

end CosmologyDarkEnergyCanonicalLaneLean
end HautevilleHouse