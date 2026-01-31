import Mathlib

theorem Finset.max'_eq_max'_erase_insert {α} [LinearOrder α] [DecidableEq α]
    {s : Finset α} (hs : s.Nonempty) (a : α) (ha : a ∈ s) :
    s.max' hs = (insert a (s.erase a)).max' (by
      refine ⟨a, Finset.mem_insert_self _ _⟩) := by
  classical
  have hset : insert a (s.erase a) = s := by
    simpa using Finset.insert_erase ha
  simpa [hset]