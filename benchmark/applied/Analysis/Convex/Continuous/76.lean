import Mathlib

variable {α β γ E F : Type*}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]
variable {C D : Set E} {x y z x₀ : E} {r s t : ℝ}
variable {f g h : E → ℝ} {φ : E → F}

/-! ### Convex / Concave: basic structural lemmas -/
lemma ConvexOn.bound_of_mem_segment
    (hf : ConvexOn ℝ C f)
    {x y z} (hx : x ∈ C) (hy : y ∈ C) (hz : z ∈ segment ℝ x y) :
    f z ≤ max (f x) (f y) := by
  sorry