package sts.config;

import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;

public class UserInterceptor implements Interceptor {

	@Override
	public void intercept(Invocation inv) {
		// TODO 自动生成的方法存根
		inv.getController().render("/login.jsp");
	}

}
