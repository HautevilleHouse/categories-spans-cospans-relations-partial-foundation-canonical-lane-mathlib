import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : ToposFoundationEvidence Unit (fun _ _ => Unit)
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean
end HautevilleHouse