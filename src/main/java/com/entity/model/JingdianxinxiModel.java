package com.entity.model;

import com.entity.JingdianxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 景点信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2021-01-14 11:33:32
 */
public class JingdianxinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 景点分类
	 */
	
	private String jingdianfenlei;
		
	/**
	 * 景点图片
	 */
	
	private String jingdiantupian;
		
	/**
	 * 景点等级
	 */
	
	private String jingdiandengji;
		
	/**
	 * 景点地址
	 */
	
	private String jingdiandizhi;
		
	/**
	 * 门票价格
	 */
	
	private Integer menpiaojiage;
		
	/**
	 * 开放时间
	 */
	
	private String kaifangshijian;
		
	/**
	 * 购票须知
	 */
	
	private String goupiaoxuzhi;
		
	/**
	 * 交通指南
	 */
	
	private String jiaotongzhinan;
		
	/**
	 * 景点介绍
	 */
	
	private String jingdianjieshao;
		
	/**
	 * 最近点击时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date clicktime;
		
	/**
	 * 点击次数
	 */
	
	private Integer clicknum;
				
	
	/**
	 * 设置：景点分类
	 */
	 
	public void setJingdianfenlei(String jingdianfenlei) {
		this.jingdianfenlei = jingdianfenlei;
	}
	
	/**
	 * 获取：景点分类
	 */
	public String getJingdianfenlei() {
		return jingdianfenlei;
	}
				
	
	/**
	 * 设置：景点图片
	 */
	 
	public void setJingdiantupian(String jingdiantupian) {
		this.jingdiantupian = jingdiantupian;
	}
	
	/**
	 * 获取：景点图片
	 */
	public String getJingdiantupian() {
		return jingdiantupian;
	}
				
	
	/**
	 * 设置：景点等级
	 */
	 
	public void setJingdiandengji(String jingdiandengji) {
		this.jingdiandengji = jingdiandengji;
	}
	
	/**
	 * 获取：景点等级
	 */
	public String getJingdiandengji() {
		return jingdiandengji;
	}
				
	
	/**
	 * 设置：景点地址
	 */
	 
	public void setJingdiandizhi(String jingdiandizhi) {
		this.jingdiandizhi = jingdiandizhi;
	}
	
	/**
	 * 获取：景点地址
	 */
	public String getJingdiandizhi() {
		return jingdiandizhi;
	}
				
	
	/**
	 * 设置：门票价格
	 */
	 
	public void setMenpiaojiage(Integer menpiaojiage) {
		this.menpiaojiage = menpiaojiage;
	}
	
	/**
	 * 获取：门票价格
	 */
	public Integer getMenpiaojiage() {
		return menpiaojiage;
	}
				
	
	/**
	 * 设置：开放时间
	 */
	 
	public void setKaifangshijian(String kaifangshijian) {
		this.kaifangshijian = kaifangshijian;
	}
	
	/**
	 * 获取：开放时间
	 */
	public String getKaifangshijian() {
		return kaifangshijian;
	}
				
	
	/**
	 * 设置：购票须知
	 */
	 
	public void setGoupiaoxuzhi(String goupiaoxuzhi) {
		this.goupiaoxuzhi = goupiaoxuzhi;
	}
	
	/**
	 * 获取：购票须知
	 */
	public String getGoupiaoxuzhi() {
		return goupiaoxuzhi;
	}
				
	
	/**
	 * 设置：交通指南
	 */
	 
	public void setJiaotongzhinan(String jiaotongzhinan) {
		this.jiaotongzhinan = jiaotongzhinan;
	}
	
	/**
	 * 获取：交通指南
	 */
	public String getJiaotongzhinan() {
		return jiaotongzhinan;
	}
				
	
	/**
	 * 设置：景点介绍
	 */
	 
	public void setJingdianjieshao(String jingdianjieshao) {
		this.jingdianjieshao = jingdianjieshao;
	}
	
	/**
	 * 获取：景点介绍
	 */
	public String getJingdianjieshao() {
		return jingdianjieshao;
	}
				
	
	/**
	 * 设置：最近点击时间
	 */
	 
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	
	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}
				
	
	/**
	 * 设置：点击次数
	 */
	 
	public void setClicknum(Integer clicknum) {
		this.clicknum = clicknum;
	}
	
	/**
	 * 获取：点击次数
	 */
	public Integer getClicknum() {
		return clicknum;
	}
			
}
