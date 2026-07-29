import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean

structure SpanCategory (Obj : Type u) (Mor : Obj → Obj → Type v) where
  source : Mor a b → Obj
  target : Mor a b → Obj
  identity : (X : Obj) → Mor X X
  compose : Mor b c → Mor a b → Mor a c

structure Span (Obj : Type u) (Mor : Obj → Obj → Type v) (A B : Obj) where
  apex : Obj
  leftLeg : Mor apex A
  rightLeg : Mor apex B

structure SpanStructurePackage (Obj : Type u) (Mor : Obj → Obj → Type v) where
  category : SpanCategory Obj Mor
  spansDefined : Prop
  spanComposition : Prop
  universalProperty : Prop

structure SpanStructureEvidence {Obj : Type u} {Mor : Obj → Obj → Type v} (S : SpanStructurePackage Obj Mor) where
  spansDefinedClosed : S.spansDefined
  spanCompositionClosed : S.spanComposition
  universalPropertyClosed : S.universalProperty

def SpanStructureClosed {Obj : Type u} {Mor : Obj → Obj → Type v} (S : SpanStructurePackage Obj Mor) : Prop :=
  S.spansDefined ∧ S.spanComposition ∧ S.universalProperty

theorem span_structure_closed_from_evidence {Obj : Type u} {Mor : Obj → Obj → Type v}
    (S : SpanStructurePackage Obj Mor) (E : SpanStructureEvidence S) : SpanStructureClosed S := by
  exact And.intro E.spansDefinedClosed (And.intro E.spanCompositionClosed E.universalPropertyClosed)

end CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean
end HautevilleHouse
