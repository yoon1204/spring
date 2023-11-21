package com.acorn.login;

public class Login {
		
		String id;
		String pw;
		
		public Login() {
			// TODO Auto-generated constructor stub
		}

		public String getId() {
			return id;
		}

		public void setId(String id) {
			this.id = id;
		}

		public String getPw() {
			return pw;
		}

		public void setPw(String pw) {
			this.pw = pw;
		}

		@Override
		public String toString() {
			return "login [id=" + id + ", pw=" + pw + "]";
		}

		public Login(String id, String pw) {
			super();
			this.id = id;
			this.pw = pw;
		}
	}


