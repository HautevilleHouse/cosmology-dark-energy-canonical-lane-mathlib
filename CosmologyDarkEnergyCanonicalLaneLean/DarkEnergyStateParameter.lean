import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyDarkEnergyCanonicalLaneLean

structure DarkEnergyStateParameter where
  redshift : ℝ
  equationOfState_w : ℝ
  darkEnergyDensity : ℝ
  pressure : ℝ

structure DarkEnergyStateParameterEvidence (D : DarkEnergyStateParameter) where
  equationOfStateClosed : D.equationOfState_w = -1.0 ∨ D.equationOfState_w > -1.0 ∨ D.equationOfState_w < -1.0
  densityPositiveClosed : D.darkEnergyDensity > 0

structure DarkEnergyStateParameterClosed (D : DarkEnergyStateParameter) where
  evidence : DarkEnergyStateParameterEvidence D

def dark_energy_state_parameter_closed_from_evidence (D : DarkEnergyStateParameter) (E : DarkEnergyStateParameterEvidence D) : DarkEnergyStateParameterClosed D :=
  { evidence := E }

end CosmologyDarkEnergyCanonicalLaneLean
end HautevilleHouse