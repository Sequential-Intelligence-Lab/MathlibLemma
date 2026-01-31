import Mathlib

lemma Complex.mem_ball_iff {c z : ℂ} {r : ℝ} :
    z ∈ Metric.ball c r ↔ ‖z - c‖ < r :=
by
  sorry