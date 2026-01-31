import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma diag_smul_eq [SMul R α] (r : R) (A : Matrix n n α) (i : n) :
    Matrix.diag (r • A) i = r • A i i := by
  -- Use the symmetry of equality to show that the left-hand side equals the right-hand side.
  apply Eq.symm
  -- Simplify the expression using the definition of `diag` and `smul`.
  simp [Matrix.diag, SMul.smul]
  -- Use the reflexivity of equality to confirm the simplified expression is correct.
  <;> rfl