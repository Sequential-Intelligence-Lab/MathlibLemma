import Mathlib

theorem Finset.max'_coe_nat {s : Finset ℕ} (hs : s.Nonempty) :
    (s.max' hs : WithBot ℕ) = s.max := by
  sorry
