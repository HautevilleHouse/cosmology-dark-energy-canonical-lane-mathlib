import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyDarkEnergyCanonicalLaneLean

structure DarkEnergyAdmittedObject where
  cosmologicalModel : Type
  darkEnergyComponent : Prop
  equationOfState : Prop
  conclusion : equationOfState

structure AdmissibleClass where
  object : DarkEnergyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  DarkEnergyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CosmologyDarkEnergyCanonicalLaneLean
end HautevilleHouse