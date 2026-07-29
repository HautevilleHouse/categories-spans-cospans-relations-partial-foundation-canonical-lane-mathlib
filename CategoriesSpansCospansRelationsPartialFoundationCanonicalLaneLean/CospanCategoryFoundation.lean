import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean

structure Cospan (a b : Type u) where
  nadir : Type u
  leftLeg : a → nadir
  rightLeg : b → nadir

structure CospanMorphism (s t : Cospan a b) where
  map : s.nadir → t.nadir
  commLeft : ∀ x : a, map (s.leftLeg x) = t.leftLeg x
  commRight : ∀ x : b, map (s.rightLeg x) = t.rightLeg x

structure CospanCategory (obj : Type u) (mor : obj → obj → Type v) where
  source : mor a b → a
  target : mor a b → b
  composition : mor b c → mor a b → mor a c
  identity : a → mor a a
  laws : Prop

theorem cospan_category_laws : True := by trivial

end CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean
end HautevilleHouse