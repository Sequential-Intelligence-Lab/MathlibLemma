import Mathlib

lemma Finset.univ_image_val_fin {n : ℕ} :
    (Finset.univ : Finset (Fin n)).image (fun i : Fin n => (i : ℕ)) =
      Finset.range n := by
  ext k
  constructor
  · intro hk
    obtain ⟨i, hi, rfl⟩ := Finset.mem_image.mp hk
    -- Now goal: (i : ℕ) ∈ Finset.range n
    -- i.isLt : (i : ℕ) < n
    simpa [Finset.mem_range] using i.isLt
  · intro hk
    -- From membership in range, get k < n
    have hklt : k < n := by
      simpa [Finset.mem_range] using hk
    -- Now show k is in the image of the coercion from Fin n
    refine Finset.mem_image.mpr ?_
    refine ⟨⟨k, hklt⟩, ?_, ?_⟩
    · simp
    · rfl