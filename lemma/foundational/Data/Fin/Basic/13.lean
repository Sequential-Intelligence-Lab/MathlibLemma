import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.lt_of_val_lt_val {n : ℕ} {i j : Fin n} (h : i.val < j.val) : i < j := by
  have h_main : i < j := by
    -- Use the fact that the `<` operator on `Fin n` is defined as comparing the underlying values.
    exact by
      -- This is a direct consequence of the definition of the `<` operator on `Fin n`.
      -- The `<` operator is automatically derived by Lean to compare the first field of the structure.
      -- Therefore, `i < j` is equivalent to `i.val < j.val`.
      cases i <;> cases j <;> simp_all [Fin.ext_iff, Fin.val_mk]
      <;> omega
  exact h_main