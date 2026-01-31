import Mathlib

lemma groupHomology_δ_eq_comp_of_cyclesQuot
    {k G : Type _} [CommRing k] [Group G]
    (δ : ℕ → ℕ → Prop)
    (n : ℕ) :
    δ (n + 1) n = δ (n + 1) n := by
  sorry