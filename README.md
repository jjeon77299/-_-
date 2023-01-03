## index  

![image](https://user-images.githubusercontent.com/97486359/210287031-54d370a9-6311-409e-b628-a50984742606.png)  

## candidate_list  

![image](https://user-images.githubusercontent.com/97486359/210287162-be9120a4-9af8-4a84-87ef-7403136880c4.png)  

![image](https://user-images.githubusercontent.com/97486359/210287222-d5bf0171-0c08-4e36-8d13-59540f884d8c.png)

이러한 쿼리문을 사용해 학력을 case문으로 구하고 테이블 2개을 조인합니다. 또한 while문을 사용해 화면에 DB에 저장되어있는 값을 가져옵니다.  

## vote, vote_p  

![image](https://user-images.githubusercontent.com/97486359/210288892-8526df70-8f1f-4e93-a5d4-425fd236eed8.png)  

![image](https://user-images.githubusercontent.com/97486359/210288919-38c194ca-d284-4bbd-a517-1715f1548645.png)  

후보번호는 select태그를 사용해 후보번호와 호부 이름을 가져서 값을 저장합니다.  

![image](https://user-images.githubusercontent.com/97486359/210289037-8b9fe142-75de-43d9-8d41-72dea212f42a.png)  

vote페이지에서 투표하고 버튼을 누르면 vote_p페이지로 이동해서 DB에 들어온 값을 저장힙니다.  

## vote_list

![image](https://user-images.githubusercontent.com/97486359/210289203-e229746d-a6eb-4393-afd9-bb1b6ed68cae.png)  

![image](https://user-images.githubusercontent.com/97486359/210289226-7f198160-76f2-42b3-b6fd-cab05d7c0ae2.png)  

이페이지가 투표검수조회페이지와 sql문이다 이 페이지는 제1투표장을에서 투표한 사람이 뜨는 페이지이다 그리고 주민등록번호를 나누어 년 월 일생을 뒤에 붙여주고 만 나이를 구해주고 주민등록번호 숫자를 이용해 성별을 구해주고 투표후보의 번호를 가져와 값을 출력해준다 그리고 아까 라디오버튼을 이용해 Y N 로 나누어 확인 미확인으로 구별해주는 sql입니다.  

##candidate_rank


![image](https://user-images.githubusercontent.com/97486359/210289805-ff689de3-4c8d-4abb-8f10-fa73d83a1740.png)


이페이지는 지금까지 투표한 후보의 투표수를 볼수있다.

![image](https://user-images.githubusercontent.com/97486359/210289793-1f39391a-ee29-4371-a5b3-a431b5488bb4.png)


이 sql문을 통해 유권자확인이 Y인 사람들의 투표개수를 카운트하는 테이블이다.
