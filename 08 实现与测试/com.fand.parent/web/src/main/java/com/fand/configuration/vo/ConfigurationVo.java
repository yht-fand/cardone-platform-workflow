package com.fand.configuration.vo;

import com.fand.configuration.dto.DictionaryTyDto;
import com.fand.configuration.dto.DictionaryDto;
import com.fand.configuration.dto.ObjectAtDto;
import com.fand.configuration.dto.ObjectBlAtDto;
import com.fand.configuration.dto.ObjectClAtDto;
import com.fand.configuration.dto.RelationshipDto;
import com.fand.configuration.dto.I18nDto;
/**
 * 配置
 *
 * @author haitao.yao
 */
public class ConfigurationVo implements java.io.Serializable {
	/**
	 * 版本号
	 */
	private static final long serialVersionUID = 601535500552630604L;
	
	/**
	 * 字典类型
	 */
	private DictionaryTyDto dictionaryTyDto;

	/**
	 * 字典
	 */
	private DictionaryDto dictionaryDto;

	/**
	 * 对象属性
	 */
	private ObjectAtDto objectAtDto;

	/**
	 * 对象BLob属性
	 */
	private ObjectBlAtDto objectBlAtDto;

	/**
	 * 对象CLob属性
	 */
	private ObjectClAtDto objectClAtDto;

	/**
	 * 关联
	 */
	private RelationshipDto relationshipDto;

	/**
	 * 多国语言
	 */
	private I18nDto i18nDto;

	/**
	 * 构造
	 */
	public ConfigurationVo() {
		this.dictionaryTyDto = new DictionaryTyDto();
		this.dictionaryDto = new DictionaryDto();
		this.objectAtDto = new ObjectAtDto();
		this.objectBlAtDto = new ObjectBlAtDto();
		this.objectClAtDto = new ObjectClAtDto();
		this.relationshipDto = new RelationshipDto();
		this.i18nDto = new I18nDto();
	}

	/**
     * 获取
     *
	 * @return 字典类型
	 */
	public DictionaryTyDto getDictionaryTyDto() {
		return this.dictionaryTyDto;
	}


	/**
     * 获取
     *
	 * @return 字典
	 */
	public DictionaryDto getDictionaryDto() {
		return this.dictionaryDto;
	}


	/**
     * 获取
     *
	 * @return 对象属性
	 */
	public ObjectAtDto getObjectAtDto() {
		return this.objectAtDto;
	}


	/**
     * 获取
     *
	 * @return 对象BLob属性
	 */
	public ObjectBlAtDto getObjectBlAtDto() {
		return this.objectBlAtDto;
	}


	/**
     * 获取
     *
	 * @return 对象CLob属性
	 */
	public ObjectClAtDto getObjectClAtDto() {
		return this.objectClAtDto;
	}


	/**
     * 获取
     *
	 * @return 关联
	 */
	public RelationshipDto getRelationshipDto() {
		return this.relationshipDto;
	}


	/**
     * 获取
     *
	 * @return 多国语言
	 */
	public I18nDto getI18nDto() {
		return this.i18nDto;
	}


	/**
	 * 设置
     *
	 * @param dictionaryTyDto
	 *            字典类型
	 */
	public void setDictionaryTyDto(DictionaryTyDto dictionaryTyDto) {
		this.dictionaryTyDto = dictionaryTyDto;
	}

	/**
	 * 设置
     *
	 * @param dictionaryDto
	 *            字典
	 */
	public void setDictionaryDto(DictionaryDto dictionaryDto) {
		this.dictionaryDto = dictionaryDto;
	}

	/**
	 * 设置
     *
	 * @param objectAtDto
	 *            对象属性
	 */
	public void setObjectAtDto(ObjectAtDto objectAtDto) {
		this.objectAtDto = objectAtDto;
	}

	/**
	 * 设置
     *
	 * @param objectBlAtDto
	 *            对象BLob属性
	 */
	public void setObjectBlAtDto(ObjectBlAtDto objectBlAtDto) {
		this.objectBlAtDto = objectBlAtDto;
	}

	/**
	 * 设置
     *
	 * @param objectClAtDto
	 *            对象CLob属性
	 */
	public void setObjectClAtDto(ObjectClAtDto objectClAtDto) {
		this.objectClAtDto = objectClAtDto;
	}

	/**
	 * 设置
     *
	 * @param relationshipDto
	 *            关联
	 */
	public void setRelationshipDto(RelationshipDto relationshipDto) {
		this.relationshipDto = relationshipDto;
	}

	/**
	 * 设置
     *
	 * @param i18nDto
	 *            多国语言
	 */
	public void setI18nDto(I18nDto i18nDto) {
		this.i18nDto = i18nDto;
	}
}