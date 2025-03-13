package com.entity.vo;

import com.entity.TechanshangchengEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 特产商城
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-01-14 11:33:32
 */
public class TechanshangchengVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 特产分类
	 */
	
	private String techanfenlei;
		
	/**
	 * 图片
	 */
	
	private String tupian;
		
	/**
	 * 规格
	 */
	
	private String guige;
		
	/**
	 * 产地
	 */
	
	private String chandi;
		
	/**
	 * 特产详情
	 */
	
	private String techanxiangqing;
		
	/**
	 * 价格
	 */
	
	private Float price;
				
	
	/**
	 * 设置：特产分类
	 */
	 
	public void setTechanfenlei(String techanfenlei) {
		this.techanfenlei = techanfenlei;
	}
	
	/**
	 * 获取：特产分类
	 */
	public String getTechanfenlei() {
		return techanfenlei;
	}
				
	
	/**
	 * 设置：图片
	 */
	 
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
				
	
	/**
	 * 设置：规格
	 */
	 
	public void setGuige(String guige) {
		this.guige = guige;
	}
	
	/**
	 * 获取：规格
	 */
	public String getGuige() {
		return guige;
	}
				
	
	/**
	 * 设置：产地
	 */
	 
	public void setChandi(String chandi) {
		this.chandi = chandi;
	}
	
	/**
	 * 获取：产地
	 */
	public String getChandi() {
		return chandi;
	}
				
	
	/**
	 * 设置：特产详情
	 */
	 
	public void setTechanxiangqing(String techanxiangqing) {
		this.techanxiangqing = techanxiangqing;
	}
	
	/**
	 * 获取：特产详情
	 */
	public String getTechanxiangqing() {
		return techanxiangqing;
	}
				
	
	/**
	 * 设置：价格
	 */
	 
	public void setPrice(Float price) {
		this.price = price;
	}
	
	/**
	 * 获取：价格
	 */
	public Float getPrice() {
		return price;
	}
			
}
