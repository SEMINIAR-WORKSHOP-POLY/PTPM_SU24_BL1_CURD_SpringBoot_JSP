package com.poly.sof3021.controller;

import com.poly.sof3021.entity.Hang;
import com.poly.sof3021.entity.MayTinh;
import com.poly.sof3021.repository.HangRepository;
import com.poly.sof3021.repository.MayTinhRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/may-tinh/")
public class MayTinhController {

    @Autowired
    private MayTinhRepository mayTinhRepository;

    @Autowired
    private HangRepository hangRepository;

    @GetMapping("hien-thi")
    public String getAll(@RequestParam(defaultValue = "0", name = "page") Integer number, Model model) {
        // Page => Trang => Noi dung cua 1 trang
        // 6 phan tu list
        // 1 : size ( 1 trang muon size = bn) : 4 => 4 phan tu 1/trang
        // => Page 1: 4 phan tu dau tien => Page = 0
        // => Page 2: 2 phan tu con lai => Page = 1
        // 2:  soPage => Trang so may : pageNo
        Pageable pageable = PageRequest.of(number, 2);
        Page<MayTinh> listMayTinh = mayTinhRepository.findAll(pageable);
        model.addAttribute("listMayTinh", listMayTinh);
        return "index";
    }

    @GetMapping("detail/{id}")
    public String detail(@PathVariable("id") String id, Model model) {
        MayTinh mayTinh = mayTinhRepository.findById(Long.valueOf(id)).orElse(null);
        Pageable pageable = PageRequest.of(0, 5);
        Page<MayTinh> listMayTinh = mayTinhRepository.findAll(pageable);
        model.addAttribute("mayTinh", mayTinh);
        model.addAttribute("listMayTinh", listMayTinh);
        return "detail";
    }

    @GetMapping("view-update/{id}")
    public String viewUpdate(@PathVariable("id") String id, Model model) {
        MayTinh mayTinh = mayTinhRepository.findById(Long.valueOf(id)).orElse(null);
        List<Hang> hangs = hangRepository.findAll();
        model.addAttribute("mayTinh", mayTinh);
        model.addAttribute("hangs", hangs);
        return "update";
    }

    @GetMapping("view-add")
    public String viewAdd(Model model) {
        List<Hang> hangs = hangRepository.findAll();
        model.addAttribute("hangs", hangs);
        return "add";
    }

    @PostMapping("add")
    public String addMayTinh(@RequestParam("ma") String ma, @RequestParam("ten") String ten,
                             @RequestParam("gia") String gia, @RequestParam("boNho") String boNho,
                             @RequestParam("mauSac") String mauSac, @RequestParam("hang") String hangID,
                             @RequestParam("moTa") String moTa) {
        Hang hang = hangRepository.findById(Long.valueOf(hangID)).orElse(null);
        MayTinh mayTinh = MayTinh.builder()
                .ma(ma)
                .boNho(boNho)
                .ten(ten)
                .gia(Float.valueOf(gia))
                .hang(hang)
                .mauSac(mauSac)
                .mieuTa(moTa)
                .build();
        mayTinhRepository.save(mayTinh);
        return "redirect:/may-tinh/hien-thi";
    }

    @PostMapping("update")
    public String updateMayTinh(@RequestParam("id") String id, @RequestParam("ma") String ma, @RequestParam("ten") String ten,
                                @RequestParam("gia") String gia, @RequestParam("boNho") String boNho,
                                @RequestParam("mauSac") String mauSac, @RequestParam("hang") String hangID,
                                @RequestParam("moTa") String moTa) {
        Hang hang = hangRepository.findById(Long.valueOf(hangID)).orElse(null);
        MayTinh mayTinh = MayTinh.builder()
                .ma(ma)
                .boNho(boNho)
                .ten(ten)
                .gia(Float.valueOf(gia))
                .hang(hang)
                .mauSac(mauSac)
                .mieuTa(moTa)
                .build();
        MayTinh findMayTinh = mayTinhRepository.findById(Long.valueOf(id)).orElse(null);
        mayTinh.setId(findMayTinh.getId());
        BeanUtils.copyProperties(mayTinh, findMayTinh);
        mayTinhRepository.save(findMayTinh);
        return "redirect:/may-tinh/hien-thi";
    }

    @GetMapping("delete/{id}")
    public String delete(@PathVariable("id") String id) {
        mayTinhRepository.deleteById(Long.valueOf(id));
        return "redirect:/may-tinh/hien-thi";
    }

}
