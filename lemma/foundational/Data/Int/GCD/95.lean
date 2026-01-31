import Mathlib

lemma Int.gcd_eq_gcd_mul_right {a b c : ℤ} (hc : c ∣ a) (hc' : c ∣ b) :
    Int.gcd a b = |c| * Int.gcd (a / c) (b / c) := by
  classical
  by_cases hc0 : c = 0
  · -- Case c = 0
    subst hc0
    -- From 0 ∣ a we get a = 0
    rcases hc with ⟨ka, hka⟩
    have ha : a = 0 := by
      simpa using hka
    -- From 0 ∣ b we get b = 0
    rcases hc' with ⟨kb, hkb⟩
    have hb : b = 0 := by
      simpa using hkb
    subst ha
    subst hb
    simp
  · -- Case c ≠ 0
    have hc0' : c ≠ 0 := hc0
    -- Express a and b as multiples of c
    rcases hc with ⟨k₁, hk₁⟩
    rcases hc' with ⟨k₂, hk₂⟩
    subst hk₁
    subst hk₂
    -- Now simplify using standard gcd and division lemmas
    simp [Int.gcd_mul_left, Int.mul_ediv_cancel, hc0']