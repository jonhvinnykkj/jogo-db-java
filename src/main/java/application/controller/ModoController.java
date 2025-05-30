package application.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import application.model.Modo;
import application.repository.ModoRepository;

@Controller
@RequestMapping("/modos")
public class ModoController {
    @Autowired
    private ModoRepository modoRepo;

    @RequestMapping("/insert")
    public String insert() {
        return "/modos/insert";
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insert(@RequestParam("nome") String nome) {
        Modo modo = new Modo();
        modo.setModo(nome);

        modoRepo.save(modo);

        return "redirect:/modos/list";
    }

    @RequestMapping("/list")
    public String list(Model ui) {
        ui.addAttribute("modos", modoRepo.findAll());

        return "/modos/list";
    }

    @RequestMapping("/update")
    public String updateForm(@RequestParam("id") Long id, Model model) {
        Modo modo = modoRepo.findById(id).orElse(null);
        model.addAttribute("modo", modo);
        return "/modos/update";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(@RequestParam("id") Long id, @RequestParam("nome") String nome) {
        Modo modo = modoRepo.findById(id).orElse(null);
        if (modo != null) {
            modo.setModo(nome);
            modoRepo.save(modo);
        }
        return "redirect:/modos/list";
    }

    @RequestMapping("/delete")
    public String deleteForm(@RequestParam("id") Long id, Model model) {
        Modo modo = modoRepo.findById(id).orElse(null);
        model.addAttribute("modo", modo);
        return "/modos/delete";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String delete(@RequestParam("id") Long id) {
        modoRepo.deleteById(id);
        return "redirect:/modos/list";
    }

}
