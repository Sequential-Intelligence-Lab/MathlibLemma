import Mathlib

/-- If `f : ℝ → ℝ` is continuous and bounded on every compact set, then it is locally bounded. -/
lemma Continuous.locally_bounded_of_bounded_on_compacts
    {f : ℝ → ℝ} (hf : Continuous f)
    (hK : ∀ K : Set ℝ, IsCompact K → ∃ M, ∀ x ∈ K, |f x| ≤ M) :
    ∀ x, ∃ r > 0, ∃ M, ∀ y, |y - x| ≤ r → |f y| ≤ M := by
  intro x
  -- Apply the bounded-on-compacts hypothesis to the compact interval [x-1, x+1]
  obtain ⟨M, hM⟩ :=
    hK (Set.Icc (x - 1) (x + 1)) isCompact_Icc
  -- Take radius r = 1
  refine ⟨1, by norm_num, M, ?_⟩
  intro y hy
  -- From |y - x| ≤ 1, deduce y ∈ [x-1, x+1]
  have h' := abs_le.mp hy
  have hleft : x - 1 ≤ y := by
    -- From -1 ≤ y - x, derive x - 1 ≤ y
    have h1 : -1 ≤ y - x := h'.1
    linarith
  have hright : y ≤ x + 1 := by
    -- From y - x ≤ 1, derive y ≤ x + 1
    have h2 : y - x ≤ 1 := h'.2
    linarith
  have hyIcc : y ∈ Set.Icc (x - 1) (x + 1) := by
    exact ⟨hleft, hright⟩
  -- Use the bound on the compact interval
  exact hM y hyIcc