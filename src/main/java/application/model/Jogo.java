package application.model;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;

@Entity
public class Jogo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String titulo;

    @ManyToMany
    @JoinTable(
        name = "jogo_genero",
        joinColumns = @JoinColumn(name = "jogo_id"),
        inverseJoinColumns = @JoinColumn(name = "genero_id")
    )
    private List<Genero> generos;

    @ManyToMany
    @JoinTable(
        name = "jogo_plataforma",
        joinColumns = @JoinColumn(name = "jogo_id"),
        inverseJoinColumns = @JoinColumn(name = "plataforma_id")
    )
    private List<Plataforma> plataformas;

    @ManyToOne
    @JoinColumn(name = "modo_id")
    private Modo modo;
}
