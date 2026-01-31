import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat


lemma range_sqrt :
    Set.range Real.sqrt = Set.Ici (0 : ℝ) := by
  ext y
  simp only [Set.mem_range, Set.mem_setOf_eq, Set.mem_Ici]
  constructor
  · -- First direction: if y in range sqrt, then y ≥ 0
    rintro ⟨x, hx⟩
    have h1 : Real.sqrt x ≥ 0 := Real.sqrt_nonneg x
    linarith [hx, h1]
  · -- Second direction: if y ≥ 0, then y in range sqrt
    intro hy
    use y ^ 2
    rw [Real.sqrt_sq (show 0 ≤ y by linarith)]