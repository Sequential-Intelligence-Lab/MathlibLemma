import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma MulChar.eq_on_powers_of_units {R : Type*} [CommMonoidWithZero R]
    {R' : Type*} [CommMonoidWithZero R'] {χ χ' : MulChar R R'}
    (h : ∀ u : Rˣ, χ u = χ' u) (u : Rˣ) (n : ℕ) :
    χ (u ^ n : Rˣ) = χ' (u ^ n : Rˣ) := by
  induction n with
  | zero =>
    -- Base case: n = 0
    -- u^0 = 1, and both χ and χ' map 1 to 1
    simp [h]
  | succ n ih =>
    -- Inductive step: assume the statement holds for n, prove for n+1
    -- u^(n+1) = u^n * u
    simp_all [h, pow_succ, mul_assoc, mul_comm, mul_left_comm]
    -- By the inductive hypothesis and the given condition, χ(u^n) = χ'(u^n) and χ(u) = χ'(u)
    -- Therefore, χ(u^(n+1)) = χ(u^n) * χ(u) = χ'(u^n) * χ'(u) = χ'(u^(n+1))
    <;> simp_all