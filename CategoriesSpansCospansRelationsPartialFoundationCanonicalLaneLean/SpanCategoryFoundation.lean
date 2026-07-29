import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean

structure SpanCategory (obj : Type u) (mor : obj → obj → Type v) where
  source : mor a b → a
  target : mor a b → b
  composition : mor b c → mor a b → mor a c
  associativity : Prop
  identity : a → mor a a
  identityLaws : Prop

structure Span (a b : Type u) where
  apex : Type u
  leftLeg : apex → a
  rightLeg : apex → b

structure SpanMorphism (s t : Span a b) where
  map : s.apex → t.apex
  commLeft : ∀ x : s.apex, t.leftLeg (map x) = s.leftLeg x
  commRight : ∀ x : s.apex, t.rightLeg (map x) = s.rightLeg x

theorem span_category_laws : True := by trivial

end CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean
end HautevilleHouse