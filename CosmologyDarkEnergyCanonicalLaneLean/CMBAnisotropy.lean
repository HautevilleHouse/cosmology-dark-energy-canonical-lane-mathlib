import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyDarkEnergyCanonicalLaneLean

structure CMBAnisotropyPackage where
  angularPowerSpectrum : Type u
  acousticPeaks : Prop
  darkEnergyImprint : Prop
  geometricSensitivity : Prop
  cosmologicalParameters : Prop

structure CMBAnisotropyEvidence (C : CMBAnisotropyPackage) where
  acousticPeaksClosed : C.acousticPeaks
  darkEnergyImprintClosed : C.darkEnergyImprint
  geometricSensitivityClosed : C.geometricSensitivity
  cosmologicalParametersClosed : C.cosmologicalParameters

def CMBAnisotropyClosed (C : CMBAnisotropyPackage) : Prop :=
  C.acousticPeaks ∧ C.darkEnergyImprint ∧ C.geometricSensitivity ∧ C.cosmologicalParameters

theorem cmb_anisotropy_closed_from_evidence (C : CMBAnisotropyPackage)
    (E : CMBAnisotropyEvidence C) : CMBAnisotropyClosed C := by
  exact And.intro E.acousticPeaksClosed
    (And.intro E.darkEnergyImprintClosed
      (And.intro E.geometricSensitivityClosed E.cosmologicalParametersClosed))

end CosmologyDarkEnergyCanonicalLaneLean
end HautevilleHouse