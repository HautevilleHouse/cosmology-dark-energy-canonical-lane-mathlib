import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyDarkEnergyCanonicalLaneLean

structure CosmologicalParametersPackage {F : FriedmannEquationsPackage}
    (Eos : EquationOfStatePackage F) where
  omegaMatter : Prop
  omegaDarkEnergy : Prop
  omegaCurvature : Prop
  hubbleConstant : Prop
  decelerationParameter : Prop
  statefinderPair : Prop
  omDiagnostic : Prop

structure CosmologicalParametersEvidence {F : FriedmannEquationsPackage}
    {Eos : EquationOfStatePackage F} (C : CosmologicalParametersPackage Eos) where
  omegaMatterClosed : C.omegaMatter
  omegaDarkEnergyClosed : C.omegaDarkEnergy
  omegaCurvatureClosed : C.omegaCurvature
  hubbleConstantClosed : C.hubbleConstant
  decelerationParameterClosed : C.decelerationParameter
  statefinderPairClosed : C.statefinderPair
  omDiagnosticClosed : C.omDiagnostic

def CosmologicalParametersClosed {F : FriedmannEquationsPackage}
    {Eos : EquationOfStatePackage F} (C : CosmologicalParametersPackage Eos) : Prop :=
  C.omegaMatter ∧ C.omegaDarkEnergy ∧ C.omegaCurvature ∧ C.hubbleConstant ∧
  C.decelerationParameter ∧ C.statefinderPair ∧ C.omDiagnostic

theorem cosmological_parameters_closed_from_evidence
    {F : FriedmannEquationsPackage} {Eos : EquationOfStatePackage F}
    (C : CosmologicalParametersPackage Eos) (E : CosmologicalParametersEvidence C) :
    CosmologicalParametersClosed C := by
  exact And.intro E.omegaMatterClosed
    (And.intro E.omegaDarkEnergyClosed
      (And.intro E.omegaCurvatureClosed
        (And.intro E.hubbleConstantClosed
          (And.intro E.decelerationParameterClosed
            (And.intro E.statefinderPairClosed E.omDiagnosticClosed)))))

end CosmologyDarkEnergyCanonicalLaneLean
end HautevilleHouse