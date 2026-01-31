import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma sqrt_mono_on_Ici : MonotoneOn Real.sqrt (Set.Ici (0 : ℝ)) := by
  -- We use the fact that the square root function is monotonically increasing on the interval [0, ∞).
  exact fun x hx y hy hxy => by
    -- Apply the property of the square root function being monotonically increasing.
    apply Real.sqrt_le_sqrt
    -- Use the given conditions to confirm that x and y are within the interval [0, ∞) and that x ≤ y.
    <;> simp_all [Set.mem_Ici]
    -- Use linear arithmetic to confirm the inequalities.
    <;> linarith