import Mathlib

open Sum

lemma disjSum_finsetRange_right {α} [DecidableEq α]
    (s : Finset α) (n : ℕ) :
    s.disjSum (Finset.range n)
      = (s.image Sum.inl)
        ∪ ((Finset.range n).image Sum.inr) := by
  -- proof omitted
  sorry