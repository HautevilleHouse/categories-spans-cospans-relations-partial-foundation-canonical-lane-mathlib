import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure AdmittedObject where
  category : Type
  spanStructure : SpanCategory category (fun A B => Span A B)
  cospanStructure : CospanCategory category (fun A B => Cospan A B)
  relStructure : RelCategory category
  partialStructure : PartialCategory category
  foundationAxiom : Prop
  axiomTerm : foundationAxiom

def bridgeClosed (A : AdmissibleClass) : Prop := A.object.foundationAxiom

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := A.object.axiomTerm

def gateClosed (A : AdmissibleClass) : Prop := A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := A.gateWitness

def ConstrainedCategoriesClosure (A : AdmissibleClass) : Prop := bridgeClosed A ∧ gateClosed A

theorem constrained_categories_endgame (A : AdmissibleClass) : ConstrainedCategoriesClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean
end HautevilleHouse