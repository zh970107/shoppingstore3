package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import serviceImpl.ProductinfoServiceImpl;

import java.util.List;

@RestController
public class NavigatorAndShowProductsController {

    @Autowired
    ProductinfoServiceImpl psi;

    @RequestMapping("selectAllP_type")
    public List<String> selectAllP_type(){
        return psi.selectAllP_type();
    }
}
