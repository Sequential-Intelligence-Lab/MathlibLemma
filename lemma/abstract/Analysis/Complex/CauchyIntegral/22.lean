import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Complex.closedBall_subset_Annulus {c : ℂ} {r R : ℝ}
    (hr : 0 ≤ r) (hR : r ≤ R) :
    Metric.closedBall c r ⊆ {z : ℂ | ‖z - c‖ ≤ R} := by
  -- Introduce an arbitrary element z in the closed ball centered at c with radius r.
  intro z hz
  -- By the definition of the closed ball, we have ‖z - c‖ ≤ r.
  have hz' : ‖z - c‖ ≤ r := hz
  -- Since r ≤ R, we can use the transitivity of inequalities to show ‖z - c‖ ≤ R.
  have hz'' : ‖z - c‖ ≤ R := by linarith [hz']
  -- Therefore, z is in the set {z : ℂ | ‖z - c‖ ≤ R}.
  exact hz''