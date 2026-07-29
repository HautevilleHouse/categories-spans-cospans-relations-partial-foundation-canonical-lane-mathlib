import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean

structure PartialMap (A B : Type u) where
  domain : Set A
  mapping : domain → B

structure PartialMapCategoryPackage (Obj : Type u) where
  partialMapsDefined : Prop
  compositionDefined : Prop
  identityDefined : Prop

structure PartialMapCategoryEvidence (P : PartialMapCategoryPackage Obj) where
  partialMapsDefinedClosed : P.partialMapsDefined
  compositionDefinedClosed : P.compositionDefined
  identityDefinedClosed : P.identityDefined

def PartialMapCategoryClosed (P : PartialMapCategoryPackage Obj) : Prop :=
  P.partialMapsDefined ∧ P.compositionDefined ∧ P.identityDefined

theorem partial_map_category_closed_from_evidence (P : PartialMapCategoryPackage Obj)
    (E : PartialMapCategoryEvidence P) : PartialMapCategoryClosed P := by
  exact And.intro E.partialMapsDefinedClosed
    (And.intro E.compositionDefinedClosed E.identityDefinedClosed)

end CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean
end HautevilleHouse
