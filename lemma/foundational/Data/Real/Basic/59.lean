import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.cauchy_nonpos_iff (x : ℝ) :
    x ≤ 0 ↔ x ≤ 0 := by
  -- Construct the bi-implication by proving both directions separately.
  constructor <;> intro h <;> assumption
  -- The `constructor` tactic splits the bi-implication into two separate implications.
  -- The `intro h` tactic introduces the hypothesis `h` for each direction.
  -- The `assumption` tactic concludes each direction by using the hypothesis `h`, which is identical to the conclusion.
  <;> linarith
  -- The `linarith` tactic is used to solve simple linear arithmetic problems, ensuring that the inequalities hold.
  <;> assumption
  -- The `assumption` tactic is used again to conclude each direction by using the hypothesis `h`, which is identical to the conclusion.
  <;> linarith