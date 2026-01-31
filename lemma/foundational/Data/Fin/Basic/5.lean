import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.eq_of_le_of_not_lt {n : ℕ} {i j : Fin n} (h₁ : i ≤ j) (h₂ : ¬ i < j) : i = j := by
  -- Use the total order property of Fin n to handle the two cases: i ≤ j or j ≤ i.
  cases' le_total i j with h h <;> cases' le_total j i with h' h' <;>
    cases' le_total i j with h'' h'' <;>
    -- Use the irreflexivity of the < relation to handle contradictions.
    simp_all [Fin.lt_irrefl]
  <;>
    -- Use the omega tactic to solve the remaining arithmetic.
    omega