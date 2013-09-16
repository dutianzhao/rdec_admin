package com.roland.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.roland.system.SysCpu;
import com.roland.system.SysDisk;
import com.roland.system.SysMemory;
import com.roland.system.SystemCom;
import com.roland.util.SysInfo;

@Controller
public class MainController
{
	@RequestMapping("/sysInfo")
	public String sysInfo(Model model) throws Exception
	{
		// 获取cpu信息
		SysInfo sysInfo = new SysInfo();
		// cpu信息
		List<SysCpu> listCpu = sysInfo.sysCpuPerc();
		// 内存信息
		SysMemory sysMemory = sysInfo.getPhysicalMemory();
		// 硬盘信息
		List<SysDisk> listDisk = sysInfo.systemDisk();
		// 操作系统信息
		SystemCom sysCom = sysInfo.systemComput();
		
		model.addAttribute("syscpu", listCpu);
		model.addAttribute("sysMemory", sysMemory);
		model.addAttribute("listDisk", listDisk);
		model.addAttribute("sysCom", sysCom);
		
		return "index";
	}
}
