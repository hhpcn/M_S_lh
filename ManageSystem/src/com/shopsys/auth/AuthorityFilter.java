package com.shopsys.auth;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;

import com.shopsys.personnel.model.User;
import com.xmut.util.BaseUtil;
import com.xmut.util.WebUtil;




/** 
 * @author Helen
 * 登录验证拦截器,拦截所有未登录的非法jsp操作 (直接在地址栏请求jsp)
 */
public class AuthorityFilter implements Filter{
	private List<String> urlList;
	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		HttpServletRequest request= (HttpServletRequest) arg0;
		HttpServletResponse response = (HttpServletResponse) arg1;
		String basePath=request.getContextPath();
		//获取请求的路径
		String requestURI=request.getRequestURI();
		String uri=requestURI.replace(basePath, "");
		if(uri!=null&&!uri.equals("/")){
			if(urlList!=null&&urlList.size()>0){
				if(!urlList.contains(uri)){
					User user=(User)request.getSession().getAttribute(WebUtil.KEY_LOGIN_USER_SESSION);
					if(user==null){
						System.out.println("调用jsp时,Session 用户信息为空");
						response.sendRedirect(basePath+"/login.jsp");
						System.out.println(basePath+"/login.jsp");
					}
				}
			}
		}
		arg2.doFilter(request, response);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		String value=arg0.getInitParameter(CConfing.CC_KEY_EXCLUDE_JSP);
		//从配置文件获取不需要拦截的路径
		if(StringUtils.isNotBlank(value)){
			String excludeJsp=BaseUtil.readFromProperties(CConfing.CC_KEY_EXCLUDE_JSP, value);
			if(excludeJsp!=null){
				//拆分
				String[] jsp_urls=excludeJsp.split(",");
				urlList=Arrays.asList(jsp_urls);
			}
		}
	}


}
