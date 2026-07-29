import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyDarkEnergyCanonicalLaneLean

structure DarkEnergyEndgameState where
  object : DarkEnergyAdmittedObject
  friedmannEvidence : FriedmannEquationsEvidence (FriedmannEquationsPackage.mk _ _ _ _ _ _ _ _ _)
  equationOfStateEvidence : EquationOfStateEvidence (EquationOfStatePackage.mk _ _ _ _ _ _ _)
  cosmologicalParametersEvidence : CosmologicalParametersEvidence (CosmologicalParametersPackage.mk _ _ _ _ _ _ _ _)
  closure : ConstrainedDarkEnergyClosure (AdmissibleClass.mk object _ _ _)

end CosmologyDarkEnergyCanonicalLaneLean
end HautevilleHouse