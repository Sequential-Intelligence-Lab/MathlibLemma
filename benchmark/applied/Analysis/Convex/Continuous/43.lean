import Mathlib


variable {α β γ E F : Type*}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]
variable {C D : Set E} {x y z x₀ : E} {r s t : ℝ}
variable {f g h : E → ℝ} {φ : E → F}

/-! ### Convex / Concave: basic structural lemmas -/
lemma ConvexOn.global_lipschitz_of_quadratic_bound
    (hf : ConvexOn ℝ univ f)
    (hbound : ∀ x, ‖f x‖ ≤ M * (1 + ‖x‖^2)) :
    ∀ R > 0, ∃ K, LipschitzOnWith K f (Metric.ball 0 R) := by
  sorry

/-! ### Interaction with derivatives / subdifferentials -/
