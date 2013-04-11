package com.fand.configuration.vo;

import com.fand.configuration.dto.DictionaryTyDto;
import com.fand.configuration.dto.DictionaryDto;
import com.fand.configuration.dto.ObjectAtDto;
import com.fand.configuration.dto.ObjectBlAtDto;
import com.fand.configuration.dto.ObjectClAtDto;
import com.fand.configuration.dto.RelationshipDto;
import com.fand.configuration.dto.LocaleDto;
import com.fand.configuration.dto.MessageDto;
/**
 * 配置
 *
 * @author haitao.yao
 */
public class ConfigurationVo implements java.io.Serializable {
	/**
	 * 版本号
	 */
	private static final long serialVersionUID = 615992437402295361L;
	
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
	 * 地点
	 */
	private LocaleDto localeDto;

	/**
	 * 消息
	 */
	private MessageDto messageDto;

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
		this.localeDto = new LocaleDto();
		this.messageDto = new MessageDto();
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
	 * @return 地点
	 */
	public LocaleDto getLocaleDto() {
		return this.localeDto;
	}


	/**
     * 获取
     *
	 * @return 消息
	 */
	public MessageDto getMessageDto() {
		return this.messageDto;
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
	 * @param localeDto
	 *            地点
	 */
	public void setLocaleDto(LocaleDto localeDto) {
		this.localeDto = localeDto;
	}

	/**
	 * 设置
     *
	 * @param messageDto
	 *            消息
	 */
	public void setMessageDto(MessageDto messageDto) {
		this.messageDto = messageDto;
	}
}