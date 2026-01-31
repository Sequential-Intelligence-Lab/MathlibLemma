import Mathlib

lemma Real.ofCauchy_injective :
    Function.Injective (fun x : CauSeq.Completion.Cauchy (abs : ℚ → ℚ) => (⟨x⟩ : ℝ)) := by
  sorry
