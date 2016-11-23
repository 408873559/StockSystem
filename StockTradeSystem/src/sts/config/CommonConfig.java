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

	//��������
	@Override
	public void configConstant(Constants me) {
		// TODO �Զ����ɵķ������
		PropKit.use("config.properties");
		me.setEncoding("UTF-8");
		me.setViewType(ViewType.JSP); 
	}

	//·������
	@Override
	public void configRoute(Routes me) {
		// TODO �Զ����ɵķ������
		me.add("/",IndexController.class);
	}

	//���ݿ�������
	@Override
	public void configPlugin(Plugins me) {
		// TODO �Զ����ɵķ������
		
	}

	//����������
	@Override
	public void configInterceptor(Interceptors me) {
		// TODO �Զ����ɵķ������
		me.addGlobalActionInterceptor(new UserInterceptor());
	}

	
	@Override
	public void configHandler(Handlers me) {
		// TODO �Զ����ɵķ������
		
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
