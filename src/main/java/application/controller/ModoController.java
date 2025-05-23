package application.controller;

import application.model.Modo;
import application.repository.ModoRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/modos")
public class ModoController {

    private final ModoRepository modoRepo;

    public ModoController(ModoRepository modoRepo) {
        this.modoRepo = modoRepo;
    }

    @GetMapping("/list")
    public String list(Model ui) {
        ui.addAttribute("modos", modoRepo.findAll());
        return "/modos/list";
    }

    @GetMapping("/insert")
    public String insertForm(Model ui) {
        ui.addAttribute("modo", new Modo());
        return "/modos/insert";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute Modo modo) {
        modoRepo.save(modo);
        return "redirect:/modos/list";
    }

    @GetMapping("/{id}/edit")
    public String edit(@PathVariable Long id, Model ui) {
        Modo modo = modoRepo.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("ID inválido: " + id));
        ui.addAttribute("modo", modo);
        return "/modos/insert";
    }

    @GetMapping("/{id}/delete")
    public String delete(@PathVariable Long id) {
        modoRepo.deleteById(id);
        return "redirect:/modos/list";
    }
}
