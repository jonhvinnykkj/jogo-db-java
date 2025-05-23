package application.controller;

import application.model.Plataforma;
import application.repository.PlataformaRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/plataformas")
public class PlataformaController {

    private final PlataformaRepository plataformaRepo;

    public PlataformaController(PlataformaRepository plataformaRepo) {
        this.plataformaRepo = plataformaRepo;
    }

    @GetMapping("/list")
    public String list(Model ui) {
        ui.addAttribute("plataformas", plataformaRepo.findAll());   // ✔ agora usa “plataformas”
        return "/plataformas/list";
    }

    @GetMapping("/insert")
    public String insertForm(Model ui) {
        ui.addAttribute("plataforma", new Plataforma());
        return "/plataformas/insert";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute Plataforma plataforma) {
        plataformaRepo.save(plataforma);
        return "redirect:/plataformas/list";
    }

    @GetMapping("/{id}/edit")
    public String edit(@PathVariable Long id, Model ui) {
        Plataforma pl = plataformaRepo.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("ID inválido: " + id));
        ui.addAttribute("plataforma", pl);
        return "/plataformas/insert";
    }

    @GetMapping("/{id}/delete")
    public String delete(@PathVariable Long id) {
        plataformaRepo.deleteById(id);
        return "redirect:/plataformas/list";
    }
}
