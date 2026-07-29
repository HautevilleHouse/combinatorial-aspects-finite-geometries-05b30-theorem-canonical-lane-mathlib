import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean.BlockDesign

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean

structure DesignParameters (D : BlockDesign) where
  v : ℕ
  b : ℕ
  r : ℕ
  k : ℕ
  λ : ℕ
  vCount : Finset.card (Finset.filter (λ x : D.pointSet => True) Finset.univ) = v
  bCount : Finset.card (Finset.filter (λ x : D.blockSet => True) Finset.univ) = b

theorem design_parameters_consistent (D : BlockDesign) (P : DesignParameters D) :
  P.r * (P.v - 1) = P.λ * (P.k - 1) := by
  sorry

end CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean
end HautevilleHouse