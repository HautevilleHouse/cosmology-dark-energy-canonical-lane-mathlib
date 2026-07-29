import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyDarkEnergyCanonicalLaneLean

structure EquationOfStatePackage (F : FriedmannEquationsPackage) where
  wParameter : Type
  wConstant : Prop
  wVariable : Prop
  barotropicForm : Prop
  scalarFieldForm : Prop
  crossingPhantom : Prop

structure EquationOfStateEvidence {F : FriedmannEquationsPackage}
    (Eos : EquationOfStatePackage F) where
  wConstantClosed : Eos.wConstant
  wVariableClosed : Eos.wVariable
  barotropicFormClosed : Eos.barotropicForm
  scalarFieldFormClosed : Eos.scalarFieldForm
  crossingPhantomClosed : Eos.crossingPhantom

def EquationOfStateClosed {F : FriedmannEquationsPackage}
    (Eos : EquationOfStatePackage F) : Prop :=
  Eos.wConstant ∧ Eos.wVariable ∧ Eos.barotropicForm ∧
  Eos.scalarFieldForm ∧ Eos.crossingPhantom

theorem equation_of_state_closed_from_evidence
    {F : FriedmannEquationsPackage} (Eos : EquationOfStatePackage F)
    (E : EquationOfStateEvidence Eos) : EquationOfStateClosed Eos := by
  exact And.intro E.wConstantClosed
    (And.intro E.wVariableClosed
      (And.intro E.barotropicFormClosed
        (And.intro E.scalarFieldFormClosed E.crossingPhantomClosed)))

end CosmologyDarkEnergyCanonicalLaneLean
end HautevilleHouse