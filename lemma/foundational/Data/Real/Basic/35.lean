import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Real.equivCauchy_symm_apply (x : CauSeq.Completion.Cauchy (abs : ℚ → ℚ)) :
    Real.equivCauchy.symm x = Real.ofCauchy x := by
  -- Simplify the expression using the properties of the equivalence relation.
  simp [Real.equivCauchy, Real.ofCauchy]
  -- Use the symmetry of the absolute value function to show the equivalence.
  <;> simp [abs]
  -- Apply the symmetry of the equivalence relation to conclude the proof.
  <;> apply Eq.symm