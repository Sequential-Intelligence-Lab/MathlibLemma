import Mathlib

lemma Complex.mem_ball_iff {c z : ℂ} {r : ℝ} :
    z ∈ Metric.ball c r ↔ ‖z - c‖ < r :=
by
  simpa [Metric.mem_ball, dist_eq_norm]