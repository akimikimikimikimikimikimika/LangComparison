import java.util.*;

public class DateTime {

	public static void main(String[] args){
		long st = System.currentTimeMillis();

		Utility.nr(1);

		Utility.println("これから日付と時刻を試します");

		/*
			カスタムの日付/時刻を得るには次のようにする
			Calendar c = Calendar.getInstance();
			c.set(1996,1,23,9,41,12);
		*/

		Utility.nr(1);

		Calendar c = Calendar.getInstance();
		Utility.println(
			"日付と時刻",
			"Calendar.getInstance().get(...)",
			" ERA : "+c.get(Calendar.ERA),
			" YEAR : "+c.get(Calendar.YEAR),
			" MONTH : "+c.get(Calendar.MONTH),
			"      JANUARY    = "+Calendar.JANUARY,
			"      FEBRUARY   = "+Calendar.FEBRUARY,
			"      MARCH      = "+Calendar.MARCH,
			"      APRIL      = "+Calendar.APRIL,
			"      MAY        = "+Calendar.MAY,
			"      JUNE       = "+Calendar.JUNE,
			"      JULY       = "+Calendar.JULY,
			"      AUGUST     = "+Calendar.AUGUST,
			"      SEPTEMBER  = "+Calendar.SEPTEMBER,
			"      OCTOBER    = "+Calendar.OCTOBER,
			"      NOVEMBER   = "+Calendar.NOVEMBER,
			"      DECEMBER   = "+Calendar.DECEMBER,
			"      UNDECIMBER = "+Calendar.UNDECIMBER,
			" WEEK_OF_MONTH : "+c.get(Calendar.WEEK_OF_MONTH),
			" WEEK_OF_YEAR : "+c.get(Calendar.WEEK_OF_YEAR),
			" DAY_OF_MONTH : "+c.get(Calendar.DAY_OF_MONTH), // DAY_OF_MONTH = DATE
			" DAY_OF_WEEK : "+c.get(Calendar.DAY_OF_WEEK),
			"      SUNDAY    = "+Calendar.SUNDAY,
			"      MONDAY    = "+Calendar.MONDAY,
			"      TUESDAY   = "+Calendar.TUESDAY,
			"      WEDNESDAY = "+Calendar.WEDNESDAY,
			"      THURSDAY  = "+Calendar.THURSDAY,
			"      FRIDAY    = "+Calendar.FRIDAY,
			"      SATURDAY  = "+Calendar.SATURDAY,
			" DAY_OF_WEEK_IN_MONTH : "+c.get(Calendar.DAY_OF_WEEK_IN_MONTH),
			" DAY_OF_YEAR : "+c.get(Calendar.DAY_OF_YEAR),
			" HOUR_OF_DAY : "+c.get(Calendar.HOUR_OF_DAY),
			" HOUR : "+c.get(Calendar.HOUR),
			" AM_PM : "+c.get(Calendar.AM_PM),
			"      AM = "+Calendar.AM+"   PM = "+Calendar.PM,
			" MINUTE : "+c.get(Calendar.MINUTE),
			" SECOND : "+c.get(Calendar.SECOND),
			" MILLISECOND : "+c.get(Calendar.MILLISECOND),
			" ZONE_OFFSET : "+c.get(Calendar.ZONE_OFFSET)
		);

		Utility.nr(1);

		TimeZone t = TimeZone.getDefault();
		Utility.println(
			"時間帯",
			"TimeZone.getDefault()",
			".getDisplayName(LONG)  = \""+t.getDisplayName(false,TimeZone.LONG)+"\"",
			".getDisplayName(SHORT) = \""+t.getDisplayName(false,TimeZone.LONG)+"\"",
			"              .getID() = \""+t.getID()+"\"",
			"    .useDaylightTime() = "+t.useDaylightTime()
		);

		Utility.nr(1);

		Date d = new Date();
		Utility.println(
			"フォーマット",
			"String.format() = \"",
			String.format(
				"datetime    %%tc : %tc %n"+
				"date        %%tD : %tD = %%tx %n"+
				"            %%tF : %tF %n"+
				"time        %%tT : %tT = %%tX %n"+
				"            %%tR : %tR %n"+
				"            %%tr : %tr %n"+
				"century     %%tC : %tC %n"+
				"year        %%tY : %tY %n"+
				"            %%ty : %ty %n"+
				"month       %%tb : %tb = %%th %n"+
				"            %%tB : %tB %n"+
				"            %%tm : %tm %n"+
				"day         %%td : %td %n"+
				"            %%te : %te %n"+
				"day/year    %%tj : %tj %n"+
				"weekday     %%ta : %ta %n"+
				"            %%tA : %tA %n"+
				"hour        %%tH : %tH %n"+
				"            %%tk : %tk %n"+
				"            %%tI : %tI %n"+
				"            %%tl : %tl %n"+
				"AM/PM       %%tp : %tp %n"+
				"minute      %%tM : %tM %n"+
				"second      %%tS : %tS %n"+
				"UNIX epoch  %%ts : %ts %n"+
				"milli+micro %%tN : %tN %n"+
				"millisecond %%tL : %tL %n"+
				"timezone    %%tZ : %tZ %n"+
				"            %%tz : %tz",d
			),
		"\"");

		Utility.nr(1);

		long en=System.currentTimeMillis();
		Utility.println("この処理に要した時間: "+(en-st)+" ミリ秒");

		Utility.nr(2);

	}

}