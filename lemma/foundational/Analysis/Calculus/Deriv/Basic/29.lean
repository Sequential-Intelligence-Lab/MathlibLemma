import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma HasDerivAt.div'
    {𝕜 : Type*} [NontriviallyNormedField 𝕜]
    {x : 𝕜}
    {f g : 𝕜 → 𝕜} {f' g' : 𝕜}
    (hf : HasDerivAt f f' x)
    (hg : HasDerivAt g g' x)
    (hx : g x ≠ 0) :
    HasDerivAt (fun y => f y / g y)
      ((f' * g x - f x * g') / (g x)^2) x := by
  -- Use the quotient rule for derivatives
  have h1 : HasDerivAt (fun y => f y / g y) ((f' * g x - f x * g') / (g x)^2) x := by
    apply HasDerivAt.div
    exact hf
    exact hg
    exact hx
  -- Simplify the expression to match the desired form
  simp_all [div_eq_mul_inv, mul_comm]
  -- Apply the quotient rule for derivatives
  <;> apply HasDerivAt.div
  <;> assumption
  <;> simp_all [div_eq_mul_inv, mul_comm]
  <;> apply HasDerivAt.div
  <;> assumption
  <;> simp_all [div_eq_mul_inv, mul_comm]
  <;> apply HasDerivAt.div
  <;> assumption
  <;> simp_all [div_eq_mul_inv, mul_comm]
  <;> apply HasDerivAt.div
  <;> assumption