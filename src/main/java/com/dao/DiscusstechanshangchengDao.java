package com.dao;

import com.entity.DiscusstechanshangchengEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscusstechanshangchengVO;
import com.entity.view.DiscusstechanshangchengView;


/**
 * 特产商城评论表
 * 
 * @author 
 * @email 
 * @date 2021-01-14 11:33:33
 */
public interface DiscusstechanshangchengDao extends BaseMapper<DiscusstechanshangchengEntity> {
	
	List<DiscusstechanshangchengVO> selectListVO(@Param("ew") Wrapper<DiscusstechanshangchengEntity> wrapper);
	
	DiscusstechanshangchengVO selectVO(@Param("ew") Wrapper<DiscusstechanshangchengEntity> wrapper);
	
	List<DiscusstechanshangchengView> selectListView(@Param("ew") Wrapper<DiscusstechanshangchengEntity> wrapper);

	List<DiscusstechanshangchengView> selectListView(Pagination page,@Param("ew") Wrapper<DiscusstechanshangchengEntity> wrapper);
	
	DiscusstechanshangchengView selectView(@Param("ew") Wrapper<DiscusstechanshangchengEntity> wrapper);
	
}
