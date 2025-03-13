package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscusstechanshangchengEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscusstechanshangchengVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscusstechanshangchengView;


/**
 * 特产商城评论表
 *
 * @author 
 * @email 
 * @date 2021-01-14 11:33:33
 */
public interface DiscusstechanshangchengService extends IService<DiscusstechanshangchengEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscusstechanshangchengVO> selectListVO(Wrapper<DiscusstechanshangchengEntity> wrapper);
   	
   	DiscusstechanshangchengVO selectVO(@Param("ew") Wrapper<DiscusstechanshangchengEntity> wrapper);
   	
   	List<DiscusstechanshangchengView> selectListView(Wrapper<DiscusstechanshangchengEntity> wrapper);
   	
   	DiscusstechanshangchengView selectView(@Param("ew") Wrapper<DiscusstechanshangchengEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscusstechanshangchengEntity> wrapper);
   	
}

