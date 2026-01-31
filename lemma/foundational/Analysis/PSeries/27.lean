import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma summable_nat_rpow_iff {p : ℝ} :
    Summable (fun n : ℕ => (n : ℝ) ^ p) ↔ p < -1 := by
  -- We need to show that the series converges if and only if p < -1.
  constructor
  -- First, assume that the series converges.
  intro h
  -- We will use the fact that the series converges to show that p < -1.
  have := h
  -- Simplify the series to a more manageable form.
  simp only [one_div, Nat.cast_one, add_comm] at this
  -- Use the fact that the series converges to show that p < -1.
  simpa [add_comm] using this
  -- Now, assume that p < -1.
  intro h
  -- We will show that the series converges under this assumption.
  have := h
  -- Simplify the series to a more manageable form.
  simp only [one_div, Nat.cast_one, add_comm] at this
  -- Use the fact that p < -1 to show that the series converges.
  simpa [add_comm] using this