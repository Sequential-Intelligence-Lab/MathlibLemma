import Mathlib

lemma Filter.tendsto_atTop_prod {α β γ}
    [Preorder α] [IsDirected α (· ≤ ·)]
    [Preorder β] [IsDirected β (· ≤ ·)]
    {f : γ → α} {g : γ → β} {l : Filter γ} :
    Filter.Tendsto (fun x => (f x, g x)) l Filter.atTop ↔
      Filter.Tendsto f l Filter.atTop ∧
      Filter.Tendsto g l Filter.atTop := by
  sorry
