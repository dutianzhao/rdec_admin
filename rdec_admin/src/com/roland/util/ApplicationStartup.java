package com.roland.util;

import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;

import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.ServletContextAware;

import com.roland.DataBaseName;
import com.roland.model.competence.Competence;
import com.roland.model.competence.UserGroup;
import com.roland.service.CompetenceService;
import com.roland.service.RolandService;

/** Application 初始化 **/
public class ApplicationStartup implements InitializingBean, ServletContextAware
{
	Logger logger = LoggerFactory.getLogger(ApplicationStartup.class);

	private ServletContext servletContext;

	private String file;

	@Autowired
	private Config config;

	@Autowired
	private RolandService rolandService;

	@Autowired
	private CompetenceService competenceService;

	@Override
	public void setServletContext(ServletContext servletContext)
	{
		this.servletContext = servletContext;
	}

	@SuppressWarnings("unchecked")
	@Override
	public void afterPropertiesSet() throws Exception
	{
		logger.info("\t开始初始化网站资源...");
		// 将 Config 保存到 Application
		config.setWebUrl(servletContext.getContextPath()); // 网站根目录 URL
		config.setWebPath(servletContext.getRealPath("/")); // 网站根目录物理路径
		servletContext.setAttribute("config", config);
		logger.info("\t初始化网站资源结束");

		/*logger.info("\t开始初始化权限...");

		String xmlFilePath = "/conf/init_date.xml";
		String filePath = null;
		if (xmlFilePath == null || xmlFilePath.trim().equals(""))
		{
			filePath = file;
		}
		else
		{
			filePath = xmlFilePath;
		}
		Document document = new SAXReader().read(Thread.currentThread().getContextClassLoader().getResourceAsStream(filePath));

		logger.info("\t开始初始化权限列表...");
		addCompetname(document.selectNodes("//InitDatas/competences/competname"));
		addCompetnameGroup(document.selectNodes("//InitDatas/competence_groups/compgroup"));
		logger.info("\t初始化权限列表结束");*/

		// RolandService
	}

	private void addCompetname(List<Competence> selectNodes)
	{
		if (rolandService.listAll(DataBaseName.competence).size() <= 0)
		{
			for (Iterator<Competence> iterator = selectNodes.iterator(); iterator.hasNext();)
			{
				Element element = (Element) iterator.next();

				Competence competence = new Competence();

				competence.setId(new Integer(element.attributeValue("id")));
				competence.setParentId(new Integer(element.attributeValue("parent_id")));
				competence.setLinkUrl(element.attributeValue("link_url"));
				competence.setName(element.attributeValue("name"));
				competence.setIoc(element.attributeValue("ioc"));
				competenceService.saveCompetence(competence);
			}
		}

	}

	private void addCompetnameGroup(List<UserGroup> selectNodes)
	{
		if (rolandService.listAll(DataBaseName.competenceGroup).size() <= 0)
		{
			for (Iterator<UserGroup> iterator = selectNodes.iterator(); iterator.hasNext();)
			{
				Element element = (Element) iterator.next();

				UserGroup userGroup = new UserGroup();

				userGroup.setId(new Integer(element.attributeValue("id")));
				userGroup.setName(element.attributeValue("name"));
				competenceService.saveCompetenceGroup(userGroup);
			}
		}
	}

}