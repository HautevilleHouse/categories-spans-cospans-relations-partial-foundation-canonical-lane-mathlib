import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean

structure CospanCategory (Obj : Type u) (Mor : Obj → Obj → Type v) where
  apex : Obj
  leftLeg : Mor (from : Obj) apex
  rightLeg : Mor (to : Obj) apex

def CospanComposition {C : Type u → Type v → Type w} {Obj : Type u} {Mor : Obj → Obj → Type v}
    [CategoryStruct C Obj Mor] {X Y Z : Obj} (s : CospanCategory Obj Mor X Y) (t : CospanCategory Obj Mor Y Z) :
    CospanCategory Obj Mor X Z :=
  { apex := s.apex × t.apex,   -- placeholders; actual construction uses pushout
    leftLeg := (s.leftLeg).comp (CategoryStruct.inj1 _ _),
    rightLeg := (t.rightLeg).comp (CategoryStruct.inj2 _ _) }

structure CospanCategoryEvidence (Obj : Type u) (Mor : Obj → Obj → Type v) where
  compositionClosed : Prop
  identityCospan : Obj → CospanCategory Obj Mor Obj

end CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean
end HautevilleHouse