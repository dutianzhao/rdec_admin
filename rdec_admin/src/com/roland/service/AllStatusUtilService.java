package com.roland.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.roland.dao.MyBatisDao;
import com.roland.model.ChannelType;
import com.roland.model.MenuTreeDTO;

@Service
public class AllStatusUtilService
{
    private Map<String, Object> map = null;
    @Autowired
    private MyBatisDao myBatisDao;

    public List<ChannelType> listChannelTree(Integer parentId)
    {
        return myBatisDao.selectList("AllStatusUtilMapper.list_channel_type_by_parentId", parentId);
    }

    public void updateChannel(ChannelType channelType)
    {
        myBatisDao.update("AllStatusUtilMapper.update_channel_type", channelType);
    }

    public void addChannel(ChannelType channelType)
    {
        myBatisDao.insert("AllStatusUtilMapper.insert_channel_type", channelType);
    }

    public void deleteChannel(Integer channelId)
    {
        myBatisDao.delete("AllStatusUtilMapper.delete_channel_type", channelId);
    }

    public List<MenuTreeDTO> listChannelTreeUtil(Integer parentId)
    {
        List<MenuTreeDTO> listChannelType = new ArrayList<MenuTreeDTO>();

        List<ChannelType> listOne = listChannelTree(parentId);

        for (Iterator<ChannelType> iterator = listOne.iterator(); iterator.hasNext();)
        {
            ChannelType channelType = iterator.next();

            MenuTreeDTO treeDto = new MenuTreeDTO();

            treeDto.setId(channelType.getId());
            treeDto.setParentId(channelType.getParentId());
            treeDto.setText(channelType.getName());

            List<MenuTreeDTO> isLeaf = listChannelTreeUtil(channelType.getId());
            if (isLeaf.size() > 0)
            {
                treeDto.setLeaf(false);
                treeDto.setChildren(isLeaf);
            }
            listChannelType.add(treeDto);
        }

        return listChannelType;
    }
}
