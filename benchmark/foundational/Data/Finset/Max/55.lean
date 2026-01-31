import Mathlib

theorem Finset.min'_mem_filter_le {α} [LinearOrder α] {s : Finset α}
    (hs : s.Nonempty) :
    s.min' hs ∈ s.filter (fun x ↦ x ≤ s.max' hs) := by
  sorry
