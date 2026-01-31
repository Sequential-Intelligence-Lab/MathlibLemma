import Mathlib

theorem Finset.max'_eq_max'_erase_insert {α} [LinearOrder α] [DecidableEq α]
    {s : Finset α} (hs : s.Nonempty) (a : α) (ha : a ∈ s) :
    s.max' hs = (insert a (s.erase a)).max' (by
      have : (s.erase a).Nonempty := by
        sorry
      exact this.mono (by
        intro x hx
        exact by
          apply Finset.mem_insert.mpr
          exact Or.inr hx)) := by
  sorry