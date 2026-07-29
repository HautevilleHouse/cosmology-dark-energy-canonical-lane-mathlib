import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyDarkEnergyCanonicalLaneLean

structure BaryonAcousticOscillationsPackage where
  soundHorizon : Type u
  peakScale : Prop
  standardRuler : Prop
  distanceRedshiftRelation : Prop
  darkEnergyConstraint : Prop

structure BaryonAcousticOscillationsEvidence (B : BaryonAcousticOscillationsPackage) where
  peakScaleClosed : B.peakScale
  standardRulerClosed : B.standardRuler
  distanceRedshiftRelationClosed : B.distanceRedshiftRelation
  darkEnergyConstraintClosed : B.darkEnergyConstraint

def BaryonAcousticOscillationsClosed (B : BaryonAcousticOscillationsPackage) : Prop :=
  B.peakScale ∧ B.standardRuler ∧ B.distanceRedshiftRelation ∧ B.darkEnergyConstraint

theorem baryon_acoustic_oscillations_closed_from_evidence
    (B : BaryonAcousticOscillationsPackage) (E : BaryonAcousticOscillationsEvidence B) :
    BaryonAcousticOscillationsClosed B := by
  exact And.intro E.peakScaleClosed
    (And.intro E.standardRulerClosed
      (And.intro E.distanceRedshiftRelationClosed E.darkEnergyConstraintClosed))

end CosmologyDarkEnergyCanonicalLaneLean
end HautevilleHouse