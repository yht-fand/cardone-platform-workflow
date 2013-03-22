package com.fand.system.service;

import java.util.List;
import java.util.Map;

import com.fand.builder.ModelArgs;
import com.fand.dto.PaginationDto;
import com.fand.extend.service.DefaultSimpleService;
import com.fand.system.service.SystemRunService;
import com.fand.system.dao.SystemRunDao;
import com.fand.system.dao.PartitionDao;
import com.fand.system.dao.PartitionFieldDao;
import com.fand.system.dao.DirectoryDao;
import com.fand.system.dao.DirectoryFieldDao;
import com.fand.system.dao.ResourceDao;
import com.fand.system.dao.ResourceFieldDao;

/**
 * 系统运行
 *
 * @author yaoht
 * 
 */
public class DefaultSystemRunService extends DefaultSimpleService<SystemRunDao> implements SystemRunService {
	/**
	 * 分区
	 */
	private PartitionDao partitionDao;

	/**
	 * 分区字段
	 */
	private PartitionFieldDao partitionFieldDao;

	/**
	 * 目录
	 */
	private DirectoryDao directoryDao;

	/**
	 * 目录字段
	 */
	private DirectoryFieldDao directoryFieldDao;

	/**
	 * 资源
	 */
	private ResourceDao resourceDao;

	/**
	 * 资源字段
	 */
	private ResourceFieldDao resourceFieldDao;


	/**
	 * 分区
	 * 
	 * @param partitionDao
	 *            分区
	 */
	public void setPartitionDao(PartitionDao partitionDao) {
		this.partitionDao = partitionDao;
	}

	/**
	 * 分区字段
	 * 
	 * @param partitionFieldDao
	 *            分区字段
	 */
	public void setPartitionFieldDao(PartitionFieldDao partitionFieldDao) {
		this.partitionFieldDao = partitionFieldDao;
	}

	/**
	 * 目录
	 * 
	 * @param directoryDao
	 *            目录
	 */
	public void setDirectoryDao(DirectoryDao directoryDao) {
		this.directoryDao = directoryDao;
	}

	/**
	 * 目录字段
	 * 
	 * @param directoryFieldDao
	 *            目录字段
	 */
	public void setDirectoryFieldDao(DirectoryFieldDao directoryFieldDao) {
		this.directoryFieldDao = directoryFieldDao;
	}

	/**
	 * 资源
	 * 
	 * @param resourceDao
	 *            资源
	 */
	public void setResourceDao(ResourceDao resourceDao) {
		this.resourceDao = resourceDao;
	}

	/**
	 * 资源字段
	 * 
	 * @param resourceFieldDao
	 *            资源字段
	 */
	public void setResourceFieldDao(ResourceFieldDao resourceFieldDao) {
		this.resourceFieldDao = resourceFieldDao;
	}
}