package com.command.action.shop;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.action.Action;
import com.command.dto.ProductVO;
import com.command.service.ProductService;
import com.command.utils.FileDownloadResolver;
import com.command.utils.GetUploadPath;

public class ShopProductGetPictureAction implements Action {
    private ProductService productService;

    public void setProductService(ProductService productService) {
        this.productService = productService;
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String url = null;

        String product_code = request.getParameter("product_code");
        ProductVO product = productService.getProductByCode(product_code);

        if (product != null) {
            String fileName = product.getProduct_picture();
            String savedPath = GetUploadPath.getUploadPath("shop.picture.upload");

            FileDownloadResolver.sendFile(fileName, savedPath, request, response);
        } else {
            // Handle the case where the product is null, e.g., display an error message or redirect to an error page.
        }

        return url;
    }
}