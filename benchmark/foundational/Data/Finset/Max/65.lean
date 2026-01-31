import Mathlib

theorem Finset.exists_mem_eq_max' {α} [LinearOrder α] {s : Finset α} (hs : s.Nonempty) :
    ∃ a ∈ s, a = s.max' hs := by
  sorry
