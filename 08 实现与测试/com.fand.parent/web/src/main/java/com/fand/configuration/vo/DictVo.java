package com.fand.configuration.vo;

import com.fand.configuration.dto.DictDto;
import com.fand.configuration.dto.DictSoDto;
/**
 * 字典
 *
 * @author yaoht
 */
public class DictVo implements java.io.Serializable {
	/**
	 * 版本号
	 */
	private static final long serialVersionUID = 128606049462215979L;
	
	/**
	 * 字典
	 */
	private DictDto dictDto;

	/**
	 * 字典分类
	 */
	private DictSoDto dictSoDto;

	/**
	 * 构造
	 */
	public DictVo() {
		this.dictDto = new DictDto();
		this.dictSoDto = new DictSoDto();
	}

	/**
     * 获取
     *
	 * @return 字典
	 */
	public DictDto getDictDto() {
		return this.dictDto;
	}


	/**
     * 获取
     *
	 * @return 字典分类
	 */
	public DictSoDto getDictSoDto() {
		return this.dictSoDto;
	}


	/**
	 * 设置
     *
	 * @param dictDto
	 *            字典
	 */
	public void setDictDto(DictDto dictDto) {
		this.dictDto = dictDto;
	}

	/**
	 * 设置
     *
	 * @param dictSoDto
	 *            字典分类
	 */
	public void setDictSoDto(DictSoDto dictSoDto) {
		this.dictSoDto = dictSoDto;
	}
}