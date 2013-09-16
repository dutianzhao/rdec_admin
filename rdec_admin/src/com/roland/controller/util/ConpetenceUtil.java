package com.roland.controller.util;

import java.util.ArrayList;
import java.util.List;

import com.roland.model.MenuTreeDTO;
import com.roland.model.UserLoginSession;
import com.roland.model.competence.Competence;

public class ConpetenceUtil
{
    public static List<MenuTreeDTO> getCompetById(Integer compId, UserLoginSession user, boolean showOperation)
    {
        if (user == null) { return null; }

        List<MenuTreeDTO> listMenuTreeDto = new ArrayList<MenuTreeDTO>();

        for (Integer competenceId : user.getUserCompetence().keySet())
        {
            Competence competence = user.getUserCompetence().get(competenceId);

            MenuTreeDTO menuTreeDTO = new MenuTreeDTO();
            if (competence.getParentId() == compId)
            {
                menuTreeDTO.setClickHref(competence.getLinkUrl());
                menuTreeDTO.setIconCls(competence.getIoc());
                menuTreeDTO.setId(competence.getId());
                menuTreeDTO.setText(competence.getName());
                menuTreeDTO.setParentId(competence.getParentId());

                if (showOperation)
                {
                    List<MenuTreeDTO> listTreeDto = getCompetById(competence.getId(), user, showOperation);
                    if (listTreeDto.size() > 0)
                    {
                        menuTreeDTO.setLeaf(false);
                        menuTreeDTO.setChildren(listTreeDto);
                    }
                }
                listMenuTreeDto.add(menuTreeDTO);
            }
        }

        return listMenuTreeDto;
    }

    public static List<Competence> listCompetence(Integer compId, UserLoginSession user)
    {
        List<Competence> listCompet = new ArrayList<Competence>();

        for (Integer competenceId : user.getUserCompetence().keySet())
        {
            Competence competence = user.getUserCompetence().get(competenceId);

            if (competence.getParentId() == compId)
            {
                listCompet.add(competence);
            }
        }
        return listCompet;
    }
}
