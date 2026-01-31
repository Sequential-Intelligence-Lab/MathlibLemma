import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem lp.inner_single_right_real
    [Fintype ι]
    [DecidableEq ι]
    [∀ i, NormedAddCommGroup (G i)]
    [∀ i, InnerProductSpace ℝ (G i)]
    (i : ι) (a : G i) (f : lp G 2) :
    @inner ℝ (lp G 2) _ f (lp.single 2 i a)
      = @inner ℝ (G i) _ (f i) a := by
  -- Use the definition of the inner product in the lp space
  rw [lp.inner_single_right]
  -- Simplify the expression by applying the definition of the inner product
  <;> simp [lp.inner_single_right]
  -- Use the property of the inner product in the Hilbert space
  <;> simp [InnerProductSpace.inner_conj_symm]
  -- Simplify the expression further
  <;> simp
  -- Use linear arithmetic to finalize the proof
  <;> linarith