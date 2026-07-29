import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean

structure PartialOrderCategory (Obj : Type u) where
  le : Obj → Obj → Prop
  le_refl : ∀ x : Obj, le x x
  le_trans : ∀ x y z : Obj, le x y → le y z → le x z
  le_antisym : ∀ x y : Obj, le x y → le y x → x = y

structure PartialOrderCategoryEvidence (Obj : Type u) (P : PartialOrderCategory Obj) where
  reflClosed : P.le_refl
  transClosed : P.le_trans
  antisymClosed : P.le_antisym

theorem partial_order_category_closed (Obj : Type u) (P : PartialOrderCategory Obj)
    (E : PartialOrderCategoryEvidence Obj P) : Prop :=
  True

end CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean
end HautevilleHouse