package sts.config;

import com.jfinal.aop.Interceptor;
import com.jfinal.aop.Invocation;

public class UserInterceptor implements Interceptor {

	@Override
	public void intercept(Invocation inv) {
		// TODO �Զ����ɵķ������
		inv.getController().render("/login.jsp");
	}

}
