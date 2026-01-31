import Mathlib

theorem Finset.max'_filter_lt {α : Type _} [LinearOrder α] (s : Finset α) (a : α)
    (hs : (s.filter fun x ↦ x < a).Nonempty) :
    (s.filter fun x ↦ x < a).max' hs < a := by
  sorry