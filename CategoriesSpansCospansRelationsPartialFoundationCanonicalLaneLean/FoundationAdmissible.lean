import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean.SpanCategory
import HautevilleHouse.CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean.CospanCategory
import HautevilleHouse.CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean.RelationCategory
import HautevilleHouse.CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean.PartialMorphism

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean

structure FoundationAdmittedObject where
  spanStructure : ∀ (A B : Type u), Span A B
  cospanStructure : ∀ (A B : Type u), Cospan A B
  relationStructure : ∀ (A B : Type u), Relation A B
  partialMapStructure : ∀ (A B : Type u), PartialMap A B
  spanCompositionClosed : Prop
  cospanCompositionClosed : Prop
  relationAssociativityClosed : Prop
  partialCompositionClosed : Prop

structure FoundationAdmissibleClass extends FoundationAdmittedObject where
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def FoundationWitnessClosed (O : FoundationAdmittedObject) : Prop :=
  O.spanCompositionClosed ∧ O.cospanCompositionClosed ∧ O.relationAssociativityClosed ∧ O.partialCompositionClosed

end CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean
end HautevilleHouse