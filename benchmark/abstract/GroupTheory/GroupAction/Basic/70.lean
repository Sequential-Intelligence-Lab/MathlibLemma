import Mathlib

variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma smul_set_sUnion
    [Monoid M] [Mul α] [MulAction M α]
    [SMul M α] [SMul M (Set α)] [SMul M (Set (Set α))]
    (g : M) (𝒮 : Set (Set α)) :
    g • ⋃₀ 𝒮 = ⋃₀ (g • 𝒮) := by
  sorry

/-! ### Nontriviality and subsingleton criteria -/