import Mathlib

open CategoryTheory

/-- If a morphism from a connected object is idempotent in the target,
it is an isomorphism onto a connected component.

(Statement only; not proved.) -/
lemma connected_idempotent_factor
    {C : Type*} [Category C] [GaloisCategory C]
    {X Y : C}
    (f : X ⟶ Y) (e : Y ⟶ Y) (he : e ≫ e = e) (hfe : f ≫ e = f) :
    ∃ (Z : C) (i : Z ⟶ Y) (g : X ⟶ Z),
      Mono i ∧ IsConnected C ∧ g ≫ i = f := by
  sorry