import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean

structure StructureObject where
  carrier : Type
  structure : Prop
  conclusion : structure

def StructureWitnessClosed (O : StructureObject) : Prop :=
  O.structure

end CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean
end HautevilleHouse
