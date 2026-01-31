import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.injective_map_fixedPoints
    [Monoid M] [MulAction M α] [MulAction M β]
    (f : α → β) (hf : ∀ g a, f (g • a) = g • f a)
    (hinj : Function.Injective f) :
    Function.Injective
      (fun a : MulAction.fixedPoints M α =>
        (⟨f a.1,
          by
            intro g
            have ha : g • a.1 = a.1 := a.2 g
            calc
              g • f a.1 = f (g • a.1) := by
                symm
                exact hf g a.1
              _ = f a.1 := by
                simpa [ha]
        ⟩ : MulAction.fixedPoints M β)) := by
  sorry

/-! ### Module / linear action lemmas -/