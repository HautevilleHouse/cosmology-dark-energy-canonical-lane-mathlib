import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyDarkEnergyCanonicalLaneLean

structure HubbleConstant where
  h0 : ℝ
  h0Error : ℝ
  units : String
  measurementMethod : String

structure HubbleConstantEvidence (H : HubbleConstant) where
  h0PositiveClosed : H.h0 > 0
  h0ErrorPositiveClosed : H.h0Error > 0
  unitsStandardClosed : H.units = "km/s/Mpc"

def HubbleConstantClosed (H : HubbleConstant) : Prop :=
  H.h0 > 0 ∧ H.h0Error > 0 ∧ H.units = "km/s/Mpc"

theorem hubble_constant_closed_from_evidence (H : HubbleConstant) (E : HubbleConstantEvidence H) : HubbleConstantClosed H :=
  And.intro E.h0PositiveClosed (And.intro E.h0ErrorPositiveClosed E.unitsStandardClosed)

end CosmologyDarkEnergyCanonicalLaneLean
end HautevilleHouse