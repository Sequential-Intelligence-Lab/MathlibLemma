import Mathlib

theorem Finset.min'_eq_min'_erase_insert {α} [LinearOrder α] [DecidableEq α]
    {s : Finset α} (hs : s.Nonempty) (a : α) (ha : a ∈ s) :
    s.min' hs =
      (insert a (s.erase a)).min' (by
        -- Show `(insert a (s.erase a)).Nonempty` by rewriting from `hs`.
        have hset : insert a (s.erase a) = s := by
          simpa using Finset.insert_erase ha
        simpa [hset] using hs
      ) := by
  -- Reuse the same set equality to rewrite the RHS.
  have hset : insert a (s.erase a) = s := by
    simpa using Finset.insert_erase ha
  -- After rewriting, both sides are definitionally `s.min' hs`.
  simpa [hset]