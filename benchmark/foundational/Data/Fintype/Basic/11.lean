import Mathlib

lemma Finset.univ_fin_image_val (n : ℕ) :
    (Finset.univ : Finset (Fin n)).image (fun i : Fin n => (i : ℕ)) = Finset.range n := by
  sorry
