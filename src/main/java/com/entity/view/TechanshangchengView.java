package com.entity.view;

import com.entity.TechanshangchengEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 特产商城
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-01-14 11:33:32
 */
@TableName("techanshangcheng")
public class TechanshangchengView  extends TechanshangchengEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public TechanshangchengView(){
	}
 
 	public TechanshangchengView(TechanshangchengEntity techanshangchengEntity){
 	try {
			BeanUtils.copyProperties(this, techanshangchengEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
