import Mathlib

lemma concaveOn_of_derivWithin_anti {f : ℝ → ℝ} {a b : ℝ}
    (hf : ContinuousOn f (Set.Icc a b))
    (hf' : ∀ x ∈ Set.Ioo a b,
      HasDerivWithinAt f (derivWithin f (Set.Icc a b) x) (Set.Icc a b) x)
    (hmono : AntitoneOn (fun x ↦ derivWithin f (Set.Icc a b) x) (Set.Ioo a b)) :
    ConcaveOn ℝ (Set.Icc a b) f := by
  sorry
