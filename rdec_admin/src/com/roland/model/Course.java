package com.roland.model;

/**
 * 课程
 * @author Administrator
 *
 */
public class Course 
{
	private Integer id;
	
	private String name;
	
	private Integer typeId;
	
	private String typeName;
	
	private String recruitObject;
	
	private Integer classLongTime;
	
	private Integer classStandard;
	
	private double tuition;
	
	private String createTime;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getTypeId() {
		return typeId;
	}

	public void setTypeId(Integer typeId) {
		this.typeId = typeId;
	}

	public String getRecruitObject() {
		return recruitObject;
	}

	public void setRecruitObject(String recruitObject) {
		this.recruitObject = recruitObject;
	}

	public Integer getClassLongTime() {
		return classLongTime;
	}

	public void setClassLongTime(Integer classLongTime) {
		this.classLongTime = classLongTime;
	}

	public Integer getClassStandard() {
		return classStandard;
	}

	public void setClassStandard(Integer classStandard) {
		this.classStandard = classStandard;
	}

	public double getTuition() {
		return tuition;
	}

	public void setTuition(double tuition) {
		this.tuition = tuition;
	}

	public String getCreateTime() {
		return createTime;
	}

	public void setCreateTime(String createTime) {
		this.createTime = createTime;
	}

    public String getTypeName()
    {
        return typeName;
    }

    public void setTypeName(String typeName)
    {
        this.typeName = typeName;
    }
}
