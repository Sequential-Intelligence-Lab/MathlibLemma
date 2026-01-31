import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

theorem Finset.min'_subset_of_forall_ge {α} [LinearOrder α]
    {s t : Finset α} (hs : s.Nonempty) (ht : t.Nonempty)
    (hle : ∀ x ∈ s, ∀ y ∈ t, x ≤ y) :
    s.max' hs ≤ t.min' ht := by
  -- Since `s` is non-empty and finite, it has a maximum element `s.max'`.
  -- Similarly, since `t` is non-empty and finite, it has a minimum element `t.min'`.
  have h : s.max' hs ≤ t.min' ht := by
    -- By the given condition, every element in `s` is less than or equal to every element in `t`.
    -- In particular, `s.max'` (an element of `s`) is less than or equal to `t.min'` (an element of `t`).
    apply Finset.le_min' <;> simp_all
  -- Therefore, `s.max' ≤ t.min'`.
  exact h