import Mathlib

/-
  Lemmas related to L'Hôpital-style statements and derivatives
  (extensions, variations, and interaction with other calculus notions)
-/
lemma nhdsWithin_Icc_eq_nhdsWithin_interval
    {a b x : ℝ} (hx : x ∈ Set.Icc a b) :
    nhdsWithin x (Set.Icc a b) = nhdsWithin x (Set.uIcc a b) := by
  -- From the existence of a point in `Icc a b`, we get `a ≤ b`.
  have hne : (Set.Icc a b : Set ℝ).Nonempty := ⟨x, hx⟩
  have hle : a ≤ b := Set.nonempty_Icc.1 hne
  -- For `a ≤ b`, `uIcc a b` is exactly `Icc a b`.
  have hu : Set.uIcc a b = Set.Icc a b := Set.uIcc_of_le hle
  -- Rewrite using this equality.
  simpa [hu]  -- rewrites `Set.uIcc a b` to `Set.Icc a b`

/-
  A few measure-theoretic lemmas about derivatives and ratios, for use with L'Hôpital.
-/