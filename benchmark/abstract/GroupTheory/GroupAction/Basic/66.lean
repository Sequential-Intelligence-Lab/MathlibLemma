import Mathlib

variable {G α β : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma AddAction.orbit_congr
    [AddGroup G] [AddAction G α] [AddAction G β]
    (f : α ≃ β)
    (hf : ∀ (g : G) (a : α), f (g +ᵥ a) = g +ᵥ f a)
    (a : α) :
    AddAction.orbit G (f a) = f '' AddAction.orbit G a := by
  sorry

/-! ### Pointwise set action lemmas -/