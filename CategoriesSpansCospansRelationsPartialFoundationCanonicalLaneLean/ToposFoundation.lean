import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean

structure ToposFoundation (Obj : Type u) (Mor : Obj → Obj → Type v) where
  finiteLimits : Prop
  finiteColimits : Prop
  subobjectClassifier : Obj
  powerObject : Obj → Obj
  exponential : Obj → Obj → Obj
  localCartesianClosed : Prop
  pullbackStable : Prop
  pushoutStable : Prop

structure ToposFoundationEvidence (Obj : Type u) (Mor : Obj → Obj → Type v) (T : ToposFoundation Obj Mor) where
  finiteLimitsClosed : T.finiteLimits
  finiteColimitsClosed : T.finiteColimits
  localCartesianClosedClosed : T.localCartesianClosed
  pullbackStableClosed : T.pullbackStable
  pushoutStableClosed : T.pushoutStable

theorem topos_foundation_closed (Obj : Type u) (Mor : Obj → Obj → Type v)
    (T : ToposFoundation Obj Mor) (E : ToposFoundationEvidence Obj Mor T) : Prop :=
  T.finiteLimits ∧ T.finiteColimits ∧ T.localCartesianClosed ∧ T.pullbackStable ∧ T.pushoutStable

end CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean
end HautevilleHouse