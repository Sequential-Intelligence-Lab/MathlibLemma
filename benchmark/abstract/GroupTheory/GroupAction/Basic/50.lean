import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.fixedPoints_sInter
    [Monoid M] [MulAction M α] (𝒮 : Set (Set α))
    (h : ∀ s ∈ 𝒮, s ⊆ MulAction.fixedPoints M α) :
    ⋂₀ 𝒮 ⊆ MulAction.fixedPoints M α := by
  sorry
