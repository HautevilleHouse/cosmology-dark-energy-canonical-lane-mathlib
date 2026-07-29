import CosmologyDarkEnergyCanonicalLaneLean.CosmologicalPerturbations

namespace HautevilleHouse
namespace CosmologyDarkEnergyCanonicalLaneLean

structure CosmicAccelerationEvidencePackage where
  luminosityDistanceRedshiftRelation : Type u
  supernovaTypeIaData : Type v
  accelerationDetected : Prop
  darkEnergyConsistent : Prop
  alternativeModelsExcluded : Prop

structure CosmicAccelerationEvidence
    (C : CosmicAccelerationEvidencePackage) where
  accelerationDetectedClosed : C.accelerationDetected
  darkEnergyConsistentClosed : C.darkEnergyConsistent
  alternativeModelsExcludedClosed : C.alternativeModelsExcluded

def CosmicAccelerationClosed (C : CosmicAccelerationEvidencePackage) : Prop :=
  C.accelerationDetected ∧ C.darkEnergyConsistent ∧ C.alternativeModelsExcluded

theorem cosmic_acceleration_closed_from_evidence
    (C : CosmicAccelerationEvidencePackage) (E : CosmicAccelerationEvidence C) :
    CosmicAccelerationClosed C := by
  exact And.intro E.accelerationDetectedClosed
    (And.intro E.darkEnergyConsistentClosed E.alternativeModelsExcludedClosed)

end CosmologyDarkEnergyCanonicalLaneLean
end HautevilleHouse
