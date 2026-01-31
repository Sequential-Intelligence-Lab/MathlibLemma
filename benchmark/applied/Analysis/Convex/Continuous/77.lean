import Mathlib

variable {α β γ E F : Type*}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]
variable {C D : Set E} {x y z x₀ : E} {r s t : ℝ}
variable {f g h : E → ℝ} {φ : E → F}

/-! ### Convex / Concave: basic structural lemmas -/
lemma ConcaveOn.bound_of_mem_segment
    (hf : ConcaveOn ℝ C f)
    {x y z} (hx : x ∈ C) (hy : y ∈ C) (hz : z ∈ segment ℝ x y) :
    min (f x) (f y) ≤ f z := by
  sorry

/-! ### Approximation by affine functions -/