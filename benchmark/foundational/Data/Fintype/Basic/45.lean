import Mathlib

lemma Finset.univ_image_val_fin {n : ℕ} :
    (Finset.univ : Finset (Fin n)).image (fun i : Fin n => (i : ℕ)) =
      Finset.range n := by
  sorry
