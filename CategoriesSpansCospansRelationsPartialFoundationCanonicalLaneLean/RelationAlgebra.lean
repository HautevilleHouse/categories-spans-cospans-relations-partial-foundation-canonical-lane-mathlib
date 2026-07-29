import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean

structure Relation (α β : Type u) where
  graph : Set (α × β)

def compose {α β γ : Type u} (r : Relation α β) (s : Relation β γ) : Relation α γ :=
  { graph := { (x, z) | ∃ y : β, (x, y) ∈ r.graph ∧ (y, z) ∈ s.graph } }

def converse {α β : Type u} (r : Relation α β) : Relation β α :=
  { graph := { (y, x) | (x, y) ∈ r.graph } }

def identity (α : Type u) : Relation α α :=
  { graph := { (x, x) | x : α } }

structure RelationCategory (obj : Type u) where
  hom : obj → obj → Type u
  composition : hom b c → hom a b → hom a c
  identity : hom a a
  laws : Prop

theorem relation_composition_associative {α β γ δ : Type u} (r : Relation α β) (s : Relation β γ) (t : Relation γ δ) : compose (compose r s) t = compose r (compose s t) := by
  ext ⟨x, w⟩; constructor
  · intro h; rcases h with ⟨y, h⟩; rcases h with ⟨z, hxy, hyz⟩; refine ⟨z, ?_, hyz⟩; exact ⟨y, hxy, hyz⟩
  · intro h; rcases h with ⟨z, h⟩; rcases h with ⟨y, hxz, hyz⟩; refine ⟨y, ?_, hyz⟩; exact ⟨z, hxz, hyz⟩

theorem relation_composition_identity_left {α β : Type u} (r : Relation α β) : compose (identity α) r = r := by
  ext ⟨x, y⟩; simp [identity, compose]

theorem relation_composition_identity_right {α β : Type u} (r : Relation α β) : compose r (identity β) = r := by
  ext ⟨x, y⟩; simp [identity, compose]

end CategoriesSpansCospansRelationsPartialFoundationCanonicalLaneLean
end HautevilleHouse