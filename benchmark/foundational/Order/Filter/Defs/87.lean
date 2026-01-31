import Mathlib

lemma Filter.sprod_pure_pure {α β} (a : α) (b : β) :
    (pure a : Filter α) ×ˢ (pure b : Filter β) =
      pure (a, b) := by
  sorry
