import Mathlib

lemma Fin.image_val_univ {n : ℕ} :
    (Set.image (fun i : Fin n => (i.val : ℕ)) Set.univ) = {k | k < n} := by
  ext k; constructor
  · intro hk
    rcases hk with ⟨i, -, rfl⟩
    simpa using i.isLt
  · intro hk
    refine ⟨(⟨k, hk⟩ : Fin n), ?_, ?_⟩
    · simp
    · rfl