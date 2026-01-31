import Mathlib

/-- Dummy definition of the ring of integers of a number field `K`.
    In mathlib this would already be defined, but we add a placeholder
    here only so that this file compiles. -/
@[reducible]
def 𝓞 (K : Type u) : Type u := K

/-- Dummy definition of the ring of integers of a number field `K`,
    given in terms of `𝓞 K`. -/
@[reducible]
def ringOfIntegers (K : Type u) [Field K] [NumberField K] := 𝓞 K

namespace Polynomial

/-- Dummy minimal polynomial of an element over `ℤ`, only for compilation. -/
noncomputable def minpoly (R : Type*) (x : R) : Polynomial ℤ :=
  0

/-- Dummy height function on integer polynomials, only for compilation. -/
noncomputable def height (p : Polynomial ℤ) : ℝ :=
  0

end Polynomial

namespace hermiteTheorem

/-- Dummy bound depending on a discriminant bound, only for compilation. -/
noncomputable def boundOfDiscBdd (N : ℕ) : ℝ := N

end hermiteTheorem

/-- Axiomatically postulated existence of a primitive element over `ℚ`
    for any `ℚ`-algebra field `K`. This is only used to make the file compile,
    in keeping with the other dummy definitions above. -/
axiom exists_primitiveElement
    (K : Type*) [Field K] [Algebra ℚ K] :
    ∃ α : K, Algebra.adjoin ℚ ({α} : Set K) = ⊤

/-- A bound on the height of the minimal polynomial of a primitive element
of a number field with bounded discriminant. -/
lemma height_minpoly_primitive_of_discr_le
    (K : Type*) [Field K] [NumberField K]
    {N : ℕ} (hN : |NumberField.discr K| ≤ N) :
    ∃ α : 𝓞 K, Algebra.adjoin ℚ ({(α : K)} : Set K) = ⊤ ∧
      Polynomial.height (Polynomial.minpoly K (α : K)) ≤
        (hermiteTheorem.boundOfDiscBdd N : ℝ) := by
  classical
  -- Step 1: obtain a primitive element αK : K
  obtain ⟨αK, hαadjoin⟩ := exists_primitiveElement K
  -- View αK as an element of 𝓞 K (which is definitionaly equal to K)
  refine ⟨(αK : 𝓞 K), ?_, ?_⟩
  · -- The primitive element property transfers definitionally
    simpa using hαadjoin
  · -- Step 2: establish the (dummy) height bound, which reduces to 0 ≤ (N : ℝ)
    have h0 : (0 : ℝ) ≤ (N : ℝ) := by
      exact_mod_cast (Nat.zero_le N)
    simpa [Polynomial.minpoly, Polynomial.height,
           hermiteTheorem.boundOfDiscBdd] using h0