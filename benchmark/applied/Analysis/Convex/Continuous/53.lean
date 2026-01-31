import Mathlib


variable {α β γ E F : Type*}
variable [NormedAddCommGroup E] [NormedSpace ℝ E]
variable [NormedAddCommGroup F] [NormedSpace ℝ F]
variable {C D : Set E} {x y z x₀ : E} {r s t : ℝ}
variable {f g h : E → ℝ} {φ : E → F}

/-! ### Convex / Concave: basic structural lemmas -/
lemma convexOn_dist_right (c : E) :
    ConvexOn ℝ (Set.univ : Set E) (fun x => dist c x) := by
  sorry

/-! ### Interaction with measure/integration -/

variable [MeasurableSpace E] [OpensMeasurableSpace E]
variable {μ : MeasureTheory.Measure E}
