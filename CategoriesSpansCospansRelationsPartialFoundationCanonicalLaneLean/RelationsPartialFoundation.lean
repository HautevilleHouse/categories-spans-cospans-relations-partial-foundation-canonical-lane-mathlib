import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean

structure RelationPackage where
  carrier : Type u
  relation : carrier → carrier → Prop
  reflexive : Prop
  symmetric : Prop
  transitive : Prop

structure RelationEvidence (R : RelationPackage) where
  reflexiveClosed : R.reflexive
  symmetricClosed : R.symmetric
  transitiveClosed : R.transitive

def RelationClosed (R : RelationPackage) : Prop :=
  R.reflexive ∧ R.symmetric ∧ R.transitive

theorem relation_closed_from_evidence (R : RelationPackage) (E : RelationEvidence R) : RelationClosed R :=
  And.intro E.reflexiveClosed (And.intro E.symmetricClosed E.transitiveClosed)

structure PartialOrderPackage where
  carrier : Type u
  leq : carrier → carrier → Prop
  reflexive : Prop
  antisymmetric : Prop
  transitive : Prop

structure PartialOrderEvidence (P : PartialOrderPackage) where
  reflexiveClosed : P.reflexive
  antisymmetricClosed : P.antisymmetric
  transitiveClosed : P.transitive

def PartialOrderClosed (P : PartialOrderPackage) : Prop :=
  P.reflexive ∧ P.antisymmetric ∧ P.transitive

theorem partial_order_closed_from_evidence (P : PartialOrderPackage) (E : PartialOrderEvidence P) : PartialOrderClosed P :=
  And.intro E.reflexiveClosed (And.intro E.antisymmetricClosed E.transitiveClosed)

structure FoundationPackage where
  category : CategoryPackage
  spans : SpanPackage category
  cospans : CospanPackage category
  relations : RelationPackage
  partialOrder : PartialOrderPackage
  coherence : Prop

structure FoundationEvidence (F : FoundationPackage) where
  categoryClosed : CategoryClosed F.category
  relationClosed : RelationClosed F.relations
  partialOrderClosed : PartialOrderClosed F.partialOrder
  coherenceClosed : F.coherence

def FoundationClosed (F : FoundationPackage) : Prop :=
  CategoryClosed F.category ∧ RelationClosed F.relations ∧ PartialOrderClosed F.partialOrder ∧ F.coherence

theorem foundation_closed_from_evidence (F : FoundationPackage) (E : FoundationEvidence F) : FoundationClosed F :=
  And.intro E.categoryClosed (And.intro E.relationClosed (And.intro E.partialOrderClosed E.coherenceClosed))

end CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean
end HautevilleHouse