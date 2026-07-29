import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean

structure SpanPackage (C : CategoryPackage) where
  apex : C.objects
  leftLeg : C.morphisms apex (C.spanSource)
  rightLeg : C.morphisms apex (C.spanTarget)
  source : C.objects
  target : C.objects

structure CospanPackage (C : CategoryPackage) where
  apex : C.objects
  leftLeg : C.morphisms (C.cospanSource) apex
  rightLeg : C.morphisms (C.cospanTarget) apex
  source : C.objects
  target : C.objects

end CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean
end HautevilleHouse