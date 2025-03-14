using Freelando.Modelo;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace Freelando.Dados.Mapeamentos
{
    class EspecialidadeTypeConfiguration : IEntityTypeConfiguration<Especialidade>
    {
        public void Configure(EntityTypeBuilder<Especialidade> entity)
        {
            entity.ToTable("TB_Especialidades");
            entity.Property(p => p.Id).HasColumnName("Id_Especialidade");
            entity.Property(p => p.Descricao).HasColumnName("DS_Especialidade");
        }
    }
}
