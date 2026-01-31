import Mathlib

lemma RCLike.conj_eq_self_iff_real (K : Type*) [RCLike K] (z : K) :
    (star z = z) ↔ ∃ r : ℝ, (r : K) = z := by
  constructor
  · -- (→) direction: star z = z ⇒ z is real
    intro hz
    -- From conjugation fixed, imaginary part is zero
    have him : RCLike.im z = 0 := by
      -- For RCLike, star z = z iff im z = 0
      -- This lemma is `RCLike.conj_eq_iff_im`
      simpa [RCLike.conj_eq_iff_im] using hz
    -- Take r = re z
    refine ⟨RCLike.re z, ?_⟩
    -- Use extensionality by real and imaginary parts
    apply RCLike.ext
    · -- real parts coincide
      simp
    · -- imaginary parts: im (ofReal (re z)) = 0, but im z = 0 by `him`
      simpa [him] using (RCLike.im_ofReal (RCLike.re z))
  · -- (←) direction: if z is a real scalar, then star z = z
    rintro ⟨r, rfl⟩
    -- conjugation fixes real scalars
    simpa using (star_ofReal r : star (r : K) = (r : K))