import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean.BlockDesign

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean

structure SteinerSystem extends BlockDesign where
  t : ℕ
  k : ℕ
  v : ℕ
  tSubsetUniqueBlock : ∀ (T : Finset pointSet), Finset.card T = t → ∃! (b : blockSet), ∀ (p : pointSet), p ∈ T → incidence p b
  pointCount : Finset.card (Finset.filter (λ x : pointSet => True) Finset.univ) = v
  blockSizeConstant : ∀ (b : blockSet), Finset.card (Finset.filter (λ p : pointSet => incidence p b) Finset.univ) = k

structure SteinerSystemEvidence (S : SteinerSystem) where
  parameterRelation : (Finset.card (Finset.univ : Finset S.blockSet) : ℕ) * (S.k : ℕ).choose S.t = (S.v : ℕ).choose S.t

theorem steiner_system_closed (S : SteinerSystem) (E : SteinerSystemEvidence S) :
  BlockDesignClosed S := by
  exact And.intro (by
    have h : ∀ b : S.blockSet, Finset.card (Finset.filter (λ p : S.pointSet => S.incidence p b) Finset.univ) = S.k := S.blockSizeConstant
    exact True.intro) S.pairwiseBalance

end CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean
end HautevilleHouse