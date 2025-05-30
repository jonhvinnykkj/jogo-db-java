package application.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import application.model.Plataforma;
import application.repository.PlataformaRepository;

@Controller
@RequestMapping("/plataformas")
public class PlataformaController {
    @Autowired
    private PlataformaRepository plataformaRepo;

    @RequestMapping("/insert")
    public String insert() {
        return "/plataformas/insert";
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insert(@RequestParam("nome") String nome) {
        Plataforma plataforma = new Plataforma();
        plataforma.setNome(nome);

        plataformaRepo.save(plataforma);

        return "redirect:/plataformas/list";
    }

    @RequestMapping("/list")
    public String list(Model ui) {
        ui.addAttribute("modos", plataformaRepo.findAll());

        return "/plataformas/list";
    }

    @RequestMapping("/update")
    public String updateForm(@RequestParam("id") Long id, Model model) {
        Plataforma plataforma = plataformaRepo.findById(id).orElse(null);
        model.addAttribute("plataforma", plataforma);
        return "/plataformas/update";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(@RequestParam("id") Long id, @RequestParam("nome") String nome) {
        Plataforma plataforma = plataformaRepo.findById(id).orElse(null);
        if (plataforma != null) {
            plataforma.setNome(nome);
            plataformaRepo.save(plataforma);
        }
        return "redirect:/plataformas/list";
    }

    @RequestMapping("/delete")
    public String deleteForm(@RequestParam("id") Long id, Model model) {
        Plataforma plataforma = plataformaRepo.findById(id).orElse(null);
        model.addAttribute("plataforma", plataforma);
        return "/plataformas/delete";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String delete(@RequestParam("id") Long id) {
        plataformaRepo.deleteById(id);
        return "redirect:/plataformas/list";
    }

}
