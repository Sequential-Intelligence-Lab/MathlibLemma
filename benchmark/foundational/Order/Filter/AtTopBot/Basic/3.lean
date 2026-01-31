import Mathlib

lemma Filter.tendsto_atTop_const_iff {α β} [Preorder α] [IsDirected α (· ≤ ·)]
    {c : β} {l : Filter β} :
    Filter.Tendsto (fun _ : α => c) Filter.atTop l ↔ l ≤ pure c := by
  sorry