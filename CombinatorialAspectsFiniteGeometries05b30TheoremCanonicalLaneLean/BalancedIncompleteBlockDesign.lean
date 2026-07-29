import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean.BlockDesign

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean

structure BalancedIncompleteBlockDesign extends BlockDesign where
  v : ℕ
  k : ℕ
  λ : ℕ
  pointCount : Finset.card (Finset.filter (λ x : pointSet => True) Finset.univ) = v
  blockSizeConstant : k = Finset.card (Finset.image (λ b : blockSet => Finset.card (Finset.filter (λ p : pointSet => incidence p b) Finset.univ)) Finset.univ) → True
  pairwiseBalance : ∀ (p q : pointSet), p ≠ q → 
    Finset.card (Finset.filter (λ b : blockSet => incidence p b ∧ incidence q b) Finset.univ) = λ

structure BIBDEvidence (D : BalancedIncompleteBlockDesign) where
  paramRelation : D.λ * (D.v - 1) = D.k * (D.k - 1)

theorem bibd_closed (D : BalancedIncompleteBlockDesign) (E : BIBDEvidence D) :
  BlockDesignClosed D := by
  exact And.intro D.constantBlockSize D.pairwiseBalance

end CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean
end HautevilleHouse