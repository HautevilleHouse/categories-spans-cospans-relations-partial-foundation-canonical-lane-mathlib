import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean

structure RelCategory (Obj : Type) where
  hom : Obj → Obj → Type
  id : (A : Obj) → hom A A
  comp : {A B C : Obj} → hom B C → hom A B → hom A C
  assoc : {A B C D : Obj} (f : hom C D) (g : hom B C) (h : hom A B) → comp f (comp g h) = comp (comp f g) h
  idLeft : {A B : Obj} (f : hom A B) → comp (id B) f = f
  idRight : {A B : Obj} (f : hom A B) → comp f (id A) = f

structure RelMorphism (A B : Type) where
  relation : A → B → Prop

structure RelCategoryOnTypes where
  hom : Type → Type → Type
  id : (A : Type) → hom A A
  comp : {A B C : Type} → hom B C → hom A B → hom A C
  assoc : {A B C D : Type} (f : hom C D) (g : hom B C) (h : hom A B) → comp f (comp g h) = comp (comp f g) h
  idLeft : {A B : Type} (f : hom A B) → comp (id B) f = f
  idRight : {A B : Type} (f : hom A B) → comp f (id A) = f

end CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean
end HautevilleHouse