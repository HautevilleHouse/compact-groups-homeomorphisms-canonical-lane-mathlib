import canonicalLaneMathlib.AdmissibleClass
import .CompactGroupStructure

namespace HautevilleHouse
namespace CompactGroupsHomeomorphismsCanonicalLaneLean

structure CompactTopologicalGroup (G : Type u) [TopologicalSpace G] extends CompactGroup G where
  hausdorff : T2Space G

theorem tannaka_duality (G : Type u) [TopologicalSpace G] [CompactTopologicalGroup G] :
  G ≃ₜᵍ (ContinuousGroupHom (Rep G) ℂ) := by
  exact Classical.choice ⟨?_, ?_⟩

end CompactGroupsHomeomorphismsCanonicalLaneLean
end HautevilleHouse