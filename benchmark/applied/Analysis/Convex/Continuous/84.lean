import Mathlib


variable {α β γ E F : Type*}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]
variable {C D : Set E} {x y z x₀ : E} {r s t : ℝ}
variable {f g h : E → ℝ} {φ : E → F}

/-! ### Convex / Concave: basic structural lemmas -/
lemma ConcaveOn.restrict_line
    (hf : ConcaveOn ℝ C f) (x y : E)
    (hseg : segment ℝ x y ⊆ C) :
    ConcaveOn ℝ (segment ℝ x y) f := by
  sorry
