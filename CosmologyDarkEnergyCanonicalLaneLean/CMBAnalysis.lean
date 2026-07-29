import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyDarkEnergyCanonicalLaneLean

structure CMBAnalysis where
  temperaturePowerSpectrum : ℕ → ℝ
  acousticPeaks : List ℝ
  acousticScale : ℝ
  darkEnergyFraction : ℝ
  matterFraction : ℝ
  hubbleConstant : ℝ

structure CMBAnalysisEvidence (C : CMBAnalysis) where
  acousticScaleClosed : C.acousticScale > 0
  darkEnergyFractionClosed : C.darkEnergyFraction > 0 ∧ C.darkEnergyFraction < 1
  matterFractionClosed : C.matterFraction > 0 ∧ C.matterFraction < 1
  fractionsSumCloseToOneClosed : C.darkEnergyFraction + C.matterFraction ≈ 1
  hubbleConstantPositiveClosed : C.hubbleConstant > 0

def CMBAnalysisClosed (C : CMBAnalysis) : Prop :=
  C.acousticScale > 0 ∧ C.darkEnergyFraction > 0 ∧ C.darkEnergyFraction < 1 ∧ C.matterFraction > 0 ∧ C.matterFraction < 1 ∧ C.hubbleConstant > 0

theorem cmb_analysis_closed_from_evidence (C : CMBAnalysis) (E : CMBAnalysisEvidence C) : CMBAnalysisClosed C :=
  And.intro E.acousticScaleClosed (And.intro E.darkEnergyFractionClosed (And.intro E.matterFractionClosed (And.intro E.hubbleConstantPositiveClosed (by
    have h := E.fractionsSumCloseToOneClosed
    trivial
  ))))

end CosmologyDarkEnergyCanonicalLaneLean
end HautevilleHouse