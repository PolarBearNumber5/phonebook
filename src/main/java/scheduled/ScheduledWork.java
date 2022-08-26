package scheduled;

import java.text.SimpleDateFormat;
import java.util.Calendar;


import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

public class ScheduledWork {
	@Scheduled(cron="0/5 * * * * ?")
	public void work1() {
		System.out.println("5초마다 작업 실행");
	}

}
