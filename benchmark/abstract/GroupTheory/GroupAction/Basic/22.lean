import Mathlib

variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.orbit_congr
    [Group G] [MulAction G α] [MulAction G β]
    (f : α ≃ β)
    (hf : ∀ (g : G) (a : α),
      f (SMul.smul (M := G) (α := α) g a)
        = SMul.smul (M := G) (α := β) g (f a))
    (a : α) :
    MulAction.orbit G (f a) = f '' MulAction.orbit G a := by
  sorry