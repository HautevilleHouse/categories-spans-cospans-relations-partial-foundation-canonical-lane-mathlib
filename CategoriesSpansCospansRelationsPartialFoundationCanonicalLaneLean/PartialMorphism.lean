import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean

structure PartialMorphism (A B : Type) where
  domain : A → Prop
  mapping : (x : A) → domain x → B

structure PartialCategory (Obj : Type) where
  hom : Obj → Obj → Type
  id : (A : Obj) → hom A A
  comp : {A B C : Obj} → hom B C → hom A B → hom A C
  assoc : {A B C D : Obj} (f : hom C D) (g : hom B C) (h : hom A B) → comp f (comp g h) = comp (comp f g) h
  idLeft : {A B : Obj} (f : hom A B) → comp (id B) f = f
  idRight : {A B : Obj} (f : hom A B) → comp f (id A) = f

structure PartialMorphismCategoryOnTypes where
  hom : Type → Type → Type
  identity : (A : Type) → hom A A
  compose : {A B C : Type} → hom B C → hom A B → hom A C
  associativity : {A B C D : Type} (f : hom C D) (g : hom B C) (h : hom A B) → compose f (compose g h) = compose (compose f g) h
  identityLeft : {A B : Type} (f : hom A B) → compose (identity B) f = f
  identityRight : {A B : Type} (f : hom A B) → compose f (identity A) = f

end CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean
end HautevilleHouse