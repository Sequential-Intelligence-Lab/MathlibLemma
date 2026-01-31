import Mathlib


variable {α β γ E F : Type*}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]
variable {C D : Set E} {x y z x₀ : E} {r s t : ℝ}
variable {f g h : E → ℝ} {φ : E → F}

/-! ### Convex / Concave: basic structural lemmas -/
lemma ConvexOn.global_lipschitz_of_quadratic_bound
    {M : ℝ}
    (hf : ConvexOn ℝ univ f)
    (hbound : ∀ x, ‖f x‖ ≤ M * (1 + ‖x‖^2)) :
    ∀ R > 0, ∃ K, LipschitzOnWith K f (Metric.ball 0 R) := by
  -- As explained in the proof plan, this statement in this generality
  -- is not derivable from the given hypotheses within mathlib as of now.
  -- A full formal proof would require additional hypotheses (e.g. finite
  -- dimensionality and differentiability of `f`) or a substantial amount
  -- of convex analysis not yet available as a single reusable lemma.
  --
  -- Therefore we leave this lemma as a placeholder.
  sorry