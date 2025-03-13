package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.TechanshangchengDao;
import com.entity.TechanshangchengEntity;
import com.service.TechanshangchengService;
import com.entity.vo.TechanshangchengVO;
import com.entity.view.TechanshangchengView;

@Service("techanshangchengService")
public class TechanshangchengServiceImpl extends ServiceImpl<TechanshangchengDao, TechanshangchengEntity> implements TechanshangchengService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<TechanshangchengEntity> page = this.selectPage(
                new Query<TechanshangchengEntity>(params).getPage(),
                new EntityWrapper<TechanshangchengEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<TechanshangchengEntity> wrapper) {
		  Page<TechanshangchengView> page =new Query<TechanshangchengView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<TechanshangchengVO> selectListVO(Wrapper<TechanshangchengEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public TechanshangchengVO selectVO(Wrapper<TechanshangchengEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<TechanshangchengView> selectListView(Wrapper<TechanshangchengEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public TechanshangchengView selectView(Wrapper<TechanshangchengEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
