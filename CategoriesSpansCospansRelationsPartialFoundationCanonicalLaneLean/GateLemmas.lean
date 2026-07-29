import HautevilleHouse.CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean
end HautevilleHouse
