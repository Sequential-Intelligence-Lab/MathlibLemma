import Mathlib

universe u

open CategoryTheory

/-- Any endomorphism of a Galois object with trivial effect on its fiber is the identity. -/
lemma galois_end_eq_id_of_fiber_trivial
    {C : Type u} [Category C]
    (F : C ⥤ FintypeCat)
    {A : C}
    (f : A ⟶ A)
    (hf : ∀ a : F.obj A, (F.map f) a = a) :
    f = 𝟙 A := by
  sorry