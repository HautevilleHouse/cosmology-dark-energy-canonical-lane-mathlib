import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyDarkEnergyCanonicalLaneLean

def ConstrainedDarkEnergyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dark_energy_endgame (A : AdmissibleClass) :
    ConstrainedDarkEnergyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CosmologyDarkEnergyCanonicalLaneLean
end HautevilleHouse