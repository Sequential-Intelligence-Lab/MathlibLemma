import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma complex_conj_add (z w : ℂ) :
    star (z + w) = star z + star w := by
  -- Extract the real and imaginary parts of z and w
  cases' z with zr zi
  cases' w with wr wi
  -- Simplify the expression using the definition of complex conjugation
  simp [star, Complex.ext_iff, add_assoc, add_left_comm, add_comm]
  -- The simplification directly yields the desired result
  <;> rfl