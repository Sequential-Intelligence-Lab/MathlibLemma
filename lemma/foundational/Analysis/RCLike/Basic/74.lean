import Mathlib

lemma RCLike.isSelfAdjoint_re (K : Type*) [RCLike K] (z : K) :
    IsSelfAdjoint (RCLike.re z : K) := by
  -- Unfold the definition of self-adjointness: star x = x
  unfold IsSelfAdjoint
  -- Make the coercion from ℝ to K explicit as RCLike.ofReal
  change star (RCLike.ofReal (RCLike.re z)) = RCLike.ofReal (RCLike.re z)
  -- Use the fact that real scalars embedded into K are fixed by star
  simpa using RCLike.star_ofReal (RCLike.re z)