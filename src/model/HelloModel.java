package src.model;

public class HelloModel {

	public String takeAnsewer(String input) {
		String ans_string = input;
		String ans_roop = "";

		if(ans_string.matches(".*って.*回言って！")){

			int x = ans_string.indexOf("って",0);
			int y = ans_string.indexOf("回",0);

			String takeOut = ans_string.substring(0,x);
			String times = ans_string.substring(x+2,y);

      		int number = Integer.parseInt(times);

    			for(int i = 1; i < number; i++){
    				ans_roop += takeOut;
    				if(number >= 10 && i == number-2){
    					break;
    				}
    			}

    			return ans_roop += "疲れた...";

    	} else {

		switch(input){

		case "大好き":

		case "好き！":
			ans_string = "ありがとう";
			break;

		case "嫌い":
			ans_string = "ひどい。。。";
			break;

		case "どうしても嫌い":

		case "きらい！":
			ans_string = "どうして。。。";
			break;

		default:
			ans_string = input;
			}
		return ans_string;
    	}
	}
}
