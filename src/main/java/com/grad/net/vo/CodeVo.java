package com.grad.net.vo;

public class CodeVo {
	

	private String cdId;
	private String cdNm;

	private String engCodeNm;
	private String cdDstnct;
	
	private String prntsCdId;
	private String prntsCdNm;
	
	private Long prntsNo;
	public String getCdId() {
		return cdId;
	}
	public void setCdId(String cdId) {
		this.cdId = cdId;
	}
	public String getCdNm() {
		return cdNm;
	}
	public void setCdNm(String cdNm) {
		this.cdNm = cdNm;
	}
	public String getEngCodeNm() {
		return engCodeNm;
	}
	public void setEngCodeNm(String engCodeNm) {
		this.engCodeNm = engCodeNm;
	}
	public String getCdDstnct() {
		return cdDstnct;
	}
	public void setCdDstnct(String cdDstnct) {
		this.cdDstnct = cdDstnct;
	}
	public String getPrntsCdId() {
		return prntsCdId;
	}
	public void setPrntsCdId(String prntsCdId) {
		this.prntsCdId = prntsCdId;
	}
	public String getPrntsCdNm() {
		return prntsCdNm;
	}
	public void setPrntsCdNm(String prntsCdNm) {
		this.prntsCdNm = prntsCdNm;
	}
	
	public Long getPrntsNo() {
		return prntsNo;
	}
	public void setPrntsNo(Long prntsNo) {
		this.prntsNo = prntsNo;
	}
	@Override
	public String toString() {
		return "CodeVo [cdId=" + cdId + ", cdNm=" + cdNm + ", engCodeNm=" + engCodeNm + ", cdDstnct=" + cdDstnct
				+ ", prntsCdId=" + prntsCdId + ", prntsCdNm=" + prntsCdNm + ", prntsNo=" + prntsNo + "]";
	}
	
	
	
	


	
	


	
	
	
	

	
	
	

}
