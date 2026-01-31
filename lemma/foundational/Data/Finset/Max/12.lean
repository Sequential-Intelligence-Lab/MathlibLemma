import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Finset.max'_filter_lt {α : Type _} [LinearOrder α] (s : Finset α) (a : α)
    (hs : (s.filter fun x ↦ x < a).Nonempty) :
    (s.filter fun x ↦ x < a).max' hs < a := by
  -- Extract the witness `m` from the non-emptiness of the filtered set.
  cases' hs with m hm
  -- Simplify the goal using the fact that `m` is in the filtered set.
  simp_all [Finset.mem_filter, Finset.max'_eq_iff]
  -- Use `linarith` to handle the linear arithmetic and derive the contradiction.
  <;> linarith