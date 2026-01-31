import Mathlib

lemma Filter.tendsto_atBot_min {α β}
    [Preorder α] [IsDirected α (· ≥ ·)]
    [LinearOrder β]
    {f g : α → β}
    (hf : Filter.Tendsto f Filter.atBot Filter.atBot)
    (hg : Filter.Tendsto g Filter.atBot Filter.atBot) :
    Filter.Tendsto (fun a => min (f a) (g a)) Filter.atBot Filter.atBot := by
  -- We only need `hf`; `hg` is unused.
  refine Filter.tendsto_atBot.2 ?_
  intro b
  -- From `hf`, we get eventual bounds `f a ≤ b` at `atBot`.
  have hf' : ∀ b : β, ∀ᶠ a in Filter.atBot, f a ≤ b :=
    Filter.tendsto_atBot.1 hf
  have hfb : ∀ᶠ a in Filter.atBot, f a ≤ b := hf' b
  -- Strengthen this to a bound on `min (f a) (g a)`.
  refine hfb.mono ?_
  intro a ha
  -- From `ha : f a ≤ b`, conclude `min (f a) (g a) ≤ b`.
  exact (min_le_iff.2 (Or.inl ha))