import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.isLeast_zero {n : ℕ} [NeZero n] : IsLeast (Set.univ : Set (Fin n)) 0 := by
  -- Use the fact that 0 is the least element in Fin n by definition of the order relation.
  refine' ⟨by simp [Fin.ext_iff], fun a => _⟩
  -- For any element `a` in Fin n, we need to show that 0 ≤ a.
  cases a with
  | mk a _ =>
    -- Since `a` is an element of Fin n, it can be written as `mk a _` where `a` is a natural number.
    -- We need to show that 0 ≤ a.
    simp [Fin.ext_iff]
    -- By the definition of the order relation in Fin n, 0 is less than or equal to any natural number `a`.
    -- This follows from the fact that `a` is a natural number and 0 is the additive identity.
    <;> omega