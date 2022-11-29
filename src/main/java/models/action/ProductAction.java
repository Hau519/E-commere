package models.action;

import jakarta.servlet.http.HttpServletRequest;
import models.managers.ProductManager;

public class ProductAction {
    public static final String PRODUCT_PARAM = "products";
    public static void getAll(HttpServletRequest request){request.setAttribute(PRODUCT_PARAM, ProductManager.getAll());}
}
