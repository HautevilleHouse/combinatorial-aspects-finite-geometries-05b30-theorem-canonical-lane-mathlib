import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean.BlockDesign

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean

structure FiniteProjectivePlane extends BlockDesign where
  order : ℕ
  lineThroughTwoPoints : ∀ (p q : pointSet), p ≠ q → ∃! (b : blockSet), incidence p b ∧ incidence q b
  twoLinesIntersect : ∀ (b1 b2 : blockSet), b1 ≠ b2 → ∃! (p : pointSet), incidence p b1 ∧ incidence p b2
  fourPointsNoThreeCollinear : ∃ (p1 p2 p3 p4 : pointSet), 
    p1 ≠ p2 ∧ p1 ≠ p3 ∧ p1 ≠ p4 ∧ p2 ≠ p3 ∧ p2 ≠ p4 ∧ p3 ≠ p4 ∧
    ¬ (∃ (b : blockSet), incidence p1 b ∧ incidence p2 b ∧ incidence p3 b) ∧
    ¬ (∃ (b : blockSet), incidence p1 b ∧ incidence p2 b ∧ incidence p4 b) ∧
    ¬ (∃ (b : blockSet), incidence p1 b ∧ incidence p3 b ∧ incidence p4 b) ∧
    ¬ (∃ (b : blockSet), incidence p2 b ∧ incidence p3 b ∧ incidence p4 b)

structure FiniteProjectivePlaneEvidence (π : FiniteProjectivePlane) where
  orderPositive : π.order ≥ 2
  paramDerived : (Finset.card (Finset.filter (λ x : π.pointSet => True) Finset.univ) = π.order^2 + π.order + 1)

theorem finite_projective_plane_closed (π : FiniteProjectivePlane) (E : FiniteProjectivePlaneEvidence π) :
  BlockDesignClosed π := by
  exact And.intro π.constantBlockSize π.pairwiseBalance

end CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean
end HautevilleHouse