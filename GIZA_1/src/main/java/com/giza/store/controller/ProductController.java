package com.giza.store.controller;

import com.giza.store.dao.CategoryDAO;
import com.giza.store.dao.ProductDAO;
import com.giza.store.enitity.Category;
import com.giza.store.enitity.Product;
import com.giza.store.form.EditProductForm;
import com.giza.store.form.CreateProductForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Controller
public class ProductController {


    @Autowired
    private ProductDAO productDAO;

    @Autowired
    private CategoryDAO categoryDAO;

    @RequestMapping(value = "/product", method = RequestMethod.GET)
    public ModelAndView createRecipePage() {
        ModelAndView result = new ModelAndView("product/productUpdate");
        result.addObject("form", new CreateProductForm());
        // result.addObject("difficulty", Difficulty.values());
        return result;
    }

    @RequestMapping(value = "/product", method = RequestMethod.POST)
    public ModelAndView createRecipeSumit(@Valid CreateProductForm form, BindingResult bindingResult) throws Exception {
        ModelAndView result = new ModelAndView("product/productUpdate");

        // form validation
        result.addObject("form", form);

        System.out.println(form);

        if (bindingResult.hasErrors()) {

            List<String> errors = new ArrayList<String>();

            for (FieldError error : bindingResult.getFieldErrors()) {
                System.out.println(error.getField() + " = " + error.getDefaultMessage());
                errors.add(error.getDefaultMessage());
            }

            result.addObject("errorFields", bindingResult.getFieldErrors());
            result.addObject("errors", errors);

            return result;
        }

        Product product = new Product();
        Category category = new Category();

        product.setProductName(form.getProductName());
        product.setPrice(form.getPrice());
        product.setQuantity(form.getQuantity());

        category.setCategory_name(form.getCategory());
        Set<Category> categories = new HashSet<Category>();
        categories.add(category);
        product.setCategories(categories);
        productDAO.save(product);
        categoryDAO.save(category);

        return result;
    }

    @RequestMapping(value = "/productEdit", method = RequestMethod.GET)
    public ModelAndView courseEditPage() {
        ModelAndView result = new ModelAndView("product/productEdit");
        result.addObject("form", new EditProductForm());
        //	result.addObject("difficulty", Difficulty.values());
        return result;
    }


    @RequestMapping(value = "/productEdit", method = RequestMethod.POST)
    public ModelAndView courseEditSumit(@Valid EditProductForm form, BindingResult bindingResult) throws Exception {
        ModelAndView result = new ModelAndView("product/productEdit");

        // form validation
        result.addObject("form", form);

        System.out.println(form);

        if (bindingResult.hasErrors()) {

            List<String> errors = new ArrayList<String>();

            for (FieldError error : bindingResult.getFieldErrors()) {
                System.out.println(error.getField() + " = " + error.getDefaultMessage());
                errors.add(error.getDefaultMessage());
            }

            result.addObject("errorFields", bindingResult.getFieldErrors());
            result.addObject("errors", errors);

            return result;
        }

        Product product;
        Category category = new Category();

        product = productDAO.findById(Integer.parseInt(form.getId()));

        product.setProductName(form.getProductName());
        product.setPrice(form.getPrice());
        product.setQuantity(form.getQuantity());

     //   category = categoryDAO.findById(product.getCategories().equals())

        category.setCategory_name(form.getCategory());
        Set<Category> categories = new HashSet<Category>();
        categories.add(category);
        product.setCategories(categories);
        productDAO.save(product);
        //categoryDAO.save(category);

        return result;
    }

}
