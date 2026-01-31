import Mathlib

variable {α β γ E F : Type*}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]
variable {C D : Set E} {x y z x₀ : E} {r s t : ℝ}
variable {f g h : E → ℝ} {φ : E → F}

/-! ### Convex / Concave: basic structural lemmas -/
lemma ConvexOn.middle_le (hf : ConvexOn ℝ C f)
    {x y} (hx : x ∈ C) (hy : y ∈ C) :
    f ((1 / 2 : ℝ) • x + (1 / 2 : ℝ) • y) ≤ (f x + f y) / 2 := by
  sorry