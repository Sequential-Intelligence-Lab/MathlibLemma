import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Filter.subseq_tendsto_atTop {α β}
    [Preorder α] [IsDirected α (· ≤ ·)]
    {f : α → β} {g : ℕ → α} {l : Filter β}
    (hg : Filter.Tendsto g Filter.atTop Filter.atTop)
    (hf : Filter.Tendsto f Filter.atTop l) :
    Filter.Tendsto (fun n => f (g n)) Filter.atTop l := by
  -- Use the definition of tendsto to obtain the required properties
  refine' hf.comp hg
  -- Simplify the expression using the properties of tendsto
  <;> simp_all [Filter.Tendsto]
  -- Use the obtained properties to conclude the proof
  <;> aesop