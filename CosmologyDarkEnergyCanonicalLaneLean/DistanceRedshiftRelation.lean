import canonicalLaneMathlib.AdmissibleClass
import CosmologyDarkEnergyCanonicalLaneLean.FriedmannEquationsPDE

namespace HautevilleHouse
namespace CosmologyDarkEnergyCanonicalLaneLean

structure DistanceRedshiftRelationPackage (F : FriedmannEquationPackage S a M L) where
  luminosityDistance : Type
  angularDiameterDistance : Type
  comovingDistance : Type
  hubbleLaw : Prop
  distanceDuality : Prop
  hubbleLawTerm : hubbleLaw
  distanceDualityTerm : distanceDuality

structure DistanceRedshiftRelationEvidence (D : DistanceRedshiftRelationPackage F) where
  hubbleLawClosed : D.hubbleLaw
  distanceDualityClosed : D.distanceDuality

def DistanceRedshiftRelationClosed (D : DistanceRedshiftRelationPackage F) : Prop :=
  D.hubbleLaw ∧ D.distanceDuality

theorem distance_redshift_relation_closed_from_evidence (D : DistanceRedshiftRelationPackage F) (E : DistanceRedshiftRelationEvidence D) : DistanceRedshiftRelationClosed D := by
  exact And.intro E.hubbleLawClosed E.distanceDualityClosed

end CosmologyDarkEnergyCanonicalLaneLean
end HautevilleHouse