import Mathlib


variable {α β γ E F : Type*}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]
variable {C D : Set E} {x y z x₀ : E} {r s t : ℝ}
variable {f g h : E → ℝ} {φ : E → F}

/-! ### Convex / Concave: basic structural lemmas -/
lemma ConvexOn.max (hf : ConvexOn ℝ C f) (hg : ConvexOn ℝ C g) :
    ConvexOn ℝ C fun x => max (f x) (g x) := by
  sorry
