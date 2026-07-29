import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean.FoundationAdmissible

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean

def bridgeClosed (A : FoundationAdmissibleClass) : Prop :=
  FoundationWitnessClosed A.toFoundationAdmittedObject

theorem bridge_from_admissible_class (A : FoundationAdmissibleClass) : bridgeClosed A := by
  exact And.intro A.spanCompositionClosed (And.intro A.cospanCompositionClosed (And.intro A.relationAssociativityClosed A.partialCompositionClosed))

end CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean
end HautevilleHouse