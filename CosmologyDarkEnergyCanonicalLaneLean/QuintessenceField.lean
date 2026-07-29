import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CosmologyDarkEnergyCanonicalLaneLean

structure QuintessenceFieldPackage where
  scalarField : Type u
  potential : Type v
  kineticTerm : Prop
  trackerBehavior : Prop
  scalingSolution : Prop
  thawingBehavior : Prop

structure QuintessenceFieldEvidence (Q : QuintessenceFieldPackage) where
  kineticTermClosed : Q.kineticTerm
  trackerBehaviorClosed : Q.trackerBehavior
  scalingSolutionClosed : Q.scalingSolution
  thawingBehaviorClosed : Q.thawingBehavior

def QuintessenceFieldClosed (Q : QuintessenceFieldPackage) : Prop :=
  Q.kineticTerm ∧ Q.trackerBehavior ∧ Q.scalingSolution ∧ Q.thawingBehavior

theorem quintessence_field_closed_from_evidence (Q : QuintessenceFieldPackage)
    (E : QuintessenceFieldEvidence Q) : QuintessenceFieldClosed Q := by
  exact And.intro E.kineticTermClosed
    (And.intro E.trackerBehaviorClosed
      (And.intro E.scalingSolutionClosed E.thawingBehaviorClosed))

end CosmologyDarkEnergyCanonicalLaneLean
end HautevilleHouse