import Mathlib


/-
Brainstormed lemmas related to multiplicative characters, their interaction with units,
ring homs, quadratic characters, sums, orders, etc. All are intentionally left as `sorry`.
-/

variable {R S R' R'' M α β γ ι : Type*}

open scoped BigOperators

/-- A multiplicative character on a finite field is completely determined by its value on a
    multiplicative generator. -/
lemma MulChar.ext_on_finiteField_by_generator
    {K : Type*} [Field K] [Fintype K]
    {R' : Type*} [CommMonoidWithZero R']
    (g : K) (hg : g ≠ 0) (hgen : ∀ x ≠ 0, ∃ n : ℕ, x = g ^ n)
    {χ ψ : MulChar K R'}
    (h : χ g = ψ g) :
    χ = ψ := by
  ext x
  -- `x` is a unit in `K`, so its image in `K` is nonzero
  have hx_ne : (x : K) ≠ 0 := x.ne_zero
  obtain ⟨n, hn⟩ := hgen (x : K) hx_ne
  -- Rewrite using the generator representation and use multiplicativity
  -- together with the hypothesis `h : χ g = ψ g`.
  simp [hn, map_pow, h]