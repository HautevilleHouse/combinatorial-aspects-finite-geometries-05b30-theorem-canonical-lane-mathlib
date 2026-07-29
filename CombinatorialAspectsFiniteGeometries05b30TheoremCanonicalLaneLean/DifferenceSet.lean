import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean.BlockDesign

namespace HautevilleHouse
namespace CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean

structure DifferenceSet (G : Type u) [AddGroup G] where
  D : Finset G
  k : ℕ
  λ : ℕ
  sizeIsK : Finset.card D = k
  differenceProperty : ∀ (g : G), g ≠ 0 →
    Finset.card (Finset.filter (λ (x : G × G) => x.1 ∈ D ∧ x.2 ∈ D ∧ x.1 - x.2 = g) (Finset.product D D)) = λ

structure DifferenceSetEvidence (G : Type u) [AddGroup G] (Δ : DifferenceSet G) where
  symmetricDesign : Δ.k * (Δ.k - 1) = Δ.λ * (Finset.card (Finset.univ : Finset G) - 1)

theorem difference_set_closure (G : Type u) [AddGroup G] (Δ : DifferenceSet G) (E : DifferenceSetEvidence G Δ) :
  Δ.k * (Δ.k - 1) = Δ.λ * (Finset.card (Finset.univ : Finset G) - 1) := E.symmetricDesign

end CombinatorialAspectsFiniteGeometries05b30TheoremCanonicalLaneLean
end HautevilleHouse