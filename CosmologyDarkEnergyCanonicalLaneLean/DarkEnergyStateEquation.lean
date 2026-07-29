import CosmologyDarkEnergyCanonicalLaneLean.FriedmannEquations

namespace HautevilleHouse
namespace CosmologyDarkEnergyCanonicalLaneLean

structure DarkEnergyStateEquationPackage where
  equationOfStateParameter : ℝ
  pressureAsFunctionOfDensity : ℝ → ℝ
  stateEquation : Prop
  darkEnergyDensityEvolution : Prop
  constantOrDynamical : Prop

structure DarkEnergyStateEquationEvidence
    (S : DarkEnergyStateEquationPackage) where
  stateEquationClosed : S.stateEquation
  darkEnergyDensityEvolutionClosed : S.darkEnergyDensityEvolution
  constantOrDynamicalClosed : S.constantOrDynamical

def DarkEnergyStateEquationClosed (S : DarkEnergyStateEquationPackage) : Prop :=
  S.stateEquation ∧ S.darkEnergyDensityEvolution ∧ S.constantOrDynamical

theorem dark_energy_state_equation_closed_from_evidence
    (S : DarkEnergyStateEquationPackage) (E : DarkEnergyStateEquationEvidence S) :
    DarkEnergyStateEquationClosed S := by
  exact And.intro E.stateEquationClosed
    (And.intro E.darkEnergyDensityEvolutionClosed E.constantOrDynamicalClosed)

end CosmologyDarkEnergyCanonicalLaneLean
end HautevilleHouse
