package com.aver.restful;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import org.springframework.stereotype.Component;

@Component
public class TimeOfTheDayServiceImpl implements TimeOfTheDayService {
	private static String PATTERN = "MM.dd.yyyy HH:mm:ss";

	public String getTimeOfTheDay(String name) {
		SimpleDateFormat df = new SimpleDateFormat(PATTERN);
		return name + "-" + df.format(Calendar.getInstance().getTime());
	}

	public Time getTimeOfTheDayInXML(String name) {
		SimpleDateFormat df = new SimpleDateFormat(PATTERN);
		Time t = new Time();
		t.setName(name);
		t.setTime(df.format(Calendar.getInstance().getTime()));
		return t;
	}

	public Time getTimeOfTheDayInJSON(String name) {
		SimpleDateFormat df = new SimpleDateFormat(PATTERN);
		Time t = new Time();
		t.setName(name);
		t.setTime(df.format(Calendar.getInstance().getTime()));
		return t;
	}
}