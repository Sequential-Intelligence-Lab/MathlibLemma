import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma pow_coprime_periodic {M : Type*} [Monoid M] {x : M} {m n k : ℕ}
    (hm : x ^ m = 1) (hk : Nat.Coprime m k) :
    x ^ (m * k + n) = x ^ n := by
  -- Simplify the expression using the properties of powers and coprimality.
  simp [pow_add, pow_mul, hm, hk, mul_comm]
  -- Use the given condition `hm` to simplify the expression further.
  <;> simp [hm]
  -- Use the `simp` tactic to simplify the expression using known lemmas and definitions.
  <;> simp_all
  -- Use the `simp_all` tactic to simplify all hypotheses and the target expression.
  <;> simp_all
  -- Use the `simp_all` tactic again to ensure all simplifications are applied.
  <;> simp_all