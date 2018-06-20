package oss.handler;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.google.gson.Gson;

/*
 * 图片上传下载
 * 
 * 
 */

@Controller
@RequestMapping("/File")
public class FileHandler {
	private String flag = "error";
	
	// 提交图片
	@RequestMapping(value = "/upload.action", method = RequestMethod.POST)
	public @ResponseBody String upload(HttpServletRequest req) throws IllegalStateException, IOException {
		Gson gson= new Gson();
		Map<String,Object> map=new HashMap<>();
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(req.getSession().getServletContext());
		if (multipartResolver.isMultipart(req)) {
			MultipartHttpServletRequest mreq=(MultipartHttpServletRequest) req;
			Iterator<String> fileNamesIter = mreq.getFileNames();
			while(fileNamesIter.hasNext()) {
				MultipartFile file = mreq.getFile(fileNamesIter.next());
				if (file != null) {
					String myFileName = file.getOriginalFilename();
					System.out.println("myFileName : "+myFileName);
					if (myFileName.trim() != "") {
						String fileName = file.getOriginalFilename();
						String fileBaseName = fileName.substring(0, fileName.lastIndexOf("."));
						String fileExt = fileName.substring(fileName.lastIndexOf(".")+1).toLowerCase();
						SimpleDateFormat df = new SimpleDateFormat("yyyyMMddHHmmss");
						String newFileName = df.format(new Date());
						String fileNames = newFileName + new Random().nextInt(1000) +"." +fileExt;
						String filePath = req.getSession().getServletContext().getRealPath("/") 
								+"\\upload\\"+fileNames;
						File localFile = new File(filePath);		
						if (!localFile.exists()) {
							localFile.mkdirs();
						}
						file.transferTo(localFile);
						fileNames = req.getScheme() + "://" + req.getServerName() + ":" + req.getServerPort()
						+ req.getContextPath() + "/upload/"+fileNames;
						map.put("name", fileBaseName);
						map.put("path", fileNames);
						String json= gson.toJson(map);
						System.out.println("上传成功："+json);
						return json;
					}
				}
			}
		}
		return "error";
	}

	// 删除图片
		@RequestMapping(value = "/delete.action", method = RequestMethod.POST)
		public @ResponseBody String delete(HttpServletRequest req) throws IllegalStateException, IOException {
			String fileName = req.getSession().getServletContext().getRealPath("/")+req.getParameter("imgSrc").replace("/", "\\");
			File file = new File(fileName);
			if (file.exists()) {
				boolean res = file.delete();
				if (res) {
					flag = "success";
				}
			}
			return flag;
		}
}
