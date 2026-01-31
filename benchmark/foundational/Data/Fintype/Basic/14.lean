import Mathlib

lemma Finset.univ_fin_product_univ_fin (m n : ℕ) :
    (Finset.univ : Finset (Fin m × Fin n)) =
      (Finset.univ : Finset (Fin m)).product (Finset.univ : Finset (Fin n)) := by
  sorry
