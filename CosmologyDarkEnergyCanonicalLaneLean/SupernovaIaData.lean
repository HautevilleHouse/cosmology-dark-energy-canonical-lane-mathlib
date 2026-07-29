import canonicalLaneMathlib.AdmissibleClass
import CosmologyDarkEnergyCanonicalLaneLean.DistanceRedshiftRelation

namespace HautevilleHouse
namespace CosmologyDarkEnergyCanonicalLaneLean

structure SupernovaIaDataPackage (D : DistanceRedshiftRelationPackage F) where
  magnitudeRedshiftRelation : Type
  standardCandleCalibration : Prop
  nuisanceParameters : Prop
  distanceModulus : Prop
  standardCandleCalibrationTerm : standardCandleCalibration
  nuisanceParametersTerm : nuisanceParameters
  distanceModulusTerm : distanceModulus

structure SupernovaIaDataEvidence (S : SupernovaIaDataPackage D) where
  standardCandleCalibrationClosed : S.standardCandleCalibration
  nuisanceParametersClosed : S.nuisanceParameters
  distanceModulusClosed : S.distanceModulus

def SupernovaIaDataClosed (S : SupernovaIaDataPackage D) : Prop :=
  S.standardCandleCalibration ∧ S.nuisanceParameters ∧ S.distanceModulus

theorem supernova_ia_data_closed_from_evidence (S : SupernovaIaDataPackage D) (E : SupernovaIaDataEvidence S) : SupernovaIaDataClosed S := by
  exact And.intro E.standardCandleCalibrationClosed (And.intro E.nuisanceParametersClosed E.distanceModulusClosed)

end CosmologyDarkEnergyCanonicalLaneLean
end HautevilleHouse