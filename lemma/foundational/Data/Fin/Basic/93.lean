import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.pow_val_eq_val_pow {n : ℕ} (i : Fin n) (k : ℕ) :
    (i.val ^ k) % n = i.val ^ k % n := by
  induction k with
  | zero =>
    -- Base case: When k = 0, both sides are 1 % n, which is trivially true.
    simp
  | succ k ih =>
    -- Inductive step: Assume the statement holds for k, prove for k + 1.
    simp_all [pow_succ, Nat.mul_mod, Nat.add_mod, Nat.mod_eq_of_lt]
    -- Simplify using the properties of powers, multiplication, and modulus.
    -- The inductive hypothesis is used to replace (i.val ^ k) % n with i.val ^ k % n.
    <;> omega