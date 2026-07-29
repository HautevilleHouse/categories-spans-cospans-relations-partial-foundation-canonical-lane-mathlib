import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean

structure PartialOrder (A : Type u) where
  leq : A → A → Prop
  refl : ∀ a : A, leq a a
  antisymm : ∀ a b : A, leq a b → leq b a → a = b
  trans : ∀ a b c : A, leq a b → leq b c → leq a c

structure MonotoneMap (A B : Type u) (ordA : PartialOrder A) (ordB : PartialOrder B) where
  func : A → B
  monotone : ∀ a b : A, ordA.leq a b → ordB.leq (func a) (func b)

structure PosetCategory (obj : Type u) where
  hom : obj → obj → Type u
  composition : hom b c → hom a b → hom a c
  identity : hom a a
  laws : Prop

theorem monotone_identity_is_monotone (A : Type u) (ord : PartialOrder A) : MonotoneMap A A ord ord := by
  refine { func := id, monotone := ?_ }
  intro a b h; exact h

theorem monotone_composition_is_monotone (A B C : Type u) (ordA : PartialOrder A) (ordB : PartialOrder B) (ordC : PartialOrder C) (f : MonotoneMap A B ordA ordB) (g : MonotoneMap B C ordB ordC) : MonotoneMap A C ordA ordC := by
  refine { func := g.func ∘ f.func, monotone := ?_ }
  intro a b h; exact g.monotone (f.func a) (f.func b) (f.monotone a b h)

end CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean
end HautevilleHouse