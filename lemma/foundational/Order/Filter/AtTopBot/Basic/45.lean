import Mathlib

lemma Filter.tendsto_atBot_of_sandwich {α β}
    [Preorder α] [IsDirected α (· ≥ ·)]
    [Preorder β] [IsDirected β (· ≥ ·)]
    {f g h : α → β}
    (hg : Filter.Tendsto g Filter.atBot Filter.atBot)
    (hh : Filter.Tendsto h Filter.atBot Filter.atBot)
    (h_between : ∀ᶠ a in Filter.atBot, g a ≤ f a ∧ f a ≤ h a) :
    Filter.Tendsto f Filter.atBot Filter.atBot := by
  -- From `hh : Tendsto h atBot atBot` get the `∀ b, ∀ᶠ a, h a ≤ b` characterization.
  have hh' : ∀ b : β, ∀ᶠ a in Filter.atBot, h a ≤ b :=
    (Filter.tendsto_atBot.1 hh)
  -- From the sandwich condition, extract that eventually `f a ≤ h a`.
  have hfh : ∀ᶠ a in Filter.atBot, f a ≤ h a :=
    h_between.mono (fun _ ha => ha.2)
  -- Show that for every bound `b`, eventually `f a ≤ b`.
  refine Filter.tendsto_atBot.2 (fun b => ?_)
  have hh_b : ∀ᶠ a in Filter.atBot, h a ≤ b := hh' b
  -- Combine `f a ≤ h a` and `h a ≤ b` to get `f a ≤ b`.
  exact (hfh.and hh_b).mono (fun _ ha => le_trans ha.1 ha.2)