import Mathlib

lemma sqrt_map_inf {α} {f g : α → ℝ} :
    (fun x => √(min (f x) (g x))) = fun x => min (√(f x)) (√(g x)) := by
  sorry
