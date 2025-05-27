package application.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import application.model.Jogo;
import application.repository.JogoRepository;

@Controller
@RequestMapping("/jogos")
public class JogoController {
    @Autowired
    private JogoRepository jogoRepo;

    @RequestMapping("/insert")
    public String insert() {
        return "/jogos/insert";
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insert(@RequestParam("nome") String nome) {
        Jogo jogo = new Jogo();
        jogo.setTitulo(nome);

        jogoRepo.save(jogo);

        return "redirect:/jogos/list";
    }

    @RequestMapping("/list")
    public String list(Model ui) {
        ui.addAttribute("jogos", jogoRepo.findAll());

        return "/jogos/list";
    }
}