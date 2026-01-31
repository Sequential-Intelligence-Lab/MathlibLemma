import Mathlib

lemma real_inner_right_invertible_of_orthogonal_family
    {E ι : Type*}
    [NormedAddCommGroup E] [InnerProductSpace ℝ E]
    [Fintype ι] [DecidableEq ι]
    (v : ι → E)
    (hv : ∀ i j, i ≠ j → inner (𝕜 := ℝ) (v i) (v j) = 0)
    (hvnz : ∀ i, v i ≠ 0) :
    Function.Injective
      (fun x : ι → ℝ =>
        ∑ i : ι, x i • v i) := by
  sorry