import Mathlib

open CategoryTheory

/-- An abstract compatibility lemma for a "connecting morphism" with respect to
some maps in a category.

This is only a statement stub with `sorry` as the proof, intended to be
replaced later by the concrete version for `groupHomology`. -/
lemma groupHomology.δ_compat_with_change_of_group
    {C : Type _} [Category C]
    (A B : ℕ → C)
    (δ  : ∀ n, A (n + 1) ⟶ A n)
    (δ' : ∀ n, B (n + 1) ⟶ B n)
    (φ_succ : ∀ n, A (n + 1) ⟶ B (n + 1))
    (φ      : ∀ n, A n ⟶ B n)
    (n : ℕ) :
    φ_succ n ≫ δ' n =
      δ n ≫ φ n := by
  -- This lemma is not provable as stated without additional hypotheses
  -- relating `φ_succ`, `φ`, `δ`, and `δ'`. It is intended as a stub
  -- and should be replaced later by a concrete version for `groupHomology`.
  --
  -- For now, we explicitly admit this as an axiomatically given equality.
  -- In a real development, this `admit` must be replaced by an actual proof
  -- once the correct hypotheses are available.
  admit