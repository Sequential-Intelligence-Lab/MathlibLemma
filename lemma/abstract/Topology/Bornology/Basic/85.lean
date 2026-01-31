import Mathlib
import Aesop
set_option maxHeartbeats 0
open BigOperators Real Nat Topology Rat

lemma Bornology.isBounded_image_equiv
    [Bornology α] [Bornology β]
    (e : α ≃ β)
    {s : Set α} :
    IsBounded (e '' s) ↔ IsBounded s := by
  have h_forward : IsBounded (e '' s) → IsBounded s := by
    intro h
    have h₁ : IsBounded (e.symm '' (e '' s)) := by
      -- Since `e '' s` is bounded in `β`, and `e.symm` is a map from `β` to `α`,
      -- we need to show that `e.symm '' (e '' s)` is bounded in `α`.
      -- This is not straightforward, but we can use the fact that `e.symm ∘ e` is the identity map on `α`.
      -- However, in general, this does not directly imply that `e.symm '' (e '' s)` is bounded.
      -- The proof would require additional assumptions or properties that are not provided here.
      -- Therefore, we mark this step as `sorry`.
      sorry
    -- Since `e.symm '' (e '' s) = s`, if `e.symm '' (e '' s)` is bounded, then `s` is bounded.
    have h₂ : e.symm '' (e '' s) = s := by
      apply Set.ext
      intro x
      simp [e.symm_apply_apply]
      <;>
      aesop
    rw [h₂] at h₁
    exact h₁
  
  have h_backward : IsBounded s → IsBounded (e '' s) := by
    intro h
    -- Use the fact that the image of a bounded set under a bounded map is bounded.
    -- However, in this case, we don't have that `e` is bounded, so we cannot directly use that.
    -- Instead, we will use the fact that `e` is an equivalence and thus has a left inverse.
    -- But this approach is not straightforward, and we have to use the properties of the bornology.
    -- We will use the fact that if `s` is bounded, then `e '' s` is bounded.
    -- However, this is not directly true unless `e` is a bounded map.
    -- Therefore, we will need to use the fact that `e` is an equivalence to construct a bounded set containing `e '' s`.
    -- The following steps will be marked as `sorry` because we are not able to find a general proof.
    sorry
  
  exact ⟨h_forward, h_backward⟩