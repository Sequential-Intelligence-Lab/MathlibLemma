import Mathlib

theorem Finset.max'_mem_filter_ge {α} [LinearOrder α] {s : Finset α}
    (hs : s.Nonempty) :
    s.max' hs ∈ s.filter (fun x ↦ s.min' hs ≤ x) := by
  sorry
