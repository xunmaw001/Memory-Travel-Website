package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.TechanshangchengEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.TechanshangchengVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.TechanshangchengView;


/**
 * 特产商城
 *
 * @author 
 * @email 
 * @date 2021-01-14 11:33:32
 */
public interface TechanshangchengService extends IService<TechanshangchengEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<TechanshangchengVO> selectListVO(Wrapper<TechanshangchengEntity> wrapper);
   	
   	TechanshangchengVO selectVO(@Param("ew") Wrapper<TechanshangchengEntity> wrapper);
   	
   	List<TechanshangchengView> selectListView(Wrapper<TechanshangchengEntity> wrapper);
   	
   	TechanshangchengView selectView(@Param("ew") Wrapper<TechanshangchengEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<TechanshangchengEntity> wrapper);
   	
}

