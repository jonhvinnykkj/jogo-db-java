package application.controller;

import application.model.Jogo;
import application.repository.JogoRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/jogos")
public class JogoController {

    private final JogoRepository jogoRepo;

    public JogoController(JogoRepository jogoRepo) {
        this.jogoRepo = jogoRepo;
    }

    /* ---------- LISTAR ---------- */
    @GetMapping("/list")
    public String list(Model ui) {
        ui.addAttribute("jogos", jogoRepo.findAll());
        return "/jogos/list";
    }

    /* ---------- FORM INSERT ---------- */
    @GetMapping("/insert")
    public String insertForm(Model ui) {
        ui.addAttribute("jogo", new Jogo());
        return "/jogos/insert";
    }

    /* ---------- INSERT / UPDATE ---------- */
    @PostMapping("/save")
    public String save(@ModelAttribute Jogo jogo) {
        jogoRepo.save(jogo);
        return "redirect:/jogos/list";
    }

    /* ---------- FORM EDIT ---------- */
    @GetMapping("/{id}/edit")
    public String edit(@PathVariable Long id, Model ui) {
        Jogo jogo = jogoRepo.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("ID inválido: " + id));
        ui.addAttribute("jogo", jogo);
        return "/jogos/insert";
    }

    /* ---------- DELETE ---------- */
    @GetMapping("/{id}/delete")
    public String delete(@PathVariable Long id) {
        jogoRepo.deleteById(id);
        return "redirect:/jogos/list";
    }
}
