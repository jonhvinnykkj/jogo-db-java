package application.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import application.model.Genero;
import application.repository.GeneroRepository;

@Controller
@RequestMapping("/generos")
public class GeneroController {
    @Autowired
    private GeneroRepository generoRepo;

    @RequestMapping("/insert")
    public String insert() {
        return "/generos/insert";
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insert(@RequestParam("nome") String nome) {
        Genero genero = new Genero();
        genero.setNome(nome);

        generoRepo.save(genero);

        return "redirect:/generos/list";
    }

    @RequestMapping("/list")
    public String list(Model ui) {
        ui.addAttribute("generos", generoRepo.findAll());

        return "/generos/list";
    }

    @RequestMapping("/update")
    public String updateForm(@RequestParam("id") Long id, Model model) {
        Genero genero = generoRepo.findById(id).orElse(null);
        model.addAttribute("genero", genero);
        return "/generos/update";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(@RequestParam("id") Long id, @RequestParam("nome") String nome) {
        Genero genero = generoRepo.findById(id).orElse(null);
        if (genero != null) {
            genero.setNome(nome);
            generoRepo.save(genero);
        }
        return "redirect:/generos/list";
    }

    @RequestMapping("/delete")
    public String deleteForm(@RequestParam("id") Long id, Model model) {
        Genero genero = generoRepo.findById(id).orElse(null);
        model.addAttribute("genero", genero);
        return "/generos/delete";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String delete(@RequestParam("id") Long id) {
        generoRepo.deleteById(id);
        return "redirect:/generos/list";
    }

}