package sts.config;

import sts.controller.IndexController;
import com.jfinal.config.Constants;
import com.jfinal.config.Handlers;
import com.jfinal.config.Interceptors;
import com.jfinal.config.JFinalConfig;
import com.jfinal.config.Plugins;
import com.jfinal.config.Routes;
import com.jfinal.kit.PropKit;
import com.jfinal.render.ViewType;

public class CommonConfig extends JFinalConfig{

	//常规配置
	@Override
	public void configConstant(Constants me) {
		// TODO 自动生成的方法存根
		PropKit.use("config.properties");
		me.setEncoding("UTF-8");
		me.setViewType(ViewType.JSP); 
	}

	//路由配置
	@Override
	public void configRoute(Routes me) {
		// TODO 自动生成的方法存根
		me.add("/",IndexController.class);
	}

	//数据库插件配置
	@Override
	public void configPlugin(Plugins me) {
		// TODO 自动生成的方法存根
		
	}

	//拦截器配置
	@Override
	public void configInterceptor(Interceptors me) {
		// TODO 自动生成的方法存根
		me.addGlobalActionInterceptor(new UserInterceptor());
	}

	
	@Override
	public void configHandler(Handlers me) {
		// TODO 自动生成的方法存根
		
	}
	
	@Override
	public void afterJFinalStart(){
		System.out.println("JFinal start...");
	}
	
	@Override
	public void beforeJFinalStop(){
		System.out.println("JFinal end...");
	}

}
