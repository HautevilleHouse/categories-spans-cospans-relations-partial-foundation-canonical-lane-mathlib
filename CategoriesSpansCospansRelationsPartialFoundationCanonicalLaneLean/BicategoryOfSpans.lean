import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean

structure BicategoryOfSpansPackage (Obj : Type u) where
  bicategoryStructure : Prop
  associativityCoherence : Prop
  unitCoherence : Prop
  interchangeLaw : Prop

structure BicategoryOfSpansEvidence (B : BicategoryOfSpansPackage Obj) where
  bicategoryStructureClosed : B.bicategoryStructure
  associativityCoherenceClosed : B.associativityCoherence
  unitCoherenceClosed : B.unitCoherence
  interchangeLawClosed : B.interchangeLaw

def BicategoryOfSpansClosed (B : BicategoryOfSpansPackage Obj) : Prop :=
  B.bicategoryStructure ∧ B.associativityCoherence ∧ B.unitCoherence ∧ B.interchangeLaw

theorem bicategory_of_spans_closed_from_evidence (B : BicategoryOfSpansPackage Obj)
    (E : BicategoryOfSpansEvidence B) : BicategoryOfSpansClosed B := by
  exact And.intro E.bicategoryStructureClosed
    (And.intro E.associativityCoherenceClosed
      (And.intro E.unitCoherenceClosed E.interchangeLawClosed))

end CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean
end HautevilleHouse
