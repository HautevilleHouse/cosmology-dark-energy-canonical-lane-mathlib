import canonicalLaneMathlib.AdmissibleClass
import CosmologyDarkEnergyCanonicalLaneLean.PrimitiveLambdaCDM

namespace HautevilleHouse
namespace CosmologyDarkEnergyCanonicalLaneLean

structure FriedmannEquationPackage (S : PrimitiveFLRWSpacetime) (a : PrimitiveExpansionFactor) (M : PrimitiveMatterContent) (L : PrimitiveCosmologicalConstant) where
  firstEquation : Prop
  secondEquation : Prop
  hubbleParameterRelation : Prop
  firstEquationClosed : firstEquation
  secondEquationClosed : secondEquation
  hubbleParameterRelationClosed : hubbleParameterRelation

structure FriedmannEquationEvidence {S : PrimitiveFLRWSpacetime} {a : PrimitiveExpansionFactor} {M : PrimitiveMatterContent} {L : PrimitiveCosmologicalConstant} (F : FriedmannEquationPackage S a M L) where
  firstEquationClosed : F.firstEquation
  secondEquationClosed : F.secondEquation
  hubbleParameterRelationClosed : F.hubbleParameterRelation

def FriedmannEquationClosed {S : PrimitiveFLRWSpacetime} {a : PrimitiveExpansionFactor} {M : PrimitiveMatterContent} {L : PrimitiveCosmologicalConstant} (F : FriedmannEquationPackage S a M L) : Prop :=
  F.firstEquation ∧ F.secondEquation ∧ F.hubbleParameterRelation

theorem friedmann_equation_closed_from_evidence {S : PrimitiveFLRWSpacetime} {a : PrimitiveExpansionFactor} {M : PrimitiveMatterContent} {L : PrimitiveCosmologicalConstant} (F : FriedmannEquationPackage S a M L) (E : FriedmannEquationEvidence F) : FriedmannEquationClosed F := by
  exact And.intro E.firstEquationClosed (And.intro E.secondEquationClosed E.hubbleParameterRelationClosed)

end CosmologyDarkEnergyCanonicalLaneLean
end HautevilleHouse