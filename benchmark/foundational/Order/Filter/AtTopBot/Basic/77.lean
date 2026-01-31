import Mathlib

lemma Filter.tendsto_atTop_max {α β}
    [Preorder α] [IsDirected α (· ≤ ·)]
    [LinearOrder β]
    {f g : α → β}
    (hf : Filter.Tendsto f Filter.atTop Filter.atTop)
    (hg : Filter.Tendsto g Filter.atTop Filter.atTop) :
    Filter.Tendsto (fun a => max (f a) (g a)) Filter.atTop Filter.atTop := by
  sorry
