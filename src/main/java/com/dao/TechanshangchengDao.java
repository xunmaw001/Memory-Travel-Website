package com.dao;

import com.entity.TechanshangchengEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.TechanshangchengVO;
import com.entity.view.TechanshangchengView;


/**
 * 特产商城
 * 
 * @author 
 * @email 
 * @date 2021-01-14 11:33:32
 */
public interface TechanshangchengDao extends BaseMapper<TechanshangchengEntity> {
	
	List<TechanshangchengVO> selectListVO(@Param("ew") Wrapper<TechanshangchengEntity> wrapper);
	
	TechanshangchengVO selectVO(@Param("ew") Wrapper<TechanshangchengEntity> wrapper);
	
	List<TechanshangchengView> selectListView(@Param("ew") Wrapper<TechanshangchengEntity> wrapper);

	List<TechanshangchengView> selectListView(Pagination page,@Param("ew") Wrapper<TechanshangchengEntity> wrapper);
	
	TechanshangchengView selectView(@Param("ew") Wrapper<TechanshangchengEntity> wrapper);
	
}
