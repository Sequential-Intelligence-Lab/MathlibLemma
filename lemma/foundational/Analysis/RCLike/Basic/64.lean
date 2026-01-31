import Mathlib

lemma RCLike.conj_inv' (K : Type*) [RCLike K] (z : K) :
    (star z)⁻¹ = star (z⁻¹) := by
  -- First, use the general lemma that a ring hom preserves inverses
  have h : star (z⁻¹) = (star z)⁻¹ := by
    -- `starRingEnd K` is the ring endomorphism induced by `star`
    simpa using (RingHom.map_inv₀ (starRingEnd K) z)
  -- Rewrite the goal using the symmetry of `h`
  simpa using h.symm