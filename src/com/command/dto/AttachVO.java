package com.command.dto;

import java.util.Date;

public class AttachVO {

		private int ano;
		private String uploadpath;
		private String filename;
		private String filetype;
		private String attaccher;
		private Date regdate;
		public int getAno() {
			return ano;
		}
		public void setAno(int ano) {
			this.ano = ano;
		}
		public String getUploadpath() {
			return uploadpath;
		}
		public void setUploadpath(String uploadpath) {
			this.uploadpath = uploadpath;
		}
		public String getFilename() {
			return filename;
		}
		public void setFilename(String filename) {
			this.filename = filename;
		}
		public String getFiletype() {
			return filetype;
		}
		public void setFiletype(String filetype) {
			this.filetype = filetype;
		}
		public String getAttaccher() {
			return attaccher;
		}
		public void setAttaccher(String attaccher) {
			this.attaccher = attaccher;
		}
		public Date getRegdate() {
			return regdate;
		}
		public void setRegdate(Date regdate) {
			this.regdate = regdate;
		}
		
		
}
