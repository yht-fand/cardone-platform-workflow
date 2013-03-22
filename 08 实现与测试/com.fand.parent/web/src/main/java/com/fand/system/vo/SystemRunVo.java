package com.fand.system.vo;

import com.fand.system.dto.PartitionDto;
import com.fand.system.dto.PartitionFieldDto;
import com.fand.system.dto.DirectoryDto;
import com.fand.system.dto.DirectoryFieldDto;
import com.fand.system.dto.ResourceDto;
import com.fand.system.dto.ResourceFieldDto;
/**
 * 系统运行
 *
 * @author yaoht
 */
public class SystemRunVo implements java.io.Serializable {
	/**
	 * 版本号
	 */
	private static final long serialVersionUID = 119770159873186689L;
	
	/**
	 * 分区
	 */
	private PartitionDto partitionDto;

	/**
	 * 分区字段
	 */
	private PartitionFieldDto partitionFieldDto;

	/**
	 * 目录
	 */
	private DirectoryDto directoryDto;

	/**
	 * 目录字段
	 */
	private DirectoryFieldDto directoryFieldDto;

	/**
	 * 资源
	 */
	private ResourceDto resourceDto;

	/**
	 * 资源字段
	 */
	private ResourceFieldDto resourceFieldDto;

	/**
	 * 构造
	 */
	public SystemRunVo() {
		this.partitionDto = new PartitionDto();
		this.partitionFieldDto = new PartitionFieldDto();
		this.directoryDto = new DirectoryDto();
		this.directoryFieldDto = new DirectoryFieldDto();
		this.resourceDto = new ResourceDto();
		this.resourceFieldDto = new ResourceFieldDto();
	}

	/**
     * 获取
     *
	 * @return 分区
	 */
	public PartitionDto getPartitionDto() {
		return this.partitionDto;
	}


	/**
     * 获取
     *
	 * @return 分区字段
	 */
	public PartitionFieldDto getPartitionFieldDto() {
		return this.partitionFieldDto;
	}


	/**
     * 获取
     *
	 * @return 目录
	 */
	public DirectoryDto getDirectoryDto() {
		return this.directoryDto;
	}


	/**
     * 获取
     *
	 * @return 目录字段
	 */
	public DirectoryFieldDto getDirectoryFieldDto() {
		return this.directoryFieldDto;
	}


	/**
     * 获取
     *
	 * @return 资源
	 */
	public ResourceDto getResourceDto() {
		return this.resourceDto;
	}


	/**
     * 获取
     *
	 * @return 资源字段
	 */
	public ResourceFieldDto getResourceFieldDto() {
		return this.resourceFieldDto;
	}


	/**
	 * 设置
     *
	 * @param partitionDto
	 *            分区
	 */
	public void setPartitionDto(PartitionDto partitionDto) {
		this.partitionDto = partitionDto;
	}

	/**
	 * 设置
     *
	 * @param partitionFieldDto
	 *            分区字段
	 */
	public void setPartitionFieldDto(PartitionFieldDto partitionFieldDto) {
		this.partitionFieldDto = partitionFieldDto;
	}

	/**
	 * 设置
     *
	 * @param directoryDto
	 *            目录
	 */
	public void setDirectoryDto(DirectoryDto directoryDto) {
		this.directoryDto = directoryDto;
	}

	/**
	 * 设置
     *
	 * @param directoryFieldDto
	 *            目录字段
	 */
	public void setDirectoryFieldDto(DirectoryFieldDto directoryFieldDto) {
		this.directoryFieldDto = directoryFieldDto;
	}

	/**
	 * 设置
     *
	 * @param resourceDto
	 *            资源
	 */
	public void setResourceDto(ResourceDto resourceDto) {
		this.resourceDto = resourceDto;
	}

	/**
	 * 设置
     *
	 * @param resourceFieldDto
	 *            资源字段
	 */
	public void setResourceFieldDto(ResourceFieldDto resourceFieldDto) {
		this.resourceFieldDto = resourceFieldDto;
	}
}