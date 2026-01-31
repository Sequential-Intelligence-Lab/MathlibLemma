import Mathlib

lemma Filter.tendsto_atTop_max {α β}
    [Preorder α] [IsDirected α (· ≤ ·)]
    [LinearOrder β]
    {f g : α → β}
    (hf : Filter.Tendsto f Filter.atTop Filter.atTop)
    (hg : Filter.Tendsto g Filter.atTop Filter.atTop) :
    Filter.Tendsto (fun a => max (f a) (g a)) Filter.atTop Filter.atTop := by
  -- We will use the characterization of `tendsto atTop atTop` via eventual lower bounds.
  refine Filter.tendsto_atTop.2 ?_
  intro b
  -- From `hf`, get that `f` is eventually above any given bound `b`.
  have hf' : ∀ b, ∀ᶠ a in Filter.atTop, b ≤ f a :=
    Filter.tendsto_atTop.1 hf
  have hfb : ∀ᶠ a in Filter.atTop, b ≤ f a := hf' b
  -- From `b ≤ f a`, we get `b ≤ max (f a) (g a)` using the left inequality for `max`.
  -- So `b ≤ max (f a) (g a)` holds eventually.
  filter_upwards [hfb] with a hfa
  exact le_trans hfa (le_max_left _ _)