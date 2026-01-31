import Mathlib

lemma convexOn_of_derivWithin_mono {f : ℝ → ℝ} {a b : ℝ}
    (hf : ContinuousOn f (Set.Icc a b))
    (hf' : ∀ x ∈ Set.Ioo a b,
      HasDerivWithinAt f (derivWithin f (Set.Icc a b) x) (Set.Icc a b) x)
    (hmono : MonotoneOn (fun x ↦ derivWithin f (Set.Icc a b) x) (Set.Ioo a b)) :
    ConvexOn ℝ (Set.Icc a b) f := by
  sorry
