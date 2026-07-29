import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean

structure RelationCategory (Obj : Type u) where
  source : Obj
  target : Obj
  graph : Obj → Obj → Prop

structure RelationComposition {Obj : Type u} (R : RelationCategory Obj) (S : RelationCategory Obj)
    (h : R.target = S.source) : RelationCategory Obj where
  source := R.source
  target := S.target
  graph x z := ∃ y, R.graph x y ∧ S.graph y z

structure RelationCategoryEvidence (Obj : Type u) where
  compositionClosed : Prop
  identityRelation : Obj → RelationCategory Obj
  associativity : Prop

end CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean
end HautevilleHouse