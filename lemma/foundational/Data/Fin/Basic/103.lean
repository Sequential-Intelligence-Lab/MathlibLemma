import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.cast_mono {m n : ℕ} (h : m ≤ n) :
    (Fin.castLE h : Fin m → Fin n) = fun i => ⟨i.val, Nat.lt_of_lt_of_le i.isLt h⟩ := by
  apply funext
  intro i
  -- Use the induction principle on `i : Fin m`
  induction i with
  | mk i ih =>
    -- Simplify the goal using the definition of `Fin.castLE`
    simp_all [Fin.castLE]
    -- Use `Nat.lt_of_lt_of_le` to combine `i.isLt` and `h`
    <;> simp_all [Nat.lt_of_lt_of_le]
    -- Use `aesop` to handle the remaining proof steps
    <;> aesop