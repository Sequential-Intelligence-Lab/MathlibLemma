import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Fin.range_eq_univ {n : ℕ} : (Set.range (fun k : Fin n => k) : Set (Fin n)) = Set.univ := by
  -- Use set extensionality to show that the range equals the universal set.
  apply Set.ext
  intro x
  -- Simplify the membership in the range and the universal set.
  simp [Set.mem_range, Set.mem_univ, exists_prop]
  -- For any x in Fin n, there exists a k such that x = k, hence x is in the range.
  <;> exact ⟨x, rfl⟩