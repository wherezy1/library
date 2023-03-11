/**
 * Copyright (c) 2016-2019 人人开源 All rights reserved.
 *
 * https://www.renren.io
 *
 * 版权所有，侵权必究！
 */

package com.where.library.common.utils;

import com.baomidou.mybatisplus.core.metadata.IPage;
import lombok.NoArgsConstructor;
import org.springframework.data.domain.Page;

import java.io.Serializable;
import java.util.List;

/**
 * 分页工具类
 * 对参数进行修改
 * @author Mark sunlightcs@gmail.com
 */
@NoArgsConstructor
public class PageUtils implements Serializable {
	private static final long serialVersionUID = 1L;
	/**
	 * 总记录数
	 */
	private int totalCount;
	/**
	 * 每页记录数
	 */
	private int pageSize;
	/**
	 * 总页数
	 */
	private int totalPage;
	/**
	 * 当前页数
	 */
	private int currPage;
	/**
	 * 列表数据
	 */
	private List<?> list;
	
	/**
	 * 分页
	 * @param list        列表数据
	 * @param totalCount  总记录数
	 * @param pageSize    每页记录数
	 * @param currPage    当前页数
	 */
	public PageUtils(List<?> list, int totalCount, int pageSize, int currPage) {
		this.list = list;
		this.totalCount = totalCount;
		this.pageSize = pageSize;
		this.currPage = currPage;
		this.totalPage = (int)Math.ceil((double)totalCount/pageSize);
	}

	/**
	 * 分页
	 */
	public PageUtils(IPage<?> page) {
		this.list = page.getRecords();
		this.totalCount = (int)page.getTotal();
		this.pageSize = (int)page.getSize();
		this.currPage = (int)page.getCurrent();
		this.totalPage = (int)page.getPages();
	}

	/**
	 * 将PageHelper分页后的list转为分页信息
	 */
//	public PageUtils restPage(List list) {
//		PageUtils result = new PageUtils();
//		PageInfo pageInfo = new PageInfo(list);
//		result.setTotalPage(pageInfo.getPages());
//		result.setPageNum(pageInfo.getPageNum());
//		result.setPageSize(pageInfo.getPageSize());
//		result.setTotal(pageInfo.getTotal());
//		result.setList(pageInfo.getList());
//		return result;
//	}

	/**
	 * 将SpringData分页后的list转为分页信息
	 */
	public <T> PageUtils restPage(org.springframework.data.domain.Page<T> pageInfo) {
		PageUtils result = new PageUtils();
		result.setTotalPage(pageInfo.getTotalPages());
		result.setCurrPage(pageInfo.getNumber());
		result.setPageSize(pageInfo.getSize());
		result.setTotalCount((int) pageInfo.getTotalElements());
		result.setList((List<T>) pageInfo.getContent());
		return result;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getCurrPage() {
		return currPage;
	}

	public void setCurrPage(int currPage) {
		this.currPage = currPage;
	}

	public List<?> getList() {
		return list;
	}

	public void setList(List<?> list) {
		this.list = list;
	}
	
}
