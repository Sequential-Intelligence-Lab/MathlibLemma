import Mathlib

lemma Filter.subseq_tendsto_atBot {α β}
    [Preorder α] [IsDirected α (· ≥ ·)]
    {f : α → β} {g : ℕ → α} {l : Filter β}
    (hg : Filter.Tendsto g Filter.atTop Filter.atBot)
    (hf : Filter.Tendsto f Filter.atBot l) :
    Filter.Tendsto (fun n => f (g n)) Filter.atTop l := by
  sorry
