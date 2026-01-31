import Mathlib

variable {G α β : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/

lemma MulAction.orbit_image_eq_of_surjective
    [Group G] [Mul G] [MulAction G α] [MulAction G β]
    (f : α → β) (hf : ∀ (g : G) (a : α), f (g • a) = g • f a)
    (hsurj : Function.Surjective f) (a : α) :
    f '' MulAction.orbit G a = MulAction.orbit G (f a) := by
  sorry