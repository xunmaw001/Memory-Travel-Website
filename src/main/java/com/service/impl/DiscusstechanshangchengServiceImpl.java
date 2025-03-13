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


import com.dao.DiscusstechanshangchengDao;
import com.entity.DiscusstechanshangchengEntity;
import com.service.DiscusstechanshangchengService;
import com.entity.vo.DiscusstechanshangchengVO;
import com.entity.view.DiscusstechanshangchengView;

@Service("discusstechanshangchengService")
public class DiscusstechanshangchengServiceImpl extends ServiceImpl<DiscusstechanshangchengDao, DiscusstechanshangchengEntity> implements DiscusstechanshangchengService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscusstechanshangchengEntity> page = this.selectPage(
                new Query<DiscusstechanshangchengEntity>(params).getPage(),
                new EntityWrapper<DiscusstechanshangchengEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscusstechanshangchengEntity> wrapper) {
		  Page<DiscusstechanshangchengView> page =new Query<DiscusstechanshangchengView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscusstechanshangchengVO> selectListVO(Wrapper<DiscusstechanshangchengEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscusstechanshangchengVO selectVO(Wrapper<DiscusstechanshangchengEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscusstechanshangchengView> selectListView(Wrapper<DiscusstechanshangchengEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscusstechanshangchengView selectView(Wrapper<DiscusstechanshangchengEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
