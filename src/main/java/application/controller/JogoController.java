package application.controller;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import application.model.Genero;
import application.model.Jogo;
import application.model.Plataforma;
import application.repository.GeneroRepository;
import application.repository.JogoRepository;
import application.repository.ModoRepository;
import application.repository.PlataformaRepository;

@Controller
@RequestMapping("/jogos")
public class JogoController {
    @Autowired
    private JogoRepository jogoRepo;

    @Autowired
    private GeneroRepository generoRepo;

    @Autowired
    private PlataformaRepository plataformaRepo;

    @Autowired
    private ModoRepository modoRepo;

    @RequestMapping("/insert")
    public String insert(Model model) {
        model.addAttribute("generos", generoRepo.findAll());
        model.addAttribute("plataformas", plataformaRepo.findAll());
        model.addAttribute("modos", modoRepo.findAll());
        return "/jogos/insert";
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    public String insert(
            @RequestParam("titulo") String titulo,
            @RequestParam("modoId") Long modoId,
            @RequestParam(value = "generoIds", required = false) List<Long> generoIds,
            @RequestParam(value = "plataformaIds", required = false) List<Long> plataformaIds) {

        Jogo jogo = new Jogo();
        jogo.setTitulo(titulo);

        modoRepo.findById(modoId).ifPresent(jogo::setModo);

        if (generoIds != null) {
            Set<Genero> generos = new HashSet<>(generoRepo.findAllById(generoIds));
            jogo.setGeneros(generos);
        }

        if (plataformaIds != null) {
            Set<Plataforma> plataformas = new HashSet<>(plataformaRepo.findAllById(plataformaIds));
            jogo.setPlataformas(plataformas);
        }

        jogoRepo.save(jogo);
        return "redirect:/jogos/list";
    }

    @RequestMapping("/list")
    public String list(Model ui) {
        ui.addAttribute("jogos", jogoRepo.findAll());

        return "/jogos/list";
    }

    @RequestMapping("/update")
    public String updateForm(@RequestParam("id") Long id, Model model) {
        Jogo jogo = jogoRepo.findById(id).orElse(null);
        model.addAttribute("jogo", jogo);
        return "/jogos/update";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(@RequestParam("id") Long id, @RequestParam("nome") String nome) {
        Jogo jogo = jogoRepo.findById(id).orElse(null);
        if (jogo != null) {
            jogo.setTitulo(nome);
            jogoRepo.save(jogo);
        }
        return "redirect:/jogos/list";
    }

    @RequestMapping("/delete")
    public String deleteForm(@RequestParam("id") Long id, Model model) {
        Jogo jogo = jogoRepo.findById(id).orElse(null);
        model.addAttribute("jogo", jogo);
        return "/jogos/delete";
    }

    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String delete(@RequestParam("id") Long id) {
        jogoRepo.deleteById(id);
        return "redirect:/jogos/list";
    }

}