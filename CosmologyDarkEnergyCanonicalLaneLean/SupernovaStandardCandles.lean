import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyDarkEnergyCanonicalLaneLean

structure SupernovaStandardCandlesPackage where
  luminosityDistance : Type u
  redshiftMeasurement : Type v
  magnitudeRedshiftRelation : Prop
  calibrationCurve : Prop
  hubbleDiagram : Prop
  darkEnergySignature : Prop

structure SupernovaStandardCandlesEvidence (S : SupernovaStandardCandlesPackage) where
  magnitudeRedshiftRelationClosed : S.magnitudeRedshiftRelation
  calibrationCurveClosed : S.calibrationCurve
  hubbleDiagramClosed : S.hubbleDiagram
  darkEnergySignatureClosed : S.darkEnergySignature

def SupernovaStandardCandlesClosed (S : SupernovaStandardCandlesPackage) : Prop :=
  S.magnitudeRedshiftRelation ∧ S.calibrationCurve ∧ S.hubbleDiagram ∧ S.darkEnergySignature

theorem supernova_standard_candles_closed_from_evidence
    (S : SupernovaStandardCandlesPackage) (E : SupernovaStandardCandlesEvidence S) :
    SupernovaStandardCandlesClosed S := by
  exact And.intro E.magnitudeRedshiftRelationClosed
    (And.intro E.calibrationCurveClosed
      (And.intro E.hubbleDiagramClosed E.darkEnergySignatureClosed))

end CosmologyDarkEnergyCanonicalLaneLean
end HautevilleHouse