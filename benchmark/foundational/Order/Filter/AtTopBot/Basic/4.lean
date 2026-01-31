import Mathlib

lemma Filter.tendsto_atBot_const_iff {α β} [Preorder α] [IsDirected α (· ≥ ·)]
    {c : β} {l : Filter β} :
    Filter.Tendsto (fun _ : α => c) Filter.atBot l ↔ l ≤ pure c := by
  sorry