import Mathlib

lemma Real.summable_pow_div_add_real {x : ℝ} (q k : ℕ) (hq : 1 < q) :
    Summable fun n : ℕ => |x / (n + k : ℝ) ^ q| := by
  -- Step 1: p-series ∑ 1 / n^q is summable for q > 1
  have hs_base :
      Summable (fun n : ℕ => 1 / (n : ℝ) ^ q) :=
    (Real.summable_one_div_nat_pow.mpr hq)

  -- Step 2: multiply by the constant |x|
  have hs1 :
      Summable (fun n : ℕ => |x| * (1 / (n : ℝ) ^ q)) :=
    hs_base.mul_left _
  have hs2 :
      Summable (fun n : ℕ => |x| / (n : ℝ) ^ q) := by
    simpa [div_eq_mul_inv, mul_comm, mul_left_comm, mul_assoc] using hs1

  -- Step 3: identify |x| / n^q with |x / n^q|
  have h_eq : ∀ n : ℕ, |x| / (n : ℝ) ^ q = |x / (n : ℝ) ^ q| := by
    intro n
    have hnonneg : 0 ≤ (n : ℝ) ^ q := by
      have : (0 : ℝ) ≤ (n : ℝ) := by
        exact_mod_cast (Nat.zero_le n)
      exact pow_nonneg this _
    calc
      |x| / (n : ℝ) ^ q = |x| / |(n : ℝ) ^ q| := by
        have := abs_of_nonneg hnonneg
        simpa [this]
      _ = |x / (n : ℝ) ^ q| := by
        have := abs_div x ((n : ℝ) ^ q)
        simpa using this.symm

  have hs3 :
      Summable (fun n : ℕ => |x / (n : ℝ) ^ q|) := by
    refine hs2.congr ?_
    intro n
    exact h_eq n

  -- Step 4: define base sequence g n = |x / n^q|
  let g : ℕ → ℝ := fun n => |x / (n : ℝ) ^ q|
  have hs_g : Summable g := by
    simpa [g] using hs3

  -- Step 5: shift index by k to get (n + k) in the denominator
  have hs_shift : Summable (fun n : ℕ => g (n + k)) :=
    (summable_nat_add_iff (f := g) k).2 hs_g

  -- Step 6: identify g (n + k) with the original sequence
  simpa [g, Nat.cast_add] using hs_shift