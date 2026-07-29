import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean

structure CategoriesSpansCospansRelationsPartialFoundationObject where
  spanCategory : Type
  cospanCategory : Type
  relationCategory : Type
  posetCategory : Type
  spanCospanCompatibility : Prop
  relationPosetCompatibility : Prop

structure AdmissibleClass where
  object : CategoriesSpansCospansRelationsPartialFoundationObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.spanCospanCompatibility ∧ A.object.relationPosetCompatibility

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro A.object.spanCospanCompatibility A.object.relationPosetCompatibility

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

theorem bridge_and_gate_provide_closure (A : AdmissibleClass) : bridgeClosed A ∧ gateClosed A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean
end HautevilleHouse