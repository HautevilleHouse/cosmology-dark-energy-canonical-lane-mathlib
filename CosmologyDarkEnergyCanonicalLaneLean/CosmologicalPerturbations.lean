import CosmologyDarkEnergyCanonicalLaneLean.DarkEnergyStateEquation

namespace HautevilleHouse
namespace CosmologyDarkEnergyCanonicalLaneLean

structure CosmologicalPerturbationsPackage where
  metricPerturbation : Type u
  densityContrastField : Type v
  growthFactor : ℝ → ℝ
  perturbationEquations : Prop
  largeScaleStructureFormation : Prop
  darkEnergyImprint : Prop

structure CosmologicalPerturbationsEvidence
    (P : CosmologicalPerturbationsPackage) where
  perturbationEquationsClosed : P.perturbationEquations
  largeScaleStructureFormationClosed : P.largeScaleStructureFormation
  darkEnergyImprintClosed : P.darkEnergyImprint

def CosmologicalPerturbationsClosed (P : CosmologicalPerturbationsPackage) : Prop :=
  P.perturbationEquations ∧ P.largeScaleStructureFormation ∧ P.darkEnergyImprint

theorem cosmological_perturbations_closed_from_evidence
    (P : CosmologicalPerturbationsPackage) (E : CosmologicalPerturbationsEvidence P) :
    CosmologicalPerturbationsClosed P := by
  exact And.intro E.perturbationEquationsClosed
    (And.intro E.largeScaleStructureFormationClosed E.darkEnergyImprintClosed)

end CosmologyDarkEnergyCanonicalLaneLean
end HautevilleHouse
