import Mathlib

lemma Filter.tendsto_atBot_min {α β}
    [Preorder α] [IsDirected α (· ≥ ·)]
    [LinearOrder β]
    {f g : α → β}
    (hf : Filter.Tendsto f Filter.atBot Filter.atBot)
    (hg : Filter.Tendsto g Filter.atBot Filter.atBot) :
    Filter.Tendsto (fun a => min (f a) (g a)) Filter.atBot Filter.atBot := by
  sorry
