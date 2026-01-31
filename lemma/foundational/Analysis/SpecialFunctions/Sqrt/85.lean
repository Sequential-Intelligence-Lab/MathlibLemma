import Mathlib

lemma sqrt_odd_comp_sq {f : ℝ → ℝ} (hf : Function.Odd f) :
    Function.Even (fun x => √(f x ^ 2)) := by
  intro x
  -- Show the squares are equal using oddness of f
  have hsq : f (-x) ^ 2 = f x ^ 2 := by
    have h := hf x        -- h : f (-x) = -f x
    -- Rewrite and simplify the square
    simpa [h, pow_two]    -- uses (-a) * (-a) = a * a
  -- Now rewrite under the square root
  simpa [hsq]