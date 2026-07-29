import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean

structure SpanCategory (Obj : Type u) (Mor : Obj → Obj → Type v) where
  apex : Obj
  leftLeg : Mor apex (from : Obj)
  rightLeg : Mor apex (to : Obj)

def SpanComposition {C : Type u → Type v → Type w} {Obj : Type u} {Mor : Obj → Obj → Type v}
    [CategoryStruct C Obj Mor] {X Y Z : Obj} (s : SpanCategory Obj Mor X Y) (t : SpanCategory Obj Mor Y Z) :
    SpanCategory Obj Mor X Z :=
  { apex := s.apex × t.apex,   -- placeholders; actual construction uses pullback
    leftLeg := (s.leftLeg).comp (CategoryStruct.proj1 _ _),
    rightLeg := (t.rightLeg).comp (CategoryStruct.proj2 _ _) }

structure SpanCategoryEvidence (Obj : Type u) (Mor : Obj → Obj → Type v) where
  compositionClosed : Prop
  identitySpan : Obj → SpanCategory Obj Mor Obj

end CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean
end HautevilleHouse