import Mathlib

lemma bernoulliFun_Lipschitz_on_Icc (k : ℕ) (a b : ℝ) :
    ∃ K, LipschitzOnWith K (fun x : ℝ => bernoulliFun k x) (Set.Icc a b) := by
  sorry
