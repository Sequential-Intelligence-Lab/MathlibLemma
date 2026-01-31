import Mathlib


variable {M G H R α β γ δ : Type*}

/-! ### Basic orbit / fixed point / stabilizer lemmas -/
lemma MulAction.fixedPoints_inter
    [Monoid M] [MulAction M α] (s t : Set α)
    (hs : s ⊆ MulAction.fixedPoints M α)
    (ht : t ⊆ MulAction.fixedPoints M α) :
    s ∩ t ⊆ MulAction.fixedPoints M α := by
  intro x hx
  -- hx : x ∈ s ∩ t
  -- From hx, we get x ∈ s and x ∈ t
  have hx_s : x ∈ s := hx.1
  -- Now use the fact that s is contained in the fixed points
  exact hs hx_s