import Mathlib

lemma sqrt_image_Ici :
    Real.sqrt '' Set.Ici (0 : ℝ) = Set.Ici 0 := by
  -- Prove set equality via mutual inclusion
  ext y
  constructor
  · -- First inclusion: sqrt '' [0, ∞) ⊆ [0, ∞)
    intro hy
    rcases hy with ⟨x, hx, rfl⟩
    -- hx : x ∈ Set.Ici 0 means 0 ≤ x
    exact Real.sqrt_nonneg x
  · -- Second inclusion: [0, ∞) ⊆ sqrt '' [0, ∞)
    intro hy
    -- hy : y ∈ Set.Ici 0, i.e., 0 ≤ y
    have hy0 : 0 ≤ y := hy
    -- We exhibit x = y^2 in the domain so that sqrt x = y
    refine ⟨y^2, ?_, ?_⟩
    · -- Show x ∈ Set.Ici 0, i.e. 0 ≤ y^2
        -- sq_nonneg provides 0 ≤ y^2
      exact sq_nonneg y
    · -- Show sqrt (y^2) = y using nonneg assumption
      simpa [Real.sqrt_sq, hy0]