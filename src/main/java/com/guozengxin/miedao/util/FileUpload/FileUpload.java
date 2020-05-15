package com.guozengxin.miedao.util.FileUpload;

import com.guozengxin.miedao.util.ResultHelper.ResponseResult;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

/**
 * Author: 郭增鑫
 * Date:2020-05-15 11:56
 * Description:(描述)
 */
public class FileUpload {
    /**
     * 图片文件上传
     */
    public ResponseResult ImageUpload(MultipartFile file) {
        String realPath = "d:\\image\\";
        String path = "";
        String savePaths = "";
        if (file != null) {// 判断上传的文件是否为空
            String type = null;// 文件类型
            String fileName = file.getOriginalFilename();// 文件原名称

            // 判断文件类型
            type = fileName.indexOf(".") != -1 ? fileName.substring(fileName.lastIndexOf(".") + 1, fileName.length())
                    : null;
            if (type != null) {
                // 判断文件类型是否为空
                if ("GIF".equals(type.toUpperCase()) || "PNG".equals(type.toUpperCase())
                        || "JPG".equals(type.toUpperCase())) {
                    // 自定义的文件名称
                    String trueFileName = String.valueOf(System.currentTimeMillis()) + fileName;
                    // 设置存放图片文件的路径
                    path = realPath + trueFileName;
                    System.out.println("存放图片文件的路径:" + path);
                    // 转存文件到指定的路径
                    try {
                        file.transferTo(new File(path));
                    } catch (IllegalStateException | IOException e) {
                        // TODO Auto-generated catch block
                        e.printStackTrace();
                    }
                    savePaths = path;
                    ResponseResult.success(savePaths);
                } else {
                    System.out.println("Wrongtype");
                    ResponseResult.success(false);
                }
            } else {
                System.out.println("文件类型为空");
                ResponseResult.success(false);
            }
        }
        return ResponseResult.success();
    }
}
