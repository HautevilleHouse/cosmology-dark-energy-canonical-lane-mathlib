import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyDarkEnergyCanonicalLaneLean

def DarkEnergyWitnessClosed (O : DarkEnergyAdmittedObject) : Prop :=
  O.equationOfState

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DarkEnergyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CosmologyDarkEnergyCanonicalLaneLean
end HautevilleHouse