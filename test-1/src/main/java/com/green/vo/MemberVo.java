package com.green.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class MemberVo {
	
	private String firstName;
	private String lastName;
	private String id;
	private String pw;
	
}
