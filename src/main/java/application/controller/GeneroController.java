package application.controller;

import application.model.Genero;
import application.repository.GeneroRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/generos")
public class GeneroController {

    private final GeneroRepository generoRepo;

    public GeneroController(GeneroRepository generoRepo) {
        this.generoRepo = generoRepo;
    }

    /* ---------- LISTAR ---------- */
    @GetMapping("/list")
    public String list(Model ui) {
        ui.addAttribute("generos", generoRepo.findAll());
        return "/generos/list";
    }

    /* ---------- FORM INSERT ---------- */
    @GetMapping("/insert")
    public String insertForm(Model ui) {
        ui.addAttribute("genero", new Genero());
        return "/generos/insert";
    }

    /* ---------- INSERT / UPDATE ---------- */
    @PostMapping("/save")
    public String save(@ModelAttribute Genero genero) {
        generoRepo.save(genero);                // update se id != null
        return "redirect:/generos/list";
    }

    /* ---------- FORM EDIT ---------- */
    @GetMapping("/{id}/edit")
    public String edit(@PathVariable Long id, Model ui) {
        Genero genero = generoRepo.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("ID inválido: " + id));
        ui.addAttribute("genero", genero);
        return "/generos/insert";              // reaproveita o mesmo JSP
    }

    /* ---------- DELETE ---------- */
    @GetMapping("/{id}/delete")
    public String delete(@PathVariable Long id) {
        generoRepo.deleteById(id);
        return "redirect:/generos/list";
    }
}
