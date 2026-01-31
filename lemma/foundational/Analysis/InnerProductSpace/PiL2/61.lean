import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Complex.orthonormalBasisOneI_inner_apply (z : ℂ) :
    (Inner.inner (𝕜 := ℝ) (Complex.orthonormalBasisOneI (0 : Fin 2)) z) = z.re := by
  -- Simplify the inner product using the definition of `oneI` and properties of inner products.
  simp [Complex.orthonormalBasisOneI, Fin.sum_univ_succ, Complex.I_re, Complex.I_im, mul_zero, zero_add]
  -- The simplification shows that the inner product is indeed the real part of `z`.
  <;> rfl