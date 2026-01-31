import Mathlib

lemma Fin.image_val_univ {n : ℕ} :
    (Set.image (fun i : Fin n => (i.val : ℕ)) Set.univ) = {k | k < n} := by
  sorry
