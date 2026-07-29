import canonicalLaneMathlib.AdmissibleClass
import CosmologyDarkEnergyCanonicalLaneLean.DistanceRedshiftRelation

namespace HautevilleHouse
namespace CosmologyDarkEnergyCanonicalLaneLean

structure CMBPowerSpectrumPackage (D : DistanceRedshiftRelationPackage F) where
  temperatureAnisotropy : Type
  acousticPeaks : Prop
  dampingTail : Prop
  reionizationSignal : Prop
  acousticPeaksTerm : acousticPeaks
  dampingTailTerm : dampingTail
  reionizationSignalTerm : reionizationSignal

structure CMBPowerSpectrumEvidence (C : CMBPowerSpectrumPackage D) where
  acousticPeaksClosed : C.acousticPeaks
  dampingTailClosed : C.dampingTail
  reionizationSignalClosed : C.reionizationSignal

def CMBPowerSpectrumClosed (C : CMBPowerSpectrumPackage D) : Prop :=
  C.acousticPeaks ∧ C.dampingTail ∧ C.reionizationSignal

theorem cmb_power_spectrum_closed_from_evidence (C : CMBPowerSpectrumPackage D) (E : CMBPowerSpectrumEvidence C) : CMBPowerSpectrumClosed C := by
  exact And.intro E.acousticPeaksClosed (And.intro E.dampingTailClosed E.reionizationSignalClosed)

end CosmologyDarkEnergyCanonicalLaneLean
end HautevilleHouse